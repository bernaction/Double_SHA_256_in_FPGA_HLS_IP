// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsha256_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSha256_top_CfgInitialize(XSha256_top *InstancePtr, XSha256_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSha256_top_Start(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSha256_top_IsDone(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSha256_top_IsIdle(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSha256_top_IsReady(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSha256_top_EnableAutoRestart(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSha256_top_DisableAutoRestart(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XSha256_top_Get_header_BaseAddress(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HEADER_BASE);
}

u32 XSha256_top_Get_header_HighAddress(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HEADER_HIGH);
}

u32 XSha256_top_Get_header_TotalBytes(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSHA256_TOP_CONTROL_ADDR_HEADER_HIGH - XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + 1);
}

u32 XSha256_top_Get_header_BitWidth(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSHA256_TOP_CONTROL_WIDTH_HEADER;
}

u32 XSha256_top_Get_header_Depth(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSHA256_TOP_CONTROL_DEPTH_HEADER;
}

u32 XSha256_top_Write_header_Words(XSha256_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSHA256_TOP_CONTROL_ADDR_HEADER_HIGH - XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XSha256_top_Read_header_Words(XSha256_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSHA256_TOP_CONTROL_ADDR_HEADER_HIGH - XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + (offset + i)*4);
    }
    return length;
}

u32 XSha256_top_Write_header_Bytes(XSha256_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSHA256_TOP_CONTROL_ADDR_HEADER_HIGH - XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XSha256_top_Read_header_Bytes(XSha256_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSHA256_TOP_CONTROL_ADDR_HEADER_HIGH - XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HEADER_BASE + offset + i);
    }
    return length;
}

u32 XSha256_top_Get_hash_result_BaseAddress(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE);
}

u32 XSha256_top_Get_hash_result_HighAddress(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_HIGH);
}

u32 XSha256_top_Get_hash_result_TotalBytes(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_HIGH - XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + 1);
}

u32 XSha256_top_Get_hash_result_BitWidth(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSHA256_TOP_CONTROL_WIDTH_HASH_RESULT;
}

u32 XSha256_top_Get_hash_result_Depth(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSHA256_TOP_CONTROL_DEPTH_HASH_RESULT;
}

u32 XSha256_top_Write_hash_result_Words(XSha256_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_HIGH - XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XSha256_top_Read_hash_result_Words(XSha256_top *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_HIGH - XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + (offset + i)*4);
    }
    return length;
}

u32 XSha256_top_Write_hash_result_Bytes(XSha256_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_HIGH - XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XSha256_top_Read_hash_result_Bytes(XSha256_top *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_HIGH - XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XSHA256_TOP_CONTROL_ADDR_HASH_RESULT_BASE + offset + i);
    }
    return length;
}

void XSha256_top_InterruptGlobalEnable(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_GIE, 1);
}

void XSha256_top_InterruptGlobalDisable(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_GIE, 0);
}

void XSha256_top_InterruptEnable(XSha256_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_IER);
    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XSha256_top_InterruptDisable(XSha256_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_IER);
    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSha256_top_InterruptClear(XSha256_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XSha256_top_InterruptGetEnabled(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_IER);
}

u32 XSha256_top_InterruptGetStatus(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSha256_top_ReadReg(InstancePtr->Control_BaseAddress, XSHA256_TOP_CONTROL_ADDR_ISR);
}

