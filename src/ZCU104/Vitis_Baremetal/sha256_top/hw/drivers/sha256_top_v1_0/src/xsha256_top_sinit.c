// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xsha256_top.h"

extern XSha256_top_Config XSha256_top_ConfigTable[];

#ifdef SDT
XSha256_top_Config *XSha256_top_LookupConfig(UINTPTR BaseAddress) {
	XSha256_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSha256_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSha256_top_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSha256_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSha256_top_Initialize(XSha256_top *InstancePtr, UINTPTR BaseAddress) {
	XSha256_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSha256_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSha256_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSha256_top_Config *XSha256_top_LookupConfig(u16 DeviceId) {
	XSha256_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSHA256_TOP_NUM_INSTANCES; Index++) {
		if (XSha256_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSha256_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSha256_top_Initialize(XSha256_top *InstancePtr, u16 DeviceId) {
	XSha256_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSha256_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSha256_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

