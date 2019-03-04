################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmsp --abi=eabi -O4 --opt_for_speed=5 --use_hw_mpy=none --include_path="C:/ti/ccsv8/ccs_base/msp430/include" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --advice:power=all -g --define=__MSP430G2553__ --display_error_number --diag_warning=225 --diag_wrap=off --printf_support=minimal --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


