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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=I2C.c MicroChip/I2CAcknowledgeByte.c MicroChip/I2CAcknowledgeHasCompleted.c MicroChip/I2CBusIsIdle.c MicroChip/I2CByteWasAcknowledged.c MicroChip/I2CClearStatus.c MicroChip/I2CConfigure.c MicroChip/I2CEnable.c MicroChip/I2CGetByte.c MicroChip/I2CGetStatus.c MicroChip/I2CPrivate.c MicroChip/I2CReceivedByteIsAnAddress.c MicroChip/I2CReceivedDataIsAvailable.c MicroChip/I2CReceiverEnable.c MicroChip/I2CRepeatStart.c MicroChip/I2CSendByte.c MicroChip/I2CSetFrequency.c MicroChip/I2CSetSlaveAddress.c MicroChip/I2CSlaveClockHold.c MicroChip/I2CSlaveClockRelease.c MicroChip/I2CSlaveDataReadRequested.c MicroChip/I2CStart.c MicroChip/I2CStop.c MicroChip/I2CTransmissionHasCompleted.c MicroChip/I2CTransmitterIsReady.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/I2C.o ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o ${OBJECTDIR}/MicroChip/I2CClearStatus.o ${OBJECTDIR}/MicroChip/I2CConfigure.o ${OBJECTDIR}/MicroChip/I2CEnable.o ${OBJECTDIR}/MicroChip/I2CGetByte.o ${OBJECTDIR}/MicroChip/I2CGetStatus.o ${OBJECTDIR}/MicroChip/I2CPrivate.o ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o ${OBJECTDIR}/MicroChip/I2CRepeatStart.o ${OBJECTDIR}/MicroChip/I2CSendByte.o ${OBJECTDIR}/MicroChip/I2CSetFrequency.o ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o ${OBJECTDIR}/MicroChip/I2CStart.o ${OBJECTDIR}/MicroChip/I2CStop.o ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o
POSSIBLE_DEPFILES=${OBJECTDIR}/I2C.o.d ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o.d ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o.d ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o.d ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o.d ${OBJECTDIR}/MicroChip/I2CClearStatus.o.d ${OBJECTDIR}/MicroChip/I2CConfigure.o.d ${OBJECTDIR}/MicroChip/I2CEnable.o.d ${OBJECTDIR}/MicroChip/I2CGetByte.o.d ${OBJECTDIR}/MicroChip/I2CGetStatus.o.d ${OBJECTDIR}/MicroChip/I2CPrivate.o.d ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o.d ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o.d ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o.d ${OBJECTDIR}/MicroChip/I2CRepeatStart.o.d ${OBJECTDIR}/MicroChip/I2CSendByte.o.d ${OBJECTDIR}/MicroChip/I2CSetFrequency.o.d ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o.d ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o.d ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o.d ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o.d ${OBJECTDIR}/MicroChip/I2CStart.o.d ${OBJECTDIR}/MicroChip/I2CStop.o.d ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o.d ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/I2C.o ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o ${OBJECTDIR}/MicroChip/I2CClearStatus.o ${OBJECTDIR}/MicroChip/I2CConfigure.o ${OBJECTDIR}/MicroChip/I2CEnable.o ${OBJECTDIR}/MicroChip/I2CGetByte.o ${OBJECTDIR}/MicroChip/I2CGetStatus.o ${OBJECTDIR}/MicroChip/I2CPrivate.o ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o ${OBJECTDIR}/MicroChip/I2CRepeatStart.o ${OBJECTDIR}/MicroChip/I2CSendByte.o ${OBJECTDIR}/MicroChip/I2CSetFrequency.o ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o ${OBJECTDIR}/MicroChip/I2CStart.o ${OBJECTDIR}/MicroChip/I2CStop.o ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o

