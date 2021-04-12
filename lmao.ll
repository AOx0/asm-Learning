source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_100003fa6 = constant [3 x i8] c"%d\00"
@global_var_100008008 = local_unnamed_addr global i64 0

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_100003f50:
  %stack_var_-28 = alloca i64, align 8
  %0 = call i32 (i8*, ...) @_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_100003fa6, i64 0, i64 0), i64* nonnull %stack_var_-28), !insn.addr !0
  ret i64 0, !insn.addr !1
}

declare i32 @_scanf(i8*, ...) local_unnamed_addr

!0 = !{i64 4294983539}
!1 = !{i64 4294983556}
