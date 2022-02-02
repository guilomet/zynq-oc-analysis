; ModuleID = 'F:/projet_m2/git/zynq-oc-analysis/ip_scalaire/ip_scalaire/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_test_scalaire_ir([16 x float]* %A, [16 x float]* %B, float* %res) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %A_copy = bitcast i8* %malloccall to [256 x [16 x float]]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %B_copy = bitcast i8* %malloccall1 to [256 x [16 x float]]*
  %res_copy = alloca [16 x float], align 512
  %0 = bitcast [16 x float]* %A to [256 x [16 x float]]*
  %1 = bitcast [16 x float]* %B to [256 x [16 x float]]*
  %2 = bitcast float* %res to [16 x float]*
  call fastcc void @copy_in([256 x [16 x float]]* %0, [256 x [16 x float]]* %A_copy, [256 x [16 x float]]* %1, [256 x [16 x float]]* %B_copy, [16 x float]* %2, [16 x float]* nonnull align 512 %res_copy)
  %3 = getelementptr inbounds [256 x [16 x float]], [256 x [16 x float]]* %A_copy, i32 0, i32 0
  %4 = getelementptr inbounds [256 x [16 x float]], [256 x [16 x float]]* %B_copy, i32 0, i32 0
  %5 = getelementptr inbounds [16 x float], [16 x float]* %res_copy, i32 0, i32 0
  call void @apatb_test_scalaire_hw([16 x float]* %3, [16 x float]* %4, float* %5)
  call fastcc void @copy_out([256 x [16 x float]]* %0, [256 x [16 x float]]* %A_copy, [256 x [16 x float]]* %1, [256 x [16 x float]]* %B_copy, [16 x float]* %2, [16 x float]* nonnull align 512 %res_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([256 x [16 x float]]* readonly, [256 x [16 x float]]* noalias, [256 x [16 x float]]* readonly, [256 x [16 x float]]* noalias, [16 x float]* readonly, [16 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256a16f32([256 x [16 x float]]* %1, [256 x [16 x float]]* %0)
  call fastcc void @onebyonecpy_hls.p0a256a16f32([256 x [16 x float]]* %3, [256 x [16 x float]]* %2)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %5, [16 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a256a16f32([256 x [16 x float]]* noalias, [256 x [16 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x [16 x float]]* %0, null
  %3 = icmp eq [256 x [16 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57.gep9 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %0, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %5 = bitcast float* %dst.addr57.gep9 to i8*
  %src.addr68.gep10 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %1, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %6 = bitcast float* %src.addr68.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 16
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* noalias align 512, [16 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x float]* %0, null
  %3 = icmp eq [16 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [16 x float], [16 x float]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast float* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [16 x float], [16 x float]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast float* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([256 x [16 x float]]*, [256 x [16 x float]]* noalias readonly, [256 x [16 x float]]*, [256 x [16 x float]]* noalias readonly, [16 x float]*, [16 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256a16f32([256 x [16 x float]]* %0, [256 x [16 x float]]* %1)
  call fastcc void @onebyonecpy_hls.p0a256a16f32([256 x [16 x float]]* %2, [256 x [16 x float]]* %3)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %4, [16 x float]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_test_scalaire_hw([16 x float]*, [16 x float]*, float*)

define void @test_scalaire_hw_stub_wrapper([16 x float]*, [16 x float]*, float*) #5 {
entry:
  %3 = bitcast [16 x float]* %0 to [256 x [16 x float]]*
  %4 = bitcast [16 x float]* %1 to [256 x [16 x float]]*
  %5 = bitcast float* %2 to [16 x float]*
  call void @copy_out([256 x [16 x float]]* null, [256 x [16 x float]]* %3, [256 x [16 x float]]* null, [256 x [16 x float]]* %4, [16 x float]* null, [16 x float]* %5)
  %6 = bitcast [256 x [16 x float]]* %3 to [16 x float]*
  %7 = bitcast [256 x [16 x float]]* %4 to [16 x float]*
  %8 = bitcast [16 x float]* %5 to float*
  call void @test_scalaire_hw_stub([16 x float]* %6, [16 x float]* %7, float* %8)
  call void @copy_in([256 x [16 x float]]* null, [256 x [16 x float]]* %3, [256 x [16 x float]]* null, [256 x [16 x float]]* %4, [16 x float]* null, [16 x float]* %5)
  ret void
}

declare void @test_scalaire_hw_stub([16 x float]*, [16 x float]*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