# Source Files
SOURCEFILES=I2C.c MicroChip/I2CAcknowledgeByte.c MicroChip/I2CAcknowledgeHasCompleted.c MicroChip/I2CBusIsIdle.c MicroChip/I2CByteWasAcknowledged.c MicroChip/I2CClearStatus.c MicroChip/I2CConfigure.c MicroChip/I2CEnable.c MicroChip/I2CGetByte.c MicroChip/I2CGetStatus.c MicroChip/I2CPrivate.c MicroChip/I2CReceivedByteIsAnAddress.c MicroChip/I2CReceivedDataIsAvailable.c MicroChip/I2CReceiverEnable.c MicroChip/I2CRepeatStart.c MicroChip/I2CSendByte.c MicroChip/I2CSetFrequency.c MicroChip/I2CSetSlaveAddress.c MicroChip/I2CSlaveClockHold.c MicroChip/I2CSlaveClockRelease.c MicroChip/I2CSlaveDataReadRequested.c MicroChip/I2CStart.c MicroChip/I2CStop.c MicroChip/I2CTransmissionHasCompleted.c MicroChip/I2CTransmitterIsReady.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/I2C.o: I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2C.o.d 
	@${RM} ${OBJECTDIR}/I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/I2C.o.d" -o ${OBJECTDIR}/I2C.o I2C.c     
	
