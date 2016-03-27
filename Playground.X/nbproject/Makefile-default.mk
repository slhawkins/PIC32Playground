#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../USBDebug.X/USBDebug.c ../I2CLib.X/I2C.c ../MPU9250.X/MPU9250.c ../VL6180.X/SparkFun_VL6180X.c main.c exception.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1227930920/USBDebug.o ${OBJECTDIR}/_ext/1237126756/I2C.o ${OBJECTDIR}/_ext/152673/MPU9250.o ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o ${OBJECTDIR}/main.o ${OBJECTDIR}/exception.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1227930920/USBDebug.o.d ${OBJECTDIR}/_ext/1237126756/I2C.o.d ${OBJECTDIR}/_ext/152673/MPU9250.o.d ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/exception.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1227930920/USBDebug.o ${OBJECTDIR}/_ext/1237126756/I2C.o ${OBJECTDIR}/_ext/152673/MPU9250.o ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o ${OBJECTDIR}/main.o ${OBJECTDIR}/exception.o

# Source Files
SOURCEFILES=../USBDebug.X/USBDebug.c ../I2CLib.X/I2C.c ../MPU9250.X/MPU9250.c ../VL6180.X/SparkFun_VL6180X.c main.c exception.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1227930920/USBDebug.o: ../USBDebug.X/USBDebug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1227930920" 
	@${RM} ${OBJECTDIR}/_ext/1227930920/USBDebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1227930920/USBDebug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1227930920/USBDebug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1227930920/USBDebug.o.d" -o ${OBJECTDIR}/_ext/1227930920/USBDebug.o ../USBDebug.X/USBDebug.c     
	
${OBJECTDIR}/_ext/1237126756/I2C.o: ../I2CLib.X/I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1237126756" 
	@${RM} ${OBJECTDIR}/_ext/1237126756/I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237126756/I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237126756/I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1237126756/I2C.o.d" -o ${OBJECTDIR}/_ext/1237126756/I2C.o ../I2CLib.X/I2C.c     
	
${OBJECTDIR}/_ext/152673/MPU9250.o: ../MPU9250.X/MPU9250.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/152673" 
	@${RM} ${OBJECTDIR}/_ext/152673/MPU9250.o.d 
	@${RM} ${OBJECTDIR}/_ext/152673/MPU9250.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/152673/MPU9250.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/152673/MPU9250.o.d" -o ${OBJECTDIR}/_ext/152673/MPU9250.o ../MPU9250.X/MPU9250.c     
	
${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o: ../VL6180.X/SparkFun_VL6180X.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/674505278" 
	@${RM} ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o.d 
	@${RM} ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o.d" -o ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o ../VL6180.X/SparkFun_VL6180X.c     
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c     
	
${OBJECTDIR}/exception.o: exception.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/exception.o.d 
	@${RM} ${OBJECTDIR}/exception.o 
	@${FIXDEPS} "${OBJECTDIR}/exception.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/exception.o.d" -o ${OBJECTDIR}/exception.o exception.c     
	
else
${OBJECTDIR}/_ext/1227930920/USBDebug.o: ../USBDebug.X/USBDebug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1227930920" 
	@${RM} ${OBJECTDIR}/_ext/1227930920/USBDebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1227930920/USBDebug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1227930920/USBDebug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1227930920/USBDebug.o.d" -o ${OBJECTDIR}/_ext/1227930920/USBDebug.o ../USBDebug.X/USBDebug.c     
	
${OBJECTDIR}/_ext/1237126756/I2C.o: ../I2CLib.X/I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1237126756" 
	@${RM} ${OBJECTDIR}/_ext/1237126756/I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237126756/I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237126756/I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1237126756/I2C.o.d" -o ${OBJECTDIR}/_ext/1237126756/I2C.o ../I2CLib.X/I2C.c     
	
${OBJECTDIR}/_ext/152673/MPU9250.o: ../MPU9250.X/MPU9250.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/152673" 
	@${RM} ${OBJECTDIR}/_ext/152673/MPU9250.o.d 
	@${RM} ${OBJECTDIR}/_ext/152673/MPU9250.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/152673/MPU9250.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/152673/MPU9250.o.d" -o ${OBJECTDIR}/_ext/152673/MPU9250.o ../MPU9250.X/MPU9250.c     
	
${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o: ../VL6180.X/SparkFun_VL6180X.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/674505278" 
	@${RM} ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o.d 
	@${RM} ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o.d" -o ${OBJECTDIR}/_ext/674505278/SparkFun_VL6180X.o ../VL6180.X/SparkFun_VL6180X.c     
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c     
	
${OBJECTDIR}/exception.o: exception.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/exception.o.d 
	@${RM} ${OBJECTDIR}/exception.o 
	@${FIXDEPS} "${OBJECTDIR}/exception.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/exception.o.d" -o ${OBJECTDIR}/exception.o exception.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}            -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Playground.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
