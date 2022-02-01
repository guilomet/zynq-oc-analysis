// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_scalaire.h"

extern XTest_scalaire_Config XTest_scalaire_ConfigTable[];

XTest_scalaire_Config *XTest_scalaire_LookupConfig(u16 DeviceId) {
	XTest_scalaire_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_SCALAIRE_NUM_INSTANCES; Index++) {
		if (XTest_scalaire_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_scalaire_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_scalaire_Initialize(XTest_scalaire *InstancePtr, u16 DeviceId) {
	XTest_scalaire_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_scalaire_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_scalaire_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

