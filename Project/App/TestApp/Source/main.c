int main(void)
{

    while(1)
    {

    }

    return 0;
}

void HardFault_Handler()
{
    static int i = 0;

    i += 1;
}