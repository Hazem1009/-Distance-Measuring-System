################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project4/APP.c \
../Project4/gpio.c \
../Project4/icu.c \
../Project4/lcd.c \
../Project4/ultrasonic.c 

OBJS += \
./Project4/APP.o \
./Project4/gpio.o \
./Project4/icu.o \
./Project4/lcd.o \
./Project4/ultrasonic.o 

C_DEPS += \
./Project4/APP.d \
./Project4/gpio.d \
./Project4/icu.d \
./Project4/lcd.d \
./Project4/ultrasonic.d 


# Each subdirectory must supply rules for building sources it contributes
Project4/%.o: ../Project4/%.c Project4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


