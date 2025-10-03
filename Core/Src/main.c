#include "main.h"
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
int main(void)
{

  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();
  while (1)
  {

  }
}

void SystemClock_Config(void) { }
static void MX_GPIO_Init(void) { }
void Error_Handler(void) { }