${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o: MicroChip/I2CAcknowledgeByte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o.d" -o ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o MicroChip/I2CAcknowledgeByte.c     
	
${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o: MicroChip/I2CAcknowledgeHasCompleted.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o.d" -o ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o MicroChip/I2CAcknowledgeHasCompleted.c     
	
${OBJECTDIR}/MicroChip/I2CBusIsIdle.o: MicroChip/I2CBusIsIdle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CBusIsIdle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CBusIsIdle.o.d" -o ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o MicroChip/I2CBusIsIdle.c     
	
${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o: MicroChip/I2CByteWasAcknowledged.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o.d" -o ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o MicroChip/I2CByteWasAcknowledged.c     
	
${OBJECTDIR}/MicroChip/I2CClearStatus.o: MicroChip/I2CClearStatus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CClearStatus.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CClearStatus.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CClearStatus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CClearStatus.o.d" -o ${OBJECTDIR}/MicroChip/I2CClearStatus.o MicroChip/I2CClearStatus.c     
	
${OBJECTDIR}/MicroChip/I2CConfigure.o: MicroChip/I2CConfigure.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CConfigure.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CConfigure.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CConfigure.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CConfigure.o.d" -o ${OBJECTDIR}/MicroChip/I2CConfigure.o MicroChip/I2CConfigure.c     
	
${OBJECTDIR}/MicroChip/I2CEnable.o: MicroChip/I2CEnable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CEnable.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CEnable.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CEnable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CEnable.o.d" -o ${OBJECTDIR}/MicroChip/I2CEnable.o MicroChip/I2CEnable.c     
	
${OBJECTDIR}/MicroChip/I2CGetByte.o: MicroChip/I2CGetByte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetByte.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetByte.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CGetByte.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CGetByte.o.d" -o ${OBJECTDIR}/MicroChip/I2CGetByte.o MicroChip/I2CGetByte.c     
	
${OBJECTDIR}/MicroChip/I2CGetStatus.o: MicroChip/I2CGetStatus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetStatus.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetStatus.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CGetStatus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CGetStatus.o.d" -o ${OBJECTDIR}/MicroChip/I2CGetStatus.o MicroChip/I2CGetStatus.c     
	
${OBJECTDIR}/MicroChip/I2CPrivate.o: MicroChip/I2CPrivate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CPrivate.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CPrivate.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CPrivate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CPrivate.o.d" -o ${OBJECTDIR}/MicroChip/I2CPrivate.o MicroChip/I2CPrivate.c     
	
${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o: MicroChip/I2CReceivedByteIsAnAddress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o.d" -o ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o MicroChip/I2CReceivedByteIsAnAddress.c     
	
${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o: MicroChip/I2CReceivedDataIsAvailable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o.d" -o ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o MicroChip/I2CReceivedDataIsAvailable.c     
	
${OBJECTDIR}/MicroChip/I2CReceiverEnable.o: MicroChip/I2CReceiverEnable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CReceiverEnable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CReceiverEnable.o.d" -o ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o MicroChip/I2CReceiverEnable.c     
	
${OBJECTDIR}/MicroChip/I2CRepeatStart.o: MicroChip/I2CRepeatStart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CRepeatStart.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CRepeatStart.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CRepeatStart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CRepeatStart.o.d" -o ${OBJECTDIR}/MicroChip/I2CRepeatStart.o MicroChip/I2CRepeatStart.c     
	
${OBJECTDIR}/MicroChip/I2CSendByte.o: MicroChip/I2CSendByte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSendByte.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSendByte.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSendByte.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSendByte.o.d" -o ${OBJECTDIR}/MicroChip/I2CSendByte.o MicroChip/I2CSendByte.c     
	
${OBJECTDIR}/MicroChip/I2CSetFrequency.o: MicroChip/I2CSetFrequency.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetFrequency.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetFrequency.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSetFrequency.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSetFrequency.o.d" -o ${OBJECTDIR}/MicroChip/I2CSetFrequency.o MicroChip/I2CSetFrequency.c     
	
${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o: MicroChip/I2CSetSlaveAddress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o.d" -o ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o MicroChip/I2CSetSlaveAddress.c     
	
${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o: MicroChip/I2CSlaveClockHold.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o.d" -o ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o MicroChip/I2CSlaveClockHold.c     
	
${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o: MicroChip/I2CSlaveClockRelease.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o.d" -o ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o MicroChip/I2CSlaveClockRelease.c     
	
${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o: MicroChip/I2CSlaveDataReadRequested.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o.d" -o ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o MicroChip/I2CSlaveDataReadRequested.c     
	
${OBJECTDIR}/MicroChip/I2CStart.o: MicroChip/I2CStart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStart.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStart.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CStart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CStart.o.d" -o ${OBJECTDIR}/MicroChip/I2CStart.o MicroChip/I2CStart.c     
	
${OBJECTDIR}/MicroChip/I2CStop.o: MicroChip/I2CStop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStop.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStop.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CStop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CStop.o.d" -o ${OBJECTDIR}/MicroChip/I2CStop.o MicroChip/I2CStop.c     
	
${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o: MicroChip/I2CTransmissionHasCompleted.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o.d" -o ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o MicroChip/I2CTransmissionHasCompleted.c     
	
${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o: MicroChip/I2CTransmitterIsReady.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o.d" -o ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o MicroChip/I2CTransmitterIsReady.c     
	
else
${OBJECTDIR}/I2C.o: I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2C.o.d 
	@${RM} ${OBJECTDIR}/I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/I2C.o.d" -o ${OBJECTDIR}/I2C.o I2C.c     
	
${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o: MicroChip/I2CAcknowledgeByte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o.d" -o ${OBJECTDIR}/MicroChip/I2CAcknowledgeByte.o MicroChip/I2CAcknowledgeByte.c     
	
${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o: MicroChip/I2CAcknowledgeHasCompleted.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o.d" -o ${OBJECTDIR}/MicroChip/I2CAcknowledgeHasCompleted.o MicroChip/I2CAcknowledgeHasCompleted.c     
	
${OBJECTDIR}/MicroChip/I2CBusIsIdle.o: MicroChip/I2CBusIsIdle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CBusIsIdle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CBusIsIdle.o.d" -o ${OBJECTDIR}/MicroChip/I2CBusIsIdle.o MicroChip/I2CBusIsIdle.c     
	
${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o: MicroChip/I2CByteWasAcknowledged.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o.d" -o ${OBJECTDIR}/MicroChip/I2CByteWasAcknowledged.o MicroChip/I2CByteWasAcknowledged.c     
	
${OBJECTDIR}/MicroChip/I2CClearStatus.o: MicroChip/I2CClearStatus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CClearStatus.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CClearStatus.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CClearStatus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CClearStatus.o.d" -o ${OBJECTDIR}/MicroChip/I2CClearStatus.o MicroChip/I2CClearStatus.c     
	
${OBJECTDIR}/MicroChip/I2CConfigure.o: MicroChip/I2CConfigure.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CConfigure.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CConfigure.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CConfigure.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CConfigure.o.d" -o ${OBJECTDIR}/MicroChip/I2CConfigure.o MicroChip/I2CConfigure.c     
	
${OBJECTDIR}/MicroChip/I2CEnable.o: MicroChip/I2CEnable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CEnable.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CEnable.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CEnable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CEnable.o.d" -o ${OBJECTDIR}/MicroChip/I2CEnable.o MicroChip/I2CEnable.c     
	
${OBJECTDIR}/MicroChip/I2CGetByte.o: MicroChip/I2CGetByte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetByte.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetByte.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CGetByte.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CGetByte.o.d" -o ${OBJECTDIR}/MicroChip/I2CGetByte.o MicroChip/I2CGetByte.c     
	
${OBJECTDIR}/MicroChip/I2CGetStatus.o: MicroChip/I2CGetStatus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetStatus.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CGetStatus.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CGetStatus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CGetStatus.o.d" -o ${OBJECTDIR}/MicroChip/I2CGetStatus.o MicroChip/I2CGetStatus.c     
	
${OBJECTDIR}/MicroChip/I2CPrivate.o: MicroChip/I2CPrivate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CPrivate.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CPrivate.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CPrivate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CPrivate.o.d" -o ${OBJECTDIR}/MicroChip/I2CPrivate.o MicroChip/I2CPrivate.c     
	
${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o: MicroChip/I2CReceivedByteIsAnAddress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o.d" -o ${OBJECTDIR}/MicroChip/I2CReceivedByteIsAnAddress.o MicroChip/I2CReceivedByteIsAnAddress.c     
	
${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o: MicroChip/I2CReceivedDataIsAvailable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o.d" -o ${OBJECTDIR}/MicroChip/I2CReceivedDataIsAvailable.o MicroChip/I2CReceivedDataIsAvailable.c     
	
${OBJECTDIR}/MicroChip/I2CReceiverEnable.o: MicroChip/I2CReceiverEnable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CReceiverEnable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CReceiverEnable.o.d" -o ${OBJECTDIR}/MicroChip/I2CReceiverEnable.o MicroChip/I2CReceiverEnable.c     
	
${OBJECTDIR}/MicroChip/I2CRepeatStart.o: MicroChip/I2CRepeatStart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CRepeatStart.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CRepeatStart.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CRepeatStart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CRepeatStart.o.d" -o ${OBJECTDIR}/MicroChip/I2CRepeatStart.o MicroChip/I2CRepeatStart.c     
	
${OBJECTDIR}/MicroChip/I2CSendByte.o: MicroChip/I2CSendByte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSendByte.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSendByte.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSendByte.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSendByte.o.d" -o ${OBJECTDIR}/MicroChip/I2CSendByte.o MicroChip/I2CSendByte.c     
	
${OBJECTDIR}/MicroChip/I2CSetFrequency.o: MicroChip/I2CSetFrequency.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetFrequency.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetFrequency.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSetFrequency.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSetFrequency.o.d" -o ${OBJECTDIR}/MicroChip/I2CSetFrequency.o MicroChip/I2CSetFrequency.c     
	
${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o: MicroChip/I2CSetSlaveAddress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o.d" -o ${OBJECTDIR}/MicroChip/I2CSetSlaveAddress.o MicroChip/I2CSetSlaveAddress.c     
	
${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o: MicroChip/I2CSlaveClockHold.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o.d" -o ${OBJECTDIR}/MicroChip/I2CSlaveClockHold.o MicroChip/I2CSlaveClockHold.c     
	
${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o: MicroChip/I2CSlaveClockRelease.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o.d" -o ${OBJECTDIR}/MicroChip/I2CSlaveClockRelease.o MicroChip/I2CSlaveClockRelease.c     
	
${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o: MicroChip/I2CSlaveDataReadRequested.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o.d" -o ${OBJECTDIR}/MicroChip/I2CSlaveDataReadRequested.o MicroChip/I2CSlaveDataReadRequested.c     
	
${OBJECTDIR}/MicroChip/I2CStart.o: MicroChip/I2CStart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStart.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStart.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CStart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CStart.o.d" -o ${OBJECTDIR}/MicroChip/I2CStart.o MicroChip/I2CStart.c     
	
${OBJECTDIR}/MicroChip/I2CStop.o: MicroChip/I2CStop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStop.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CStop.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CStop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CStop.o.d" -o ${OBJECTDIR}/MicroChip/I2CStop.o MicroChip/I2CStop.c     
	
${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o: MicroChip/I2CTransmissionHasCompleted.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o.d" -o ${OBJECTDIR}/MicroChip/I2CTransmissionHasCompleted.o MicroChip/I2CTransmissionHasCompleted.c     
	
${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o: MicroChip/I2CTransmitterIsReady.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MicroChip" 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o.d 
	@${RM} ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o 
	@${FIXDEPS} "${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o.d" -o ${OBJECTDIR}/MicroChip/I2CTransmitterIsReady.o MicroChip/I2CTransmitterIsReady.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}            -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/I2CLib.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
