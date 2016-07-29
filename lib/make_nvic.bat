@echo off

set PATH=C:\Tools\Python27;%PATH%

cd libopencm3
python scripts\irq2nvic_h "./include/libopencm3/stm32/f0/irq.json"
python scripts\irq2nvic_h "./include/libopencm3/stm32/f1/irq.json"
python scripts\irq2nvic_h "./include/libopencm3/stm32/f2/irq.json"
python scripts\irq2nvic_h "./include/libopencm3/stm32/f4/irq.json"
python scripts\irq2nvic_h "./include/libopencm3/stm32/f7/irq.json"
python scripts\irq2nvic_h "./include/libopencm3/stm32/l0/irq.json"
python scripts\irq2nvic_h "./include/libopencm3/stm32/l1/irq.json"

python scripts\irq2nvic_h "./include/libopencm3/efm32/g/irq.json"
python scripts\irq2nvic_h "./include/libopencm3/efm32/gg/irq.json"
cd ..