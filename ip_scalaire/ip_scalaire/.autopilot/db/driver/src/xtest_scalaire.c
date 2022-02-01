// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_scalaire.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_scalaire_CfgInitialize(XTest_scalaire *InstancePtr, XTest_scalaire_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_scalaire_Start(XTest_scalaire *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_scalaire_IsDone(XTest_scalaire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_scalaire_IsIdle(XTest_scalaire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_scalaire_IsReady(XTest_scalaire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_scalaire_EnableAutoRestart(XTest_scalaire *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTest_scalaire_DisableAutoRestart(XTest_scalaire *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_AP_CTRL, 0);
}

void XTest_scalaire_Set_A(XTest_scalaire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_A_DATA, Data);
}

u32 XTest_scalaire_Get_A(XTest_scalaire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_A_DATA);
    return Data;
}

void XTest_scalaire_Set_B(XTest_scalaire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_B_DATA, Data);
}

u32 XTest_scalaire_Get_B(XTest_scalaire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_B_DATA);
    return Data;
}

void XTest_scalaire_Set_res(XTest_scalaire *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_RES_DATA, Data);
}

u32 XTest_scalaire_Get_res(XTest_scalaire *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_RES_DATA);
    return Data;
}

void XTest_scalaire_InterruptGlobalEnable(XTest_scalaire *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_GIE, 1);
}

void XTest_scalaire_InterruptGlobalDisable(XTest_scalaire *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_GIE, 0);
}

void XTest_scalaire_InterruptEnable(XTest_scalaire *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_IER);
    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_IER, Register | Mask);
}

void XTest_scalaire_InterruptDisable(XTest_scalaire *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_IER);
    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTest_scalaire_InterruptClear(XTest_scalaire *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_scalaire_WriteReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_ISR, Mask);
}

u32 XTest_scalaire_InterruptGetEnabled(XTest_scalaire *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_IER);
}

u32 XTest_scalaire_InterruptGetStatus(XTest_scalaire *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_scalaire_ReadReg(InstancePtr->Control_BaseAddress, XTEST_SCALAIRE_CONTROL_ADDR_ISR);
}

