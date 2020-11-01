#include <stdio.h>
#include <string.h>
#include "Type.h"
#include "Drv_RCC.h"
// #include "Drv_Systick.h"
#include "Drv_GPIO.h"
#include "Svc_Debug.h"

int const __ARM_use_no_argv = 0;

static void ClockInitialize(void)
{
    Drv_RCC_PLL_SetClock(PLLSource_HSI, PllPreviousDivider_1, PllMultiplier_9);
    Drv_RCC_AHB_SetClock(SystemClockSource_PLL, AHBPrescaler_1);
    Drv_RCC_APB_SetClock(APBNumber_1, APBPrescaler_2);
    Drv_RCC_APB_SetClock(APBNumber_2, APBPrescaler_1);
}

static void ShowClockInformation(void)
{
    volatile uint32_t PLL_Clock = 0;
    volatile uint32_t System_Clock = 0;
    volatile uint32_t AHB_Clock = 0;
    volatile uint32_t APB1_Clock = 0;
    volatile uint32_t APB2_Clock = 0;

    PLL_Clock       = Drv_RCC_PLL_GetClock();
    System_Clock    = Drv_RCC_System_GetClock();
    AHB_Clock       = Drv_RCC_AHB_GetClock();
    APB1_Clock      = Drv_RCC_APB_GetClock(APBNumber_1);
    APB2_Clock      = Drv_RCC_APB_GetClock(APBNumber_2);

    DEBUGMSG(MSGINFO,   "=====================================================\r\n");
    DEBUGMSG(MSG_Blue,  "           STM32F303RE System Information            \r\n");
    DEBUGMSG(MSGINFO,   "=====================================================\r\n");
    DEBUGMSG(MSGWARN,   "PLL : %ld [MHz]\r\n", PLL_Clock / 1000000);
    DEBUGMSG(MSGWARN,   "SYS : %ld [MHz]\r\n", System_Clock / 1000000);
    DEBUGMSG(MSGWARN,   "AHB : %ld [MHz]\r\n", AHB_Clock / 1000000);
    DEBUGMSG(MSGWARN,   "APB1: %ld [MHz]\r\n", APB1_Clock / 1000000);
    DEBUGMSG(MSGWARN,   "APB2: %ld [MHz]\r\n", APB2_Clock / 1000000);
}

int main(void)
{
    char buff[256];

    ClockInitialize();
    Svc_Debug_Initialize();
    ShowClockInformation();

    while(1)
    {
        DEBUGMSG(MSGINFO, "Input: ");
        DEBUGSCAN(buff);

        DEBUGMSG(MSGINFO, "Echo: %s\r\n\r\n", buff);
    }

    return 0;
}