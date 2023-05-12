--- |
  ; ModuleID = '/home/syrmia/Desktop/my-llvm-project/llvm/test/CodeGen/DbgInstructionPrint/dbg-ins-print.mir'
  source_filename = "dbg_info_print.cpp"
  target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
  target triple = "x86_64-unknown-linux-gnu"
  
  %"class.std::ios_base::Init" = type { i8 }
  %"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
  %"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
  %"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
  %"struct.std::ios_base::_Words" = type { ptr, i64 }
  %"class.std::locale" = type { ptr }
  %"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
  %"class.std::locale::facet.base" = type <{ ptr, i32 }>
  
  @_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
  @__dso_handle = external hidden global i8
  @_ZSt4cout = external global %"class.std::basic_ostream", align 8
  @llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_dbg_info_print.cpp, ptr null }]
  
  declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0
  
  ; Function Attrs: nounwind
  declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1
  
  ; Function Attrs: nofree nounwind
  declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2
  
  ; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
  define dso_local noundef i32 @_Z1gii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !911 {
    call void @llvm.dbg.value(metadata i32 %0, metadata !915, metadata !DIExpression()), !dbg !919
    call void @llvm.dbg.value(metadata i32 %1, metadata !916, metadata !DIExpression()), !dbg !919
    %3 = mul nsw i32 %1, %0, !dbg !920
    call void @llvm.dbg.value(metadata i32 %3, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !919
    call void @llvm.dbg.value(metadata i32 poison, metadata !918, metadata !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value)), !dbg !919
    call void @llvm.dbg.value(metadata i32 %0, metadata !915, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !919
    call void @llvm.dbg.value(metadata i32 %3, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !919
    %4 = add i32 %0, 16, !dbg !921
    %5 = add i32 %4, %1, !dbg !922
    %6 = add i32 %5, %3, !dbg !922
    ret i32 %6, !dbg !923
  }
  
  ; Function Attrs: mustprogress norecurse uwtable
  define dso_local noundef i32 @main() local_unnamed_addr #4 !dbg !924 {
    call void @llvm.dbg.value(metadata i32 2, metadata !926, metadata !DIExpression()), !dbg !928
    call void @llvm.dbg.value(metadata i32 3, metadata !927, metadata !DIExpression()), !dbg !928
    %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 5), !dbg !929
    call void @llvm.dbg.value(metadata ptr %1, metadata !930, metadata !DIExpression()), !dbg !947
    call void @llvm.dbg.value(metadata !949, metadata !945, metadata !DIExpression()), !dbg !947
    call void @llvm.dbg.value(metadata ptr %1, metadata !950, metadata !DIExpression()), !dbg !1013
    %2 = load ptr, ptr %1, align 8, !dbg !1015, !tbaa !1016
    %3 = getelementptr i8, ptr %2, i64 -24, !dbg !1015
    %4 = load i64, ptr %3, align 8, !dbg !1015
    %5 = getelementptr inbounds i8, ptr %1, i64 %4, !dbg !1015
    call void @llvm.dbg.value(metadata ptr %5, metadata !1019, metadata !DIExpression()), !dbg !1033
    call void @llvm.dbg.value(metadata i8 10, metadata !1031, metadata !DIExpression()), !dbg !1033
    %6 = getelementptr inbounds %"class.std::basic_ios", ptr %5, i64 0, i32 5, !dbg !1035
    %7 = load ptr, ptr %6, align 8, !dbg !1035, !tbaa !1036
    call void @llvm.dbg.value(metadata ptr %7, metadata !1048, metadata !DIExpression()), !dbg !1060
    %8 = icmp eq ptr %7, null, !dbg !1062
    br i1 %8, label %9, label %10, !dbg !1064
  
  9:                                                ; preds = %0
    tail call void @_ZSt16__throw_bad_castv() #8, !dbg !1065
    unreachable, !dbg !1065
  
  10:                                               ; preds = %0
    call void @llvm.dbg.value(metadata ptr %7, metadata !1066, metadata !DIExpression()), !dbg !1075
    call void @llvm.dbg.value(metadata i8 10, metadata !1074, metadata !DIExpression()), !dbg !1075
    %11 = getelementptr inbounds %"class.std::ctype", ptr %7, i64 0, i32 8, !dbg !1077
    %12 = load i8, ptr %11, align 8, !dbg !1077, !tbaa !1079
    %13 = icmp eq i8 %12, 0, !dbg !1077
    br i1 %13, label %17, label %14, !dbg !1082
  
  14:                                               ; preds = %10
    %15 = getelementptr inbounds %"class.std::ctype", ptr %7, i64 0, i32 9, i64 10, !dbg !1083
    %16 = load i8, ptr %15, align 1, !dbg !1083, !tbaa !1084
    br label %22, !dbg !1085
  
  17:                                               ; preds = %10
    tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %7), !dbg !1086
    %18 = load ptr, ptr %7, align 8, !dbg !1087, !tbaa !1016
    %19 = getelementptr inbounds ptr, ptr %18, i64 6, !dbg !1087
    %20 = load ptr, ptr %19, align 8, !dbg !1087
    %21 = tail call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %7, i8 noundef signext 10), !dbg !1087
    br label %22, !dbg !1088
  
  22:                                               ; preds = %17, %14
    %23 = phi i8 [ %16, %14 ], [ %21, %17 ], !dbg !1075
    %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %23), !dbg !1089
    call void @llvm.dbg.value(metadata ptr %24, metadata !1090, metadata !DIExpression()), !dbg !1093
    %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %24), !dbg !1095
    %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 27), !dbg !1096
    call void @llvm.dbg.value(metadata ptr %26, metadata !930, metadata !DIExpression()), !dbg !1097
    call void @llvm.dbg.value(metadata !949, metadata !945, metadata !DIExpression()), !dbg !1097
    call void @llvm.dbg.value(metadata ptr %26, metadata !950, metadata !DIExpression()), !dbg !1099
    %27 = load ptr, ptr %26, align 8, !dbg !1101, !tbaa !1016
    %28 = getelementptr i8, ptr %27, i64 -24, !dbg !1101
    %29 = load i64, ptr %28, align 8, !dbg !1101
    %30 = getelementptr inbounds i8, ptr %26, i64 %29, !dbg !1101
    call void @llvm.dbg.value(metadata ptr %30, metadata !1019, metadata !DIExpression()), !dbg !1102
    call void @llvm.dbg.value(metadata i8 10, metadata !1031, metadata !DIExpression()), !dbg !1102
    %31 = getelementptr inbounds %"class.std::basic_ios", ptr %30, i64 0, i32 5, !dbg !1104
    %32 = load ptr, ptr %31, align 8, !dbg !1104, !tbaa !1036
    call void @llvm.dbg.value(metadata ptr %32, metadata !1048, metadata !DIExpression()), !dbg !1105
    %33 = icmp eq ptr %32, null, !dbg !1107
    br i1 %33, label %34, label %35, !dbg !1108
  
  34:                                               ; preds = %22
    tail call void @_ZSt16__throw_bad_castv() #8, !dbg !1109
    unreachable, !dbg !1109
  
  35:                                               ; preds = %22
    call void @llvm.dbg.value(metadata ptr %32, metadata !1066, metadata !DIExpression()), !dbg !1110
    call void @llvm.dbg.value(metadata i8 10, metadata !1074, metadata !DIExpression()), !dbg !1110
    %36 = getelementptr inbounds %"class.std::ctype", ptr %32, i64 0, i32 8, !dbg !1112
    %37 = load i8, ptr %36, align 8, !dbg !1112, !tbaa !1079
    %38 = icmp eq i8 %37, 0, !dbg !1112
    br i1 %38, label %42, label %39, !dbg !1113
  
  39:                                               ; preds = %35
    %40 = getelementptr inbounds %"class.std::ctype", ptr %32, i64 0, i32 9, i64 10, !dbg !1114
    %41 = load i8, ptr %40, align 1, !dbg !1114, !tbaa !1084
    br label %47, !dbg !1115
  
  42:                                               ; preds = %35
    tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %32), !dbg !1116
    %43 = load ptr, ptr %32, align 8, !dbg !1117, !tbaa !1016
    %44 = getelementptr inbounds ptr, ptr %43, i64 6, !dbg !1117
    %45 = load ptr, ptr %44, align 8, !dbg !1117
    %46 = tail call noundef signext i8 %45(ptr noundef nonnull align 8 dereferenceable(570) %32, i8 noundef signext 10), !dbg !1117
    br label %47, !dbg !1118
  
  47:                                               ; preds = %42, %39
    %48 = phi i8 [ %41, %39 ], [ %46, %42 ], !dbg !1110
    %49 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %26, i8 noundef signext %48), !dbg !1119
    call void @llvm.dbg.value(metadata ptr %49, metadata !1090, metadata !DIExpression()), !dbg !1120
    %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %49), !dbg !1122
    ret i32 0, !dbg !1123
  }
  
  declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0
  
  declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0
  
  declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0
  
  ; Function Attrs: noreturn
  declare !dbg !1124 void @_ZSt16__throw_bad_castv() local_unnamed_addr #5
  
  declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0
  
  ; Function Attrs: uwtable
  define internal void @_GLOBAL__sub_I_dbg_info_print.cpp() #6 section ".text.startup" !dbg !1126 {
    tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1128
    %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #9, !dbg !1132
    ret void
  }
  
  ; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
  declare void @llvm.dbg.value(metadata, metadata, metadata) #7
  
  attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #2 = { nofree nounwind }
  attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
  attributes #8 = { noreturn }
  attributes #9 = { nounwind }
  
  !llvm.dbg.cu = !{!7}
  !llvm.module.flags = !{!903, !904, !905, !906, !907, !908, !909}
  !llvm.ident = !{!910}
  
  !0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
  !1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
  !2 = !DINamespace(name: "std", scope: null)
  !3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
  !4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
  !5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
  !6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8ios_base")
  !7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "clang version 17.0.0 (https://github.com/Lule321/llvm-project.git e27f13ece434a3f5a9ec3e650bcc3f2057e7e92a)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !11, imports: !12, splitDebugInlining: false, nameTableKind: None)
  !8 = !DIFile(filename: "dbg_info_print.cpp", directory: "/home/syrmia/Desktop/llvm-tutorial/tutorial/zadatak_1", checksumkind: CSK_MD5, checksum: "d64c88947a38e7c1d4589f0d615ae4ae")
  !9 = !{!10}
  !10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
  !11 = !{!0}
  !12 = !{!13, !33, !36, !41, !106, !114, !118, !125, !129, !133, !135, !137, !141, !150, !154, !160, !166, !168, !172, !176, !180, !184, !196, !198, !202, !206, !210, !212, !217, !221, !225, !227, !229, !233, !241, !245, !249, !253, !255, !261, !263, !270, !275, !279, !283, !287, !291, !295, !297, !299, !303, !307, !311, !313, !317, !321, !323, !325, !329, !335, !340, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !359, !363, !367, !372, !376, !379, !382, !385, !387, !389, !391, !394, !397, !400, !403, !406, !408, !412, !415, !418, !421, !423, !425, !427, !429, !432, !435, !438, !441, !444, !446, !450, !454, !459, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !495, !499, !505, !509, !513, !518, !520, !525, !529, !533, !544, !546, !550, !554, !558, !562, !566, !570, !574, !578, !582, !586, !590, !592, !596, !600, !604, !610, !614, !618, !620, !624, !628, !634, !636, !640, !644, !648, !652, !656, !660, !664, !665, !666, !667, !669, !670, !671, !672, !673, !674, !675, !679, !685, !690, !694, !696, !698, !700, !702, !709, !713, !717, !721, !725, !729, !734, !738, !740, !744, !750, !754, !759, !761, !764, !768, !772, !774, !776, !778, !780, !784, !786, !788, !792, !796, !800, !804, !808, !812, !814, !818, !822, !826, !830, !832, !834, !838, !842, !843, !844, !845, !846, !847, !853, !856, !857, !859, !861, !863, !865, !869, !871, !873, !875, !877, !879, !881, !883, !885, !889, !893, !895, !899}
  !13 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !14, file: !32, line: 64)
  !14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !15, line: 6, baseType: !16)
  !15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
  !16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !17, line: 21, baseType: !18)
  !17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
  !18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !19, identifier: "_ZTS11__mbstate_t")
  !19 = !{!20, !22}
  !20 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !18, file: !17, line: 15, baseType: !21, size: 32)
  !21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
  !22 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !18, file: !17, line: 20, baseType: !23, size: 32, offset: 32)
  !23 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !17, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !24, identifier: "_ZTSN11__mbstate_tUt_E")
  !24 = !{!25, !27}
  !25 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !23, file: !17, line: 18, baseType: !26, size: 32)
  !26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
  !27 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !23, file: !17, line: 19, baseType: !28, size: 32)
  !28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !30)
  !29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
  !30 = !{!31}
  !31 = !DISubrange(count: 4)
  !32 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
  !33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !34, file: !32, line: 141)
  !34 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !35, line: 20, baseType: !26)
  !35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
  !36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !37, file: !32, line: 143)
  !37 = !DISubprogram(name: "btowc", scope: !38, file: !38, line: 319, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !38 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
  !39 = !DISubroutineType(types: !40)
  !40 = !{!34, !21}
  !41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !42, file: !32, line: 144)
  !42 = !DISubprogram(name: "fgetwc", scope: !38, file: !38, line: 744, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !43 = !DISubroutineType(types: !44)
  !44 = !{!34, !45}
  !45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
  !46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !47, line: 5, baseType: !48)
  !47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
  !48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !50, identifier: "_ZTS8_IO_FILE")
  !49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
  !50 = !{!51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !69, !70, !71, !75, !77, !79, !83, !86, !88, !91, !94, !95, !97, !101, !102}
  !51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !21, size: 32)
  !52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !53, size: 64, offset: 64)
  !53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
  !54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !53, size: 64, offset: 128)
  !55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !53, size: 64, offset: 192)
  !56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !53, size: 64, offset: 256)
  !57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !53, size: 64, offset: 320)
  !58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !53, size: 64, offset: 384)
  !59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !53, size: 64, offset: 448)
  !60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !53, size: 64, offset: 512)
  !61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !53, size: 64, offset: 576)
  !62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !53, size: 64, offset: 640)
  !63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !53, size: 64, offset: 704)
  !64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !65, size: 64, offset: 768)
  !65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
  !66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS10_IO_marker")
  !67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !68, size: 64, offset: 832)
  !68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
  !69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !21, size: 32, offset: 896)
  !70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !21, size: 32, offset: 928)
  !71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !72, size: 64, offset: 960)
  !72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !74)
  !73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
  !74 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
  !75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !76, size: 16, offset: 1024)
  !76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
  !77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !78, size: 8, offset: 1040)
  !78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
  !79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !80, size: 8, offset: 1048)
  !80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !81)
  !81 = !{!82}
  !82 = !DISubrange(count: 1)
  !83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !84, size: 64, offset: 1088)
  !84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
  !85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
  !86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !87, size: 64, offset: 1152)
  !87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !74)
  !88 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !89, size: 64, offset: 1216)
  !89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
  !90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS11_IO_codecvt")
  !91 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !92, size: 64, offset: 1280)
  !92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
  !93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13_IO_wide_data")
  !94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !68, size: 64, offset: 1344)
  !95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !96, size: 64, offset: 1408)
  !96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
  !97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !98, size: 64, offset: 1472)
  !98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
  !99 = !DIFile(filename: "my-llvm-project/build/lib/clang/17/include/stddef.h", directory: "/home/syrmia/Desktop", checksumkind: CSK_MD5, checksum: "d1776268f398bd1ca997c840ad581432")
  !100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
  !101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !21, size: 32, offset: 1536)
  !102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !103, size: 160, offset: 1568)
  !103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !104)
  !104 = !{!105}
  !105 = !DISubrange(count: 20)
  !106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !107, file: !32, line: 145)
  !107 = !DISubprogram(name: "fgetws", scope: !38, file: !38, line: 773, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !108 = !DISubroutineType(types: !109)
  !109 = !{!110, !112, !21, !113}
  !110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
  !111 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
  !112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
  !113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
  !114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !115, file: !32, line: 146)
  !115 = !DISubprogram(name: "fputwc", scope: !38, file: !38, line: 758, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !116 = !DISubroutineType(types: !117)
  !117 = !{!34, !111, !45}
  !118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !119, file: !32, line: 147)
  !119 = !DISubprogram(name: "fputws", scope: !38, file: !38, line: 780, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !120 = !DISubroutineType(types: !121)
  !121 = !{!21, !122, !113}
  !122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
  !123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
  !124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
  !125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !126, file: !32, line: 148)
  !126 = !DISubprogram(name: "fwide", scope: !38, file: !38, line: 588, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !127 = !DISubroutineType(types: !128)
  !128 = !{!21, !45, !21}
  !129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !130, file: !32, line: 149)
  !130 = !DISubprogram(name: "fwprintf", scope: !38, file: !38, line: 595, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !131 = !DISubroutineType(types: !132)
  !132 = !{!21, !113, !122, null}
  !133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !134, file: !32, line: 150)
  !134 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !38, file: !38, line: 657, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !136, file: !32, line: 151)
  !136 = !DISubprogram(name: "getwc", scope: !38, file: !38, line: 745, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !138, file: !32, line: 152)
  !138 = !DISubprogram(name: "getwchar", scope: !38, file: !38, line: 751, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !139 = !DISubroutineType(types: !140)
  !140 = !{!34}
  !141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !142, file: !32, line: 153)
  !142 = !DISubprogram(name: "mbrlen", scope: !38, file: !38, line: 330, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !143 = !DISubroutineType(types: !144)
  !144 = !{!98, !145, !98, !148}
  !145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
  !146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
  !147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
  !148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
  !149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
  !150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !151, file: !32, line: 154)
  !151 = !DISubprogram(name: "mbrtowc", scope: !38, file: !38, line: 297, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !152 = !DISubroutineType(types: !153)
  !153 = !{!98, !112, !145, !98, !148}
  !154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !155, file: !32, line: 155)
  !155 = !DISubprogram(name: "mbsinit", scope: !38, file: !38, line: 293, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !156 = !DISubroutineType(types: !157)
  !157 = !{!21, !158}
  !158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
  !159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
  !160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !161, file: !32, line: 156)
  !161 = !DISubprogram(name: "mbsrtowcs", scope: !38, file: !38, line: 338, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !162 = !DISubroutineType(types: !163)
  !163 = !{!98, !112, !164, !98, !148}
  !164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
  !165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
  !166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !167, file: !32, line: 157)
  !167 = !DISubprogram(name: "putwc", scope: !38, file: !38, line: 759, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !169, file: !32, line: 158)
  !169 = !DISubprogram(name: "putwchar", scope: !38, file: !38, line: 765, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !170 = !DISubroutineType(types: !171)
  !171 = !{!34, !111}
  !172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !173, file: !32, line: 160)
  !173 = !DISubprogram(name: "swprintf", scope: !38, file: !38, line: 605, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !174 = !DISubroutineType(types: !175)
  !175 = !{!21, !112, !98, !122, null}
  !176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !177, file: !32, line: 162)
  !177 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !38, file: !38, line: 664, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !178 = !DISubroutineType(types: !179)
  !179 = !{!21, !122, !122, null}
  !180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !32, line: 163)
  !181 = !DISubprogram(name: "ungetwc", scope: !38, file: !38, line: 788, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !182 = !DISubroutineType(types: !183)
  !183 = !{!34, !34, !45}
  !184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !185, file: !32, line: 164)
  !185 = !DISubprogram(name: "vfwprintf", scope: !38, file: !38, line: 613, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !186 = !DISubroutineType(types: !187)
  !187 = !{!21, !113, !122, !188}
  !188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
  !189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTS13__va_list_tag")
  !190 = !{!191, !193, !194, !195}
  !191 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !189, file: !192, baseType: !26, size: 32)
  !192 = !DIFile(filename: "dbg_info_print.cpp", directory: "/home/syrmia/Desktop/llvm-tutorial/tutorial/zadatak_1")
  !193 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !189, file: !192, baseType: !26, size: 32, offset: 32)
  !194 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !189, file: !192, baseType: !96, size: 64, offset: 64)
  !195 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !189, file: !192, baseType: !96, size: 64, offset: 128)
  !196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !197, file: !32, line: 166)
  !197 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !38, file: !38, line: 711, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !199, file: !32, line: 169)
  !199 = !DISubprogram(name: "vswprintf", scope: !38, file: !38, line: 626, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !200 = !DISubroutineType(types: !201)
  !201 = !{!21, !112, !98, !122, !188}
  !202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !203, file: !32, line: 172)
  !203 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !38, file: !38, line: 718, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !204 = !DISubroutineType(types: !205)
  !205 = !{!21, !122, !122, !188}
  !206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !207, file: !32, line: 174)
  !207 = !DISubprogram(name: "vwprintf", scope: !38, file: !38, line: 621, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !208 = !DISubroutineType(types: !209)
  !209 = !{!21, !122, !188}
  !210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !211, file: !32, line: 176)
  !211 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !38, file: !38, line: 715, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !213, file: !32, line: 178)
  !213 = !DISubprogram(name: "wcrtomb", scope: !38, file: !38, line: 302, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !214 = !DISubroutineType(types: !215)
  !215 = !{!98, !216, !111, !148}
  !216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
  !217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !218, file: !32, line: 179)
  !218 = !DISubprogram(name: "wcscat", scope: !38, file: !38, line: 97, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !219 = !DISubroutineType(types: !220)
  !220 = !{!110, !112, !122}
  !221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !222, file: !32, line: 180)
  !222 = !DISubprogram(name: "wcscmp", scope: !38, file: !38, line: 106, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !223 = !DISubroutineType(types: !224)
  !224 = !{!21, !123, !123}
  !225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !226, file: !32, line: 181)
  !226 = !DISubprogram(name: "wcscoll", scope: !38, file: !38, line: 131, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !228, file: !32, line: 182)
  !228 = !DISubprogram(name: "wcscpy", scope: !38, file: !38, line: 87, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !230, file: !32, line: 183)
  !230 = !DISubprogram(name: "wcscspn", scope: !38, file: !38, line: 188, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !231 = !DISubroutineType(types: !232)
  !232 = !{!98, !123, !123}
  !233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !234, file: !32, line: 184)
  !234 = !DISubprogram(name: "wcsftime", scope: !38, file: !38, line: 852, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !235 = !DISubroutineType(types: !236)
  !236 = !{!98, !112, !98, !122, !237}
  !237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
  !238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
  !239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
  !240 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !38, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
  !241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !242, file: !32, line: 185)
  !242 = !DISubprogram(name: "wcslen", scope: !38, file: !38, line: 223, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !243 = !DISubroutineType(types: !244)
  !244 = !{!98, !123}
  !245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !246, file: !32, line: 186)
  !246 = !DISubprogram(name: "wcsncat", scope: !38, file: !38, line: 101, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !247 = !DISubroutineType(types: !248)
  !248 = !{!110, !112, !122, !98}
  !249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !250, file: !32, line: 187)
  !250 = !DISubprogram(name: "wcsncmp", scope: !38, file: !38, line: 109, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !251 = !DISubroutineType(types: !252)
  !252 = !{!21, !123, !123, !98}
  !253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !254, file: !32, line: 188)
  !254 = !DISubprogram(name: "wcsncpy", scope: !38, file: !38, line: 92, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !32, line: 189)
  !256 = !DISubprogram(name: "wcsrtombs", scope: !38, file: !38, line: 344, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !257 = !DISubroutineType(types: !258)
  !258 = !{!98, !216, !259, !98, !148}
  !259 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !260)
  !260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
  !261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !262, file: !32, line: 190)
  !262 = !DISubprogram(name: "wcsspn", scope: !38, file: !38, line: 192, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !264, file: !32, line: 191)
  !264 = !DISubprogram(name: "wcstod", scope: !38, file: !38, line: 378, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !265 = !DISubroutineType(types: !266)
  !266 = !{!267, !122, !268}
  !267 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
  !268 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !269)
  !269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
  !270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !271, file: !32, line: 193)
  !271 = !DISubprogram(name: "wcstof", scope: !38, file: !38, line: 383, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !272 = !DISubroutineType(types: !273)
  !273 = !{!274, !122, !268}
  !274 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
  !275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !276, file: !32, line: 195)
  !276 = !DISubprogram(name: "wcstok", scope: !38, file: !38, line: 218, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !277 = !DISubroutineType(types: !278)
  !278 = !{!110, !112, !122, !268}
  !279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !280, file: !32, line: 196)
  !280 = !DISubprogram(name: "wcstol", scope: !38, file: !38, line: 429, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !281 = !DISubroutineType(types: !282)
  !282 = !{!74, !122, !268, !21}
  !283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !284, file: !32, line: 197)
  !284 = !DISubprogram(name: "wcstoul", scope: !38, file: !38, line: 434, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !285 = !DISubroutineType(types: !286)
  !286 = !{!100, !122, !268, !21}
  !287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !288, file: !32, line: 198)
  !288 = !DISubprogram(name: "wcsxfrm", scope: !38, file: !38, line: 135, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !289 = !DISubroutineType(types: !290)
  !290 = !{!98, !112, !122, !98}
  !291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !32, line: 199)
  !292 = !DISubprogram(name: "wctob", scope: !38, file: !38, line: 325, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !293 = !DISubroutineType(types: !294)
  !294 = !{!21, !34}
  !295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !296, file: !32, line: 200)
  !296 = !DISubprogram(name: "wmemcmp", scope: !38, file: !38, line: 259, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !298, file: !32, line: 201)
  !298 = !DISubprogram(name: "wmemcpy", scope: !38, file: !38, line: 263, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !300, file: !32, line: 202)
  !300 = !DISubprogram(name: "wmemmove", scope: !38, file: !38, line: 268, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !301 = !DISubroutineType(types: !302)
  !302 = !{!110, !110, !123, !98}
  !303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !304, file: !32, line: 203)
  !304 = !DISubprogram(name: "wmemset", scope: !38, file: !38, line: 272, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !305 = !DISubroutineType(types: !306)
  !306 = !{!110, !110, !111, !98}
  !307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !308, file: !32, line: 204)
  !308 = !DISubprogram(name: "wprintf", scope: !38, file: !38, line: 602, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !309 = !DISubroutineType(types: !310)
  !310 = !{!21, !122, null}
  !311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !312, file: !32, line: 205)
  !312 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !38, file: !38, line: 661, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !314, file: !32, line: 206)
  !314 = !DISubprogram(name: "wcschr", scope: !38, file: !38, line: 165, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !315 = !DISubroutineType(types: !316)
  !316 = !{!110, !123, !111}
  !317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !318, file: !32, line: 207)
  !318 = !DISubprogram(name: "wcspbrk", scope: !38, file: !38, line: 202, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !319 = !DISubroutineType(types: !320)
  !320 = !{!110, !123, !123}
  !321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !322, file: !32, line: 208)
  !322 = !DISubprogram(name: "wcsrchr", scope: !38, file: !38, line: 175, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !324, file: !32, line: 209)
  !324 = !DISubprogram(name: "wcsstr", scope: !38, file: !38, line: 213, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !326, file: !32, line: 210)
  !326 = !DISubprogram(name: "wmemchr", scope: !38, file: !38, line: 254, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !327 = !DISubroutineType(types: !328)
  !328 = !{!110, !123, !111, !98}
  !329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !331, file: !32, line: 251)
  !330 = !DINamespace(name: "__gnu_cxx", scope: null)
  !331 = !DISubprogram(name: "wcstold", scope: !38, file: !38, line: 385, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !332 = !DISubroutineType(types: !333)
  !333 = !{!334, !122, !268}
  !334 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
  !335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !336, file: !32, line: 260)
  !336 = !DISubprogram(name: "wcstoll", scope: !38, file: !38, line: 442, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !337 = !DISubroutineType(types: !338)
  !338 = !{!339, !122, !268, !21}
  !339 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
  !340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !341, file: !32, line: 261)
  !341 = !DISubprogram(name: "wcstoull", scope: !38, file: !38, line: 449, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !342 = !DISubroutineType(types: !343)
  !343 = !{!344, !122, !268, !21}
  !344 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
  !345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !331, file: !32, line: 267)
  !346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !336, file: !32, line: 268)
  !347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !341, file: !32, line: 269)
  !348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !271, file: !32, line: 283)
  !349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !197, file: !32, line: 286)
  !350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !203, file: !32, line: 289)
  !351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !211, file: !32, line: 292)
  !352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !331, file: !32, line: 296)
  !353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !336, file: !32, line: 297)
  !354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !341, file: !32, line: 298)
  !355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !356, file: !357, line: 68)
  !356 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !358, file: !357, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
  !357 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
  !358 = !DINamespace(name: "__exception_ptr", scope: !2)
  !359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !358, entity: !360, file: !357, line: 84)
  !360 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !357, line: 80, type: !361, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
  !361 = !DISubroutineType(types: !362)
  !362 = !{null, !356}
  !363 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !364, entity: !365, file: !366, line: 58)
  !364 = !DINamespace(name: "__gnu_debug", scope: null)
  !365 = !DINamespace(name: "__debug", scope: !2)
  !366 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
  !367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !368, file: !371, line: 47)
  !368 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !369, line: 24, baseType: !370)
  !369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
  !370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !73, line: 37, baseType: !78)
  !371 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
  !372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !373, file: !371, line: 48)
  !373 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !369, line: 25, baseType: !374)
  !374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !73, line: 39, baseType: !375)
  !375 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
  !376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !377, file: !371, line: 49)
  !377 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !369, line: 26, baseType: !378)
  !378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !73, line: 41, baseType: !21)
  !379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !380, file: !371, line: 50)
  !380 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !369, line: 27, baseType: !381)
  !381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !73, line: 44, baseType: !74)
  !382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !383, file: !371, line: 52)
  !383 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !384, line: 58, baseType: !78)
  !384 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
  !385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !386, file: !371, line: 53)
  !386 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !384, line: 60, baseType: !74)
  !387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !388, file: !371, line: 54)
  !388 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !384, line: 61, baseType: !74)
  !389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !371, line: 55)
  !390 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !384, line: 62, baseType: !74)
  !391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !392, file: !371, line: 57)
  !392 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !384, line: 43, baseType: !393)
  !393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !73, line: 52, baseType: !370)
  !394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !395, file: !371, line: 58)
  !395 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !384, line: 44, baseType: !396)
  !396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !73, line: 54, baseType: !374)
  !397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !398, file: !371, line: 59)
  !398 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !384, line: 45, baseType: !399)
  !399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !73, line: 56, baseType: !378)
  !400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !401, file: !371, line: 60)
  !401 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !384, line: 46, baseType: !402)
  !402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !73, line: 58, baseType: !381)
  !403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !404, file: !371, line: 62)
  !404 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !384, line: 101, baseType: !405)
  !405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !73, line: 72, baseType: !74)
  !406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !407, file: !371, line: 63)
  !407 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !384, line: 87, baseType: !74)
  !408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !409, file: !371, line: 65)
  !409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !410, line: 24, baseType: !411)
  !410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
  !411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !10)
  !412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !413, file: !371, line: 66)
  !413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !410, line: 25, baseType: !414)
  !414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !73, line: 40, baseType: !76)
  !415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !416, file: !371, line: 67)
  !416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !410, line: 26, baseType: !417)
  !417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !26)
  !418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !419, file: !371, line: 68)
  !419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !410, line: 27, baseType: !420)
  !420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 45, baseType: !100)
  !421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !422, file: !371, line: 70)
  !422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !384, line: 71, baseType: !10)
  !423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !424, file: !371, line: 71)
  !424 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !384, line: 73, baseType: !100)
  !425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !371, line: 72)
  !426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !384, line: 74, baseType: !100)
  !427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !428, file: !371, line: 73)
  !428 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !384, line: 75, baseType: !100)
  !429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !430, file: !371, line: 75)
  !430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !384, line: 49, baseType: !431)
  !431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !73, line: 53, baseType: !411)
  !432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !433, file: !371, line: 76)
  !433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !384, line: 50, baseType: !434)
  !434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !73, line: 55, baseType: !414)
  !435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !371, line: 77)
  !436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !384, line: 51, baseType: !437)
  !437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !73, line: 57, baseType: !417)
  !438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !439, file: !371, line: 78)
  !439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !384, line: 52, baseType: !440)
  !440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !73, line: 59, baseType: !420)
  !441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !371, line: 80)
  !442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !384, line: 102, baseType: !443)
  !443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !73, line: 73, baseType: !100)
  !444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !445, file: !371, line: 81)
  !445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !384, line: 90, baseType: !100)
  !446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !447, file: !449, line: 53)
  !447 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !448, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
  !448 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
  !449 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
  !450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !451, file: !449, line: 54)
  !451 = !DISubprogram(name: "setlocale", scope: !448, file: !448, line: 122, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !452 = !DISubroutineType(types: !453)
  !453 = !{!53, !21, !146}
  !454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !455, file: !449, line: 55)
  !455 = !DISubprogram(name: "localeconv", scope: !448, file: !448, line: 125, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !456 = !DISubroutineType(types: !457)
  !457 = !{!458}
  !458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
  !459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !460, file: !464, line: 64)
  !460 = !DISubprogram(name: "isalnum", scope: !461, file: !461, line: 108, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !461 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
  !462 = !DISubroutineType(types: !463)
  !463 = !{!21, !21}
  !464 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
  !465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !464, line: 65)
  !466 = !DISubprogram(name: "isalpha", scope: !461, file: !461, line: 109, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !464, line: 66)
  !468 = !DISubprogram(name: "iscntrl", scope: !461, file: !461, line: 110, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !464, line: 67)
  !470 = !DISubprogram(name: "isdigit", scope: !461, file: !461, line: 111, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !464, line: 68)
  !472 = !DISubprogram(name: "isgraph", scope: !461, file: !461, line: 113, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !464, line: 69)
  !474 = !DISubprogram(name: "islower", scope: !461, file: !461, line: 112, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !476, file: !464, line: 70)
  !476 = !DISubprogram(name: "isprint", scope: !461, file: !461, line: 114, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !464, line: 71)
  !478 = !DISubprogram(name: "ispunct", scope: !461, file: !461, line: 115, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !480, file: !464, line: 72)
  !480 = !DISubprogram(name: "isspace", scope: !461, file: !461, line: 116, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !464, line: 73)
  !482 = !DISubprogram(name: "isupper", scope: !461, file: !461, line: 117, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !464, line: 74)
  !484 = !DISubprogram(name: "isxdigit", scope: !461, file: !461, line: 118, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !464, line: 75)
  !486 = !DISubprogram(name: "tolower", scope: !461, file: !461, line: 122, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !464, line: 76)
  !488 = !DISubprogram(name: "toupper", scope: !461, file: !461, line: 125, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !490, file: !464, line: 87)
  !490 = !DISubprogram(name: "isblank", scope: !461, file: !461, line: 130, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !494, line: 52)
  !492 = !DISubprogram(name: "abs", scope: !493, file: !493, line: 848, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !493 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
  !494 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
  !495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !496, file: !498, line: 127)
  !496 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !493, line: 63, baseType: !497)
  !497 = !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
  !498 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
  !499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !500, file: !498, line: 128)
  !500 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !493, line: 71, baseType: !501)
  !501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !502, identifier: "_ZTS6ldiv_t")
  !502 = !{!503, !504}
  !503 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !501, file: !493, line: 69, baseType: !74, size: 64)
  !504 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !501, file: !493, line: 70, baseType: !74, size: 64, offset: 64)
  !505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !506, file: !498, line: 130)
  !506 = !DISubprogram(name: "abort", scope: !493, file: !493, line: 598, type: !507, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
  !507 = !DISubroutineType(types: !508)
  !508 = !{null}
  !509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !510, file: !498, line: 132)
  !510 = !DISubprogram(name: "aligned_alloc", scope: !493, file: !493, line: 592, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !511 = !DISubroutineType(types: !512)
  !512 = !{!96, !98, !98}
  !513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !514, file: !498, line: 134)
  !514 = !DISubprogram(name: "atexit", scope: !493, file: !493, line: 602, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !515 = !DISubroutineType(types: !516)
  !516 = !{!21, !517}
  !517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
  !518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !519, file: !498, line: 137)
  !519 = !DISubprogram(name: "at_quick_exit", scope: !493, file: !493, line: 607, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !498, line: 140)
  !521 = !DISubprogram(name: "atof", scope: !522, file: !522, line: 25, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !522 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "", checksumkind: CSK_MD5, checksum: "adfe1626ff4efc68ac58c367ff5f206b")
  !523 = !DISubroutineType(types: !524)
  !524 = !{!267, !146}
  !525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !526, file: !498, line: 141)
  !526 = !DISubprogram(name: "atoi", scope: !493, file: !493, line: 362, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !527 = !DISubroutineType(types: !528)
  !528 = !{!21, !146}
  !529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !530, file: !498, line: 142)
  !530 = !DISubprogram(name: "atol", scope: !493, file: !493, line: 367, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !531 = !DISubroutineType(types: !532)
  !532 = !{!74, !146}
  !533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !534, file: !498, line: 143)
  !534 = !DISubprogram(name: "bsearch", scope: !535, file: !535, line: 20, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "", checksumkind: CSK_MD5, checksum: "724ededa330cc3e0cbd34c5b4030a6f6")
  !536 = !DISubroutineType(types: !537)
  !537 = !{!96, !538, !538, !98, !98, !540}
  !538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
  !539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
  !540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !493, line: 816, baseType: !541)
  !541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
  !542 = !DISubroutineType(types: !543)
  !543 = !{!21, !538, !538}
  !544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !498, line: 144)
  !545 = !DISubprogram(name: "calloc", scope: !493, file: !493, line: 543, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !498, line: 145)
  !547 = !DISubprogram(name: "div", scope: !493, file: !493, line: 860, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !548 = !DISubroutineType(types: !549)
  !549 = !{!496, !21, !21}
  !550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !498, line: 146)
  !551 = !DISubprogram(name: "exit", scope: !493, file: !493, line: 624, type: !552, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
  !552 = !DISubroutineType(types: !553)
  !553 = !{null, !21}
  !554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !555, file: !498, line: 147)
  !555 = !DISubprogram(name: "free", scope: !493, file: !493, line: 555, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !556 = !DISubroutineType(types: !557)
  !557 = !{null, !96}
  !558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !559, file: !498, line: 148)
  !559 = !DISubprogram(name: "getenv", scope: !493, file: !493, line: 641, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !560 = !DISubroutineType(types: !561)
  !561 = !{!53, !146}
  !562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !563, file: !498, line: 149)
  !563 = !DISubprogram(name: "labs", scope: !493, file: !493, line: 849, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !564 = !DISubroutineType(types: !565)
  !565 = !{!74, !74}
  !566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !567, file: !498, line: 150)
  !567 = !DISubprogram(name: "ldiv", scope: !493, file: !493, line: 862, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !568 = !DISubroutineType(types: !569)
  !569 = !{!500, !74, !74}
  !570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !571, file: !498, line: 151)
  !571 = !DISubprogram(name: "malloc", scope: !493, file: !493, line: 540, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !572 = !DISubroutineType(types: !573)
  !573 = !{!96, !98}
  !574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !575, file: !498, line: 153)
  !575 = !DISubprogram(name: "mblen", scope: !493, file: !493, line: 930, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !576 = !DISubroutineType(types: !577)
  !577 = !{!21, !146, !98}
  !578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !498, line: 154)
  !579 = !DISubprogram(name: "mbstowcs", scope: !493, file: !493, line: 941, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !580 = !DISubroutineType(types: !581)
  !581 = !{!98, !112, !145, !98}
  !582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !498, line: 155)
  !583 = !DISubprogram(name: "mbtowc", scope: !493, file: !493, line: 933, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !584 = !DISubroutineType(types: !585)
  !585 = !{!21, !112, !145, !98}
  !586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !587, file: !498, line: 157)
  !587 = !DISubprogram(name: "qsort", scope: !493, file: !493, line: 838, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !588 = !DISubroutineType(types: !589)
  !589 = !{null, !96, !98, !98, !540}
  !590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !498, line: 160)
  !591 = !DISubprogram(name: "quick_exit", scope: !493, file: !493, line: 630, type: !552, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
  !592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !593, file: !498, line: 163)
  !593 = !DISubprogram(name: "rand", scope: !493, file: !493, line: 454, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !594 = !DISubroutineType(types: !595)
  !595 = !{!21}
  !596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !498, line: 164)
  !597 = !DISubprogram(name: "realloc", scope: !493, file: !493, line: 551, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !598 = !DISubroutineType(types: !599)
  !599 = !{!96, !96, !98}
  !600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !601, file: !498, line: 165)
  !601 = !DISubprogram(name: "srand", scope: !493, file: !493, line: 456, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !602 = !DISubroutineType(types: !603)
  !603 = !{null, !26}
  !604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !605, file: !498, line: 166)
  !605 = !DISubprogram(name: "strtod", scope: !493, file: !493, line: 118, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !606 = !DISubroutineType(types: !607)
  !607 = !{!267, !145, !608}
  !608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !609)
  !609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
  !610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !498, line: 167)
  !611 = !DISubprogram(name: "strtol", scope: !493, file: !493, line: 177, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !612 = !DISubroutineType(types: !613)
  !613 = !{!74, !145, !608, !21}
  !614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !615, file: !498, line: 168)
  !615 = !DISubprogram(name: "strtoul", scope: !493, file: !493, line: 181, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !616 = !DISubroutineType(types: !617)
  !617 = !{!100, !145, !608, !21}
  !618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !498, line: 169)
  !619 = !DISubprogram(name: "system", scope: !493, file: !493, line: 791, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !621, file: !498, line: 171)
  !621 = !DISubprogram(name: "wcstombs", scope: !493, file: !493, line: 945, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !622 = !DISubroutineType(types: !623)
  !623 = !{!98, !216, !122, !98}
  !624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !625, file: !498, line: 172)
  !625 = !DISubprogram(name: "wctomb", scope: !493, file: !493, line: 937, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !626 = !DISubroutineType(types: !627)
  !627 = !{!21, !53, !111}
  !628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !629, file: !498, line: 200)
  !629 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !493, line: 81, baseType: !630)
  !630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !631, identifier: "_ZTS7lldiv_t")
  !631 = !{!632, !633}
  !632 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !630, file: !493, line: 79, baseType: !339, size: 64)
  !633 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !630, file: !493, line: 80, baseType: !339, size: 64, offset: 64)
  !634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !635, file: !498, line: 206)
  !635 = !DISubprogram(name: "_Exit", scope: !493, file: !493, line: 636, type: !552, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
  !636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !637, file: !498, line: 210)
  !637 = !DISubprogram(name: "llabs", scope: !493, file: !493, line: 852, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !638 = !DISubroutineType(types: !639)
  !639 = !{!339, !339}
  !640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !641, file: !498, line: 216)
  !641 = !DISubprogram(name: "lldiv", scope: !493, file: !493, line: 866, type: !642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !642 = !DISubroutineType(types: !643)
  !643 = !{!629, !339, !339}
  !644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !645, file: !498, line: 227)
  !645 = !DISubprogram(name: "atoll", scope: !493, file: !493, line: 374, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !646 = !DISubroutineType(types: !647)
  !647 = !{!339, !146}
  !648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !649, file: !498, line: 228)
  !649 = !DISubprogram(name: "strtoll", scope: !493, file: !493, line: 201, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !650 = !DISubroutineType(types: !651)
  !651 = !{!339, !145, !608, !21}
  !652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !653, file: !498, line: 229)
  !653 = !DISubprogram(name: "strtoull", scope: !493, file: !493, line: 206, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !654 = !DISubroutineType(types: !655)
  !655 = !{!344, !145, !608, !21}
  !656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !657, file: !498, line: 231)
  !657 = !DISubprogram(name: "strtof", scope: !493, file: !493, line: 124, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !658 = !DISubroutineType(types: !659)
  !659 = !{!274, !145, !608}
  !660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !661, file: !498, line: 232)
  !661 = !DISubprogram(name: "strtold", scope: !493, file: !493, line: 127, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !662 = !DISubroutineType(types: !663)
  !663 = !{!334, !145, !608}
  !664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !629, file: !498, line: 240)
  !665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !498, line: 242)
  !666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !637, file: !498, line: 244)
  !667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !498, line: 245)
  !668 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !330, file: !498, line: 213, type: !642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !641, file: !498, line: 246)
  !670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !645, file: !498, line: 248)
  !671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !657, file: !498, line: 249)
  !672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !649, file: !498, line: 250)
  !673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !653, file: !498, line: 251)
  !674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !661, file: !498, line: 252)
  !675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !678, line: 98)
  !676 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !677, line: 7, baseType: !48)
  !677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
  !678 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
  !679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !678, line: 99)
  !680 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !681, line: 84, baseType: !682)
  !681 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
  !682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !683, line: 14, baseType: !684)
  !683 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
  !684 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !683, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
  !685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !686, file: !678, line: 101)
  !686 = !DISubprogram(name: "clearerr", scope: !681, file: !681, line: 786, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !687 = !DISubroutineType(types: !688)
  !688 = !{null, !689}
  !689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
  !690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !691, file: !678, line: 102)
  !691 = !DISubprogram(name: "fclose", scope: !681, file: !681, line: 178, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !692 = !DISubroutineType(types: !693)
  !693 = !{!21, !689}
  !694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !695, file: !678, line: 103)
  !695 = !DISubprogram(name: "feof", scope: !681, file: !681, line: 788, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !697, file: !678, line: 104)
  !697 = !DISubprogram(name: "ferror", scope: !681, file: !681, line: 790, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !699, file: !678, line: 105)
  !699 = !DISubprogram(name: "fflush", scope: !681, file: !681, line: 230, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !678, line: 106)
  !701 = !DISubprogram(name: "fgetc", scope: !681, file: !681, line: 513, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !703, file: !678, line: 107)
  !703 = !DISubprogram(name: "fgetpos", scope: !681, file: !681, line: 760, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !704 = !DISubroutineType(types: !705)
  !705 = !{!21, !706, !707}
  !706 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !689)
  !707 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !708)
  !708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
  !709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !678, line: 108)
  !710 = !DISubprogram(name: "fgets", scope: !681, file: !681, line: 592, type: !711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !711 = !DISubroutineType(types: !712)
  !712 = !{!53, !216, !21, !706}
  !713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !678, line: 109)
  !714 = !DISubprogram(name: "fopen", scope: !681, file: !681, line: 258, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !715 = !DISubroutineType(types: !716)
  !716 = !{!689, !145, !145}
  !717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !718, file: !678, line: 110)
  !718 = !DISubprogram(name: "fprintf", scope: !681, file: !681, line: 350, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !719 = !DISubroutineType(types: !720)
  !720 = !{!21, !706, !145, null}
  !721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !722, file: !678, line: 111)
  !722 = !DISubprogram(name: "fputc", scope: !681, file: !681, line: 549, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !723 = !DISubroutineType(types: !724)
  !724 = !{!21, !21, !689}
  !725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !678, line: 112)
  !726 = !DISubprogram(name: "fputs", scope: !681, file: !681, line: 655, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !727 = !DISubroutineType(types: !728)
  !728 = !{!21, !145, !706}
  !729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !730, file: !678, line: 113)
  !730 = !DISubprogram(name: "fread", scope: !681, file: !681, line: 675, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !731 = !DISubroutineType(types: !732)
  !732 = !{!98, !733, !98, !98, !706}
  !733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
  !734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !735, file: !678, line: 114)
  !735 = !DISubprogram(name: "freopen", scope: !681, file: !681, line: 265, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !736 = !DISubroutineType(types: !737)
  !737 = !{!689, !145, !145, !706}
  !738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !739, file: !678, line: 115)
  !739 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !681, file: !681, line: 434, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !678, line: 116)
  !741 = !DISubprogram(name: "fseek", scope: !681, file: !681, line: 713, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !742 = !DISubroutineType(types: !743)
  !743 = !{!21, !689, !74, !21}
  !744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !678, line: 117)
  !745 = !DISubprogram(name: "fsetpos", scope: !681, file: !681, line: 765, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !746 = !DISubroutineType(types: !747)
  !747 = !{!21, !689, !748}
  !748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
  !749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
  !750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !751, file: !678, line: 118)
  !751 = !DISubprogram(name: "ftell", scope: !681, file: !681, line: 718, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !752 = !DISubroutineType(types: !753)
  !753 = !{!74, !689}
  !754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !678, line: 119)
  !755 = !DISubprogram(name: "fwrite", scope: !681, file: !681, line: 681, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !756 = !DISubroutineType(types: !757)
  !757 = !{!98, !758, !98, !98, !706}
  !758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !538)
  !759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !760, file: !678, line: 120)
  !760 = !DISubprogram(name: "getc", scope: !681, file: !681, line: 514, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !678, line: 121)
  !762 = !DISubprogram(name: "getchar", scope: !763, file: !763, line: 47, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !763 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
  !764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !765, file: !678, line: 126)
  !765 = !DISubprogram(name: "perror", scope: !681, file: !681, line: 804, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !766 = !DISubroutineType(types: !767)
  !767 = !{null, !146}
  !768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !678, line: 127)
  !769 = !DISubprogram(name: "printf", scope: !681, file: !681, line: 356, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !770 = !DISubroutineType(types: !771)
  !771 = !{!21, !145, null}
  !772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !678, line: 128)
  !773 = !DISubprogram(name: "putc", scope: !681, file: !681, line: 550, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !678, line: 129)
  !775 = !DISubprogram(name: "putchar", scope: !763, file: !763, line: 82, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !777, file: !678, line: 130)
  !777 = !DISubprogram(name: "puts", scope: !681, file: !681, line: 661, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !678, line: 131)
  !779 = !DISubprogram(name: "remove", scope: !681, file: !681, line: 152, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !678, line: 132)
  !781 = !DISubprogram(name: "rename", scope: !681, file: !681, line: 154, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !782 = !DISubroutineType(types: !783)
  !783 = !{!21, !146, !146}
  !784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !678, line: 133)
  !785 = !DISubprogram(name: "rewind", scope: !681, file: !681, line: 723, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !787, file: !678, line: 134)
  !787 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !681, file: !681, line: 437, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !789, file: !678, line: 135)
  !789 = !DISubprogram(name: "setbuf", scope: !681, file: !681, line: 328, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !790 = !DISubroutineType(types: !791)
  !791 = !{null, !706, !216}
  !792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !793, file: !678, line: 136)
  !793 = !DISubprogram(name: "setvbuf", scope: !681, file: !681, line: 332, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !794 = !DISubroutineType(types: !795)
  !795 = !{!21, !706, !216, !21, !98}
  !796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !797, file: !678, line: 137)
  !797 = !DISubprogram(name: "sprintf", scope: !681, file: !681, line: 358, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !798 = !DISubroutineType(types: !799)
  !799 = !{!21, !216, !145, null}
  !800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !801, file: !678, line: 138)
  !801 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !681, file: !681, line: 439, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !802 = !DISubroutineType(types: !803)
  !803 = !{!21, !145, !145, null}
  !804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !805, file: !678, line: 139)
  !805 = !DISubprogram(name: "tmpfile", scope: !681, file: !681, line: 188, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !806 = !DISubroutineType(types: !807)
  !807 = !{!689}
  !808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !678, line: 141)
  !809 = !DISubprogram(name: "tmpnam", scope: !681, file: !681, line: 205, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !810 = !DISubroutineType(types: !811)
  !811 = !{!53, !53}
  !812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !813, file: !678, line: 143)
  !813 = !DISubprogram(name: "ungetc", scope: !681, file: !681, line: 668, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !678, line: 144)
  !815 = !DISubprogram(name: "vfprintf", scope: !681, file: !681, line: 365, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !816 = !DISubroutineType(types: !817)
  !817 = !{!21, !706, !145, !188}
  !818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !678, line: 145)
  !819 = !DISubprogram(name: "vprintf", scope: !763, file: !763, line: 39, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !820 = !DISubroutineType(types: !821)
  !821 = !{!21, !145, !188}
  !822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !678, line: 146)
  !823 = !DISubprogram(name: "vsprintf", scope: !681, file: !681, line: 373, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !824 = !DISubroutineType(types: !825)
  !825 = !{!21, !216, !145, !188}
  !826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !827, file: !678, line: 175)
  !827 = !DISubprogram(name: "snprintf", scope: !681, file: !681, line: 378, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !828 = !DISubroutineType(types: !829)
  !829 = !{!21, !216, !98, !145, null}
  !830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !831, file: !678, line: 176)
  !831 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !681, file: !681, line: 479, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !833, file: !678, line: 177)
  !833 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !681, file: !681, line: 484, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !835, file: !678, line: 178)
  !835 = !DISubprogram(name: "vsnprintf", scope: !681, file: !681, line: 382, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !836 = !DISubroutineType(types: !837)
  !837 = !{!21, !216, !98, !145, !188}
  !838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !839, file: !678, line: 179)
  !839 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !681, file: !681, line: 487, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !840 = !DISubroutineType(types: !841)
  !841 = !{!21, !145, !145, !188}
  !842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !678, line: 185)
  !843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !678, line: 186)
  !844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !678, line: 187)
  !845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !678, line: 188)
  !846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !678, line: 189)
  !847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !848, file: !852, line: 82)
  !848 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !849, line: 48, baseType: !850)
  !849 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
  !850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
  !851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
  !852 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
  !853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !852, line: 83)
  !854 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !855, line: 38, baseType: !100)
  !855 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
  !856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !34, file: !852, line: 84)
  !857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !852, line: 86)
  !858 = !DISubprogram(name: "iswalnum", scope: !855, file: !855, line: 95, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !852, line: 87)
  !860 = !DISubprogram(name: "iswalpha", scope: !855, file: !855, line: 101, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !852, line: 89)
  !862 = !DISubprogram(name: "iswblank", scope: !855, file: !855, line: 146, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !864, file: !852, line: 91)
  !864 = !DISubprogram(name: "iswcntrl", scope: !855, file: !855, line: 104, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !866, file: !852, line: 92)
  !866 = !DISubprogram(name: "iswctype", scope: !855, file: !855, line: 159, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !867 = !DISubroutineType(types: !868)
  !868 = !{!21, !34, !854}
  !869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !870, file: !852, line: 93)
  !870 = !DISubprogram(name: "iswdigit", scope: !855, file: !855, line: 108, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !872, file: !852, line: 94)
  !872 = !DISubprogram(name: "iswgraph", scope: !855, file: !855, line: 112, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !874, file: !852, line: 95)
  !874 = !DISubprogram(name: "iswlower", scope: !855, file: !855, line: 117, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !876, file: !852, line: 96)
  !876 = !DISubprogram(name: "iswprint", scope: !855, file: !855, line: 120, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !878, file: !852, line: 97)
  !878 = !DISubprogram(name: "iswpunct", scope: !855, file: !855, line: 125, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !880, file: !852, line: 98)
  !880 = !DISubprogram(name: "iswspace", scope: !855, file: !855, line: 130, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !882, file: !852, line: 99)
  !882 = !DISubprogram(name: "iswupper", scope: !855, file: !855, line: 135, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !884, file: !852, line: 100)
  !884 = !DISubprogram(name: "iswxdigit", scope: !855, file: !855, line: 140, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !886, file: !852, line: 101)
  !886 = !DISubprogram(name: "towctrans", scope: !849, file: !849, line: 55, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !887 = !DISubroutineType(types: !888)
  !888 = !{!34, !34, !848}
  !889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !852, line: 102)
  !890 = !DISubprogram(name: "towlower", scope: !855, file: !855, line: 166, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !891 = !DISubroutineType(types: !892)
  !892 = !{!34, !34}
  !893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !852, line: 103)
  !894 = !DISubprogram(name: "towupper", scope: !855, file: !855, line: 169, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !896, file: !852, line: 104)
  !896 = !DISubprogram(name: "wctrans", scope: !849, file: !849, line: 52, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !897 = !DISubroutineType(types: !898)
  !898 = !{!848, !146}
  !899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !900, file: !852, line: 105)
  !900 = !DISubprogram(name: "wctype", scope: !855, file: !855, line: 155, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !901 = !DISubroutineType(types: !902)
  !902 = !{!854, !146}
  !903 = !{i32 7, !"Dwarf Version", i32 5}
  !904 = !{i32 2, !"Debug Info Version", i32 3}
  !905 = !{i32 1, !"wchar_size", i32 4}
  !906 = !{i32 8, !"PIC Level", i32 2}
  !907 = !{i32 7, !"PIE Level", i32 2}
  !908 = !{i32 7, !"uwtable", i32 2}
  !909 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
  !910 = !{!"clang version 17.0.0 (https://github.com/Lule321/llvm-project.git e27f13ece434a3f5a9ec3e650bcc3f2057e7e92a)"}
  !911 = distinct !DISubprogram(name: "g", linkageName: "_Z1gii", scope: !8, file: !8, line: 3, type: !912, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !914)
  !912 = !DISubroutineType(types: !913)
  !913 = !{!21, !21, !21}
  !914 = !{!915, !916, !917, !918}
  !915 = !DILocalVariable(name: "a", arg: 1, scope: !911, file: !8, line: 3, type: !21)
  !916 = !DILocalVariable(name: "b", arg: 2, scope: !911, file: !8, line: 3, type: !21)
  !917 = !DILocalVariable(name: "c", scope: !911, file: !8, line: 5, type: !21)
  !918 = !DILocalVariable(name: "d", scope: !911, file: !8, line: 6, type: !21)
  !919 = !DILocation(line: 0, scope: !911)
  !920 = !DILocation(line: 5, column: 19, scope: !911)
  !921 = !DILocation(line: 6, column: 15, scope: !911)
  !922 = !DILocation(line: 9, column: 14, scope: !911)
  !923 = !DILocation(line: 9, column: 5, scope: !911)
  !924 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 12, type: !594, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !925)
  !925 = !{!926, !927}
  !926 = !DILocalVariable(name: "a", scope: !924, file: !8, line: 14, type: !21)
  !927 = !DILocalVariable(name: "b", scope: !924, file: !8, line: 15, type: !21)
  !928 = !DILocation(line: 0, scope: !924)
  !929 = !DILocation(line: 16, column: 15, scope: !924)
  !930 = !DILocalVariable(name: "this", arg: 1, scope: !931, type: !946, flags: DIFlagArtificial | DIFlagObjectPointer)
  !931 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !933, file: !932, line: 108, type: !935, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, declaration: !943, retainedNodes: !944)
  !932 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ostream", directory: "")
  !933 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !934, line: 359, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
  !934 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ostream.tcc", directory: "")
  !935 = !DISubroutineType(types: !936)
  !936 = !{!937, !939, !940}
  !937 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !938, size: 64)
  !938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !933, file: !932, line: 71, baseType: !933, flags: DIFlagPublic)
  !939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
  !940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
  !941 = !DISubroutineType(types: !942)
  !942 = !{!937, !937}
  !943 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !933, file: !932, line: 108, type: !935, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !944 = !{!930, !945}
  !945 = !DILocalVariable(name: "__pf", arg: 2, scope: !931, file: !932, line: 108, type: !940)
  !946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
  !947 = !DILocation(line: 0, scope: !931, inlinedAt: !948)
  !948 = distinct !DILocation(line: 16, column: 24, scope: !924)
  !949 = !{}
  !950 = !DILocalVariable(name: "__os", arg: 1, scope: !951, file: !932, line: 684, type: !954)
  !951 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", linkageName: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !932, line: 684, type: !952, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !956, retainedNodes: !955)
  !952 = !DISubroutineType(types: !953)
  !953 = !{!954, !954}
  !954 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !933, size: 64)
  !955 = !{!950}
  !956 = !{!957, !958}
  !957 = !DITemplateTypeParameter(name: "_CharT", type: !29)
  !958 = !DITemplateTypeParameter(name: "_Traits", type: !959)
  !959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !2, file: !960, line: 344, size: 8, flags: DIFlagTypePassByValue, elements: !961, templateParams: !1012, identifier: "_ZTSSt11char_traitsIcE")
  !960 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/char_traits.h", directory: "")
  !961 = !{!962, !969, !973, !974, !980, !983, !986, !990, !991, !994, !1000, !1003, !1006, !1009}
  !962 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !959, file: !960, line: 356, type: !963, scopeLine: 356, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !963 = !DISubroutineType(types: !964)
  !964 = !{null, !965, !967}
  !965 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !966, size: 64)
  !966 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !959, file: !960, line: 346, baseType: !29)
  !967 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !968, size: 64)
  !968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
  !969 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !959, file: !960, line: 360, type: !970, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !970 = !DISubroutineType(types: !971)
  !971 = !{!972, !967, !967}
  !972 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
  !973 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !959, file: !960, line: 364, type: !970, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !974 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !959, file: !960, line: 372, type: !975, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !975 = !DISubroutineType(types: !976)
  !976 = !{!21, !977, !977, !978}
  !977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
  !978 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !979, line: 280, baseType: !100)
  !979 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "d9294f9cb0373a66e884afbcfebe7887")
  !980 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !959, file: !960, line: 393, type: !981, scopeLine: 393, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !981 = !DISubroutineType(types: !982)
  !982 = !{!978, !977}
  !983 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !959, file: !960, line: 403, type: !984, scopeLine: 403, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !984 = !DISubroutineType(types: !985)
  !985 = !{!977, !977, !978, !967}
  !986 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !959, file: !960, line: 417, type: !987, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !987 = !DISubroutineType(types: !988)
  !988 = !{!989, !989, !977, !978}
  !989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
  !990 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !959, file: !960, line: 429, type: !987, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !991 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !959, file: !960, line: 441, type: !992, scopeLine: 441, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !992 = !DISubroutineType(types: !993)
  !993 = !{!989, !989, !978, !966}
  !994 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !959, file: !960, line: 453, type: !995, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !995 = !DISubroutineType(types: !996)
  !996 = !{!966, !997}
  !997 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !998, size: 64)
  !998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
  !999 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !959, file: !960, line: 347, baseType: !21)
  !1000 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !959, file: !960, line: 459, type: !1001, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !1001 = !DISubroutineType(types: !1002)
  !1002 = !{!999, !967}
  !1003 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !959, file: !960, line: 463, type: !1004, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !1004 = !DISubroutineType(types: !1005)
  !1005 = !{!972, !997, !997}
  !1006 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !959, file: !960, line: 467, type: !1007, scopeLine: 467, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !1007 = !DISubroutineType(types: !1008)
  !1008 = !{!999}
  !1009 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !959, file: !960, line: 471, type: !1010, scopeLine: 471, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
  !1010 = !DISubroutineType(types: !1011)
  !1011 = !{!999, !997}
  !1012 = !{!957}
  !1013 = !DILocation(line: 0, scope: !951, inlinedAt: !1014)
  !1014 = distinct !DILocation(line: 113, column: 9, scope: !931, inlinedAt: !948)
  !1015 = !DILocation(line: 685, column: 29, scope: !951, inlinedAt: !1014)
  !1016 = !{!1017, !1017, i64 0}
  !1017 = !{!"vtable pointer", !1018, i64 0}
  !1018 = !{!"Simple C++ TBAA"}
  !1019 = !DILocalVariable(name: "this", arg: 1, scope: !1020, type: !1032, flags: DIFlagArtificial | DIFlagObjectPointer)
  !1020 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1022, file: !1021, line: 449, type: !1024, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, declaration: !1029, retainedNodes: !1030)
  !1021 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_ios.h", directory: "")
  !1022 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !2, file: !1023, line: 178, size: 2112, flags: DIFlagFwdDecl | DIFlagNonTrivial)
  !1023 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_ios.tcc", directory: "")
  !1024 = !DISubroutineType(types: !1025)
  !1025 = !{!1026, !1027, !29}
  !1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1022, file: !1021, line: 76, baseType: !29, flags: DIFlagPublic)
  !1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
  !1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
  !1029 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1022, file: !1021, line: 449, type: !1024, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !1030 = !{!1019, !1031}
  !1031 = !DILocalVariable(name: "__c", arg: 2, scope: !1020, file: !1021, line: 449, type: !29)
  !1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
  !1033 = !DILocation(line: 0, scope: !1020, inlinedAt: !1034)
  !1034 = distinct !DILocation(line: 685, column: 34, scope: !951, inlinedAt: !1014)
  !1035 = !DILocation(line: 450, column: 30, scope: !1020, inlinedAt: !1034)
  !1036 = !{!1037, !1043, i64 240}
  !1037 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1038, i64 0, !1043, i64 216, !1040, i64 224, !1047, i64 225, !1043, i64 232, !1043, i64 240, !1043, i64 248, !1043, i64 256}
  !1038 = !{!"_ZTSSt8ios_base", !1039, i64 8, !1039, i64 16, !1041, i64 24, !1042, i64 28, !1042, i64 32, !1043, i64 40, !1044, i64 48, !1040, i64 64, !1045, i64 192, !1043, i64 200, !1046, i64 208}
  !1039 = !{!"long", !1040, i64 0}
  !1040 = !{!"omnipotent char", !1018, i64 0}
  !1041 = !{!"_ZTSSt13_Ios_Fmtflags", !1040, i64 0}
  !1042 = !{!"_ZTSSt12_Ios_Iostate", !1040, i64 0}
  !1043 = !{!"any pointer", !1040, i64 0}
  !1044 = !{!"_ZTSNSt8ios_base6_WordsE", !1043, i64 0, !1039, i64 8}
  !1045 = !{!"int", !1040, i64 0}
  !1046 = !{!"_ZTSSt6locale", !1043, i64 0}
  !1047 = !{!"bool", !1040, i64 0}
  !1048 = !DILocalVariable(name: "__f", arg: 1, scope: !1049, file: !1021, line: 47, type: !1056)
  !1049 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !2, file: !1021, line: 47, type: !1050, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !1058, retainedNodes: !1057)
  !1050 = !DISubroutineType(types: !1051)
  !1051 = !{!1052, !1056}
  !1052 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1053, size: 64)
  !1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
  !1054 = !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !2, file: !1055, line: 684, size: 4608, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt5ctypeIcE")
  !1055 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/locale_facets.h", directory: "")
  !1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
  !1057 = !{!1048}
  !1058 = !{!1059}
  !1059 = !DITemplateTypeParameter(name: "_Facet", type: !1054)
  !1060 = !DILocation(line: 0, scope: !1049, inlinedAt: !1061)
  !1061 = distinct !DILocation(line: 450, column: 16, scope: !1020, inlinedAt: !1034)
  !1062 = !DILocation(line: 49, column: 12, scope: !1063, inlinedAt: !1061)
  !1063 = distinct !DILexicalBlock(scope: !1049, file: !1021, line: 49, column: 11)
  !1064 = !DILocation(line: 49, column: 11, scope: !1049, inlinedAt: !1061)
  !1065 = !DILocation(line: 50, column: 2, scope: !1063, inlinedAt: !1061)
  !1066 = !DILocalVariable(name: "this", arg: 1, scope: !1067, type: !1056, flags: DIFlagArtificial | DIFlagObjectPointer)
  !1067 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1054, file: !1055, line: 875, type: !1068, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, declaration: !1072, retainedNodes: !1073)
  !1068 = !DISubroutineType(types: !1069)
  !1069 = !{!1070, !1071, !29}
  !1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1054, file: !1055, line: 689, baseType: !29, flags: DIFlagPublic)
  !1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
  !1072 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1054, file: !1055, line: 875, type: !1068, scopeLine: 875, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
  !1073 = !{!1066, !1074}
  !1074 = !DILocalVariable(name: "__c", arg: 2, scope: !1067, file: !1055, line: 875, type: !29)
  !1075 = !DILocation(line: 0, scope: !1067, inlinedAt: !1076)
  !1076 = distinct !DILocation(line: 450, column: 40, scope: !1020, inlinedAt: !1034)
  !1077 = !DILocation(line: 877, column: 6, scope: !1078, inlinedAt: !1076)
  !1078 = distinct !DILexicalBlock(scope: !1067, file: !1055, line: 877, column: 6)
  !1079 = !{!1080, !1040, i64 56}
  !1080 = !{!"_ZTSSt5ctypeIcE", !1081, i64 0, !1043, i64 16, !1047, i64 24, !1043, i64 32, !1043, i64 40, !1043, i64 48, !1040, i64 56, !1040, i64 57, !1040, i64 313, !1040, i64 569}
  !1081 = !{!"_ZTSNSt6locale5facetE", !1045, i64 8}
  !1082 = !DILocation(line: 877, column: 6, scope: !1067, inlinedAt: !1076)
  !1083 = !DILocation(line: 878, column: 11, scope: !1078, inlinedAt: !1076)
  !1084 = !{!1040, !1040, i64 0}
  !1085 = !DILocation(line: 878, column: 4, scope: !1078, inlinedAt: !1076)
  !1086 = !DILocation(line: 879, column: 8, scope: !1067, inlinedAt: !1076)
  !1087 = !DILocation(line: 880, column: 15, scope: !1067, inlinedAt: !1076)
  !1088 = !DILocation(line: 880, column: 2, scope: !1067, inlinedAt: !1076)
  !1089 = !DILocation(line: 685, column: 25, scope: !951, inlinedAt: !1014)
  !1090 = !DILocalVariable(name: "__os", arg: 1, scope: !1091, file: !932, line: 706, type: !954)
  !1091 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !932, line: 706, type: !952, scopeLine: 707, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !956, retainedNodes: !1092)
  !1092 = !{!1090}
  !1093 = !DILocation(line: 0, scope: !1091, inlinedAt: !1094)
  !1094 = distinct !DILocation(line: 685, column: 14, scope: !951, inlinedAt: !1014)
  !1095 = !DILocation(line: 707, column: 19, scope: !1091, inlinedAt: !1094)
  !1096 = !DILocation(line: 17, column: 15, scope: !924)
  !1097 = !DILocation(line: 0, scope: !931, inlinedAt: !1098)
  !1098 = distinct !DILocation(line: 17, column: 26, scope: !924)
  !1099 = !DILocation(line: 0, scope: !951, inlinedAt: !1100)
  !1100 = distinct !DILocation(line: 113, column: 9, scope: !931, inlinedAt: !1098)
  !1101 = !DILocation(line: 685, column: 29, scope: !951, inlinedAt: !1100)
  !1102 = !DILocation(line: 0, scope: !1020, inlinedAt: !1103)
  !1103 = distinct !DILocation(line: 685, column: 34, scope: !951, inlinedAt: !1100)
  !1104 = !DILocation(line: 450, column: 30, scope: !1020, inlinedAt: !1103)
  !1105 = !DILocation(line: 0, scope: !1049, inlinedAt: !1106)
  !1106 = distinct !DILocation(line: 450, column: 16, scope: !1020, inlinedAt: !1103)
  !1107 = !DILocation(line: 49, column: 12, scope: !1063, inlinedAt: !1106)
  !1108 = !DILocation(line: 49, column: 11, scope: !1049, inlinedAt: !1106)
  !1109 = !DILocation(line: 50, column: 2, scope: !1063, inlinedAt: !1106)
  !1110 = !DILocation(line: 0, scope: !1067, inlinedAt: !1111)
  !1111 = distinct !DILocation(line: 450, column: 40, scope: !1020, inlinedAt: !1103)
  !1112 = !DILocation(line: 877, column: 6, scope: !1078, inlinedAt: !1111)
  !1113 = !DILocation(line: 877, column: 6, scope: !1067, inlinedAt: !1111)
  !1114 = !DILocation(line: 878, column: 11, scope: !1078, inlinedAt: !1111)
  !1115 = !DILocation(line: 878, column: 4, scope: !1078, inlinedAt: !1111)
  !1116 = !DILocation(line: 879, column: 8, scope: !1067, inlinedAt: !1111)
  !1117 = !DILocation(line: 880, column: 15, scope: !1067, inlinedAt: !1111)
  !1118 = !DILocation(line: 880, column: 2, scope: !1067, inlinedAt: !1111)
  !1119 = !DILocation(line: 685, column: 25, scope: !951, inlinedAt: !1100)
  !1120 = !DILocation(line: 0, scope: !1091, inlinedAt: !1121)
  !1121 = distinct !DILocation(line: 685, column: 14, scope: !951, inlinedAt: !1100)
  !1122 = !DILocation(line: 707, column: 19, scope: !1091, inlinedAt: !1121)
  !1123 = !DILocation(line: 19, column: 5, scope: !924)
  !1124 = !DISubprogram(name: "__throw_bad_cast", linkageName: "_ZSt16__throw_bad_castv", scope: !2, file: !1125, line: 59, type: !507, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !949)
  !1125 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/functexcept.h", directory: "", checksumkind: CSK_MD5, checksum: "dd8a128f529a9f6f73237a176e7299bc")
  !1126 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_dbg_info_print.cpp", scope: !192, file: !192, type: !1127, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !949)
  !1127 = !DISubroutineType(types: !949)
  !1128 = !DILocation(line: 74, column: 25, scope: !1129, inlinedAt: !1131)
  !1129 = !DILexicalBlockFile(scope: !1130, file: !3, discriminator: 0)
  !1130 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !192, file: !192, type: !507, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !949)
  !1131 = distinct !DILocation(line: 0, scope: !1126)
  !1132 = !DILocation(line: 0, scope: !1130, inlinedAt: !1131)

...
---
name:            _Z1gii
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
callsEHReturn:   false
callsUnwindInit: false
hasEHCatchret:   false
hasEHScopes:     false
hasEHFunclets:   false
isOutlined:      false
debugInstrRef:   true
failsVerification: false
tracksDebugUserValues: true
registers:       []
liveins:
  - { reg: '$edi', virtual-reg: '' }
  - { reg: '$esi', virtual-reg: '' }
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       0
  offsetAdjustment: 0
  maxAlignment:    1
  adjustsStack:    false
  hasCalls:        false
  stackProtector:  ''
  functionContext: ''
  maxCallFrameSize: 0
  cvBytesOfCalleeSavedRegisters: 0
  hasOpaqueSPAdjustment: false
  hasVAStart:      false
  hasMustTailInVarArgFunc: false
  hasTailCall:     false
  localFrameSize:  0
  savePoint:       ''
  restorePoint:    ''
fixedStack:      []
stack:           []
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.2):
    liveins: $edi, $esi
  
    DBG_VALUE $edi, $noreg, !915, !DIExpression(), debug-location !919
    DBG_VALUE $esi, $noreg, !916, !DIExpression(), debug-location !919
    DBG_PHI $edi, 2
    renamable $edi = KILL $edi, implicit-def $rdi
    renamable $eax = COPY renamable $esi, implicit-def $rax, debug-location !920
    renamable $eax = nsw IMUL32rr renamable $eax, renamable $edi, implicit-def dead $eflags, implicit killed $rax, implicit-def $rax, debug-instr-number 1, debug-location !920
    DBG_INSTR_REF !917, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 6, DW_OP_stack_value), dbg-instr-ref(1, 0), debug-location !919
    DBG_INSTR_REF !915, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 3, DW_OP_stack_value), dbg-instr-ref(2, 0), debug-location !919
    renamable $edi = ADD32rr renamable $edi, killed renamable $esi, implicit-def dead $eflags, implicit killed $rdi, implicit-def $rdi, debug-location !921
    renamable $eax = LEA64_32r killed renamable $rax, 1, killed renamable $rdi, 16, $noreg, debug-location !922
    RET 0, $eax, debug-location !923

...
---
name:            main
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
callsEHReturn:   false
callsUnwindInit: false
hasEHCatchret:   false
hasEHScopes:     false
hasEHFunclets:   false
isOutlined:      false
debugInstrRef:   true
failsVerification: false
tracksDebugUserValues: true
registers:       []
liveins:         []
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       24
  offsetAdjustment: -24
  maxAlignment:    16
  adjustsStack:    true
  hasCalls:        true
  stackProtector:  ''
  functionContext: ''
  maxCallFrameSize: 0
  cvBytesOfCalleeSavedRegisters: 16
  hasOpaqueSPAdjustment: false
  hasVAStart:      false
  hasMustTailInVarArgFunc: false
  hasTailCall:     false
  localFrameSize:  0
  savePoint:       ''
  restorePoint:    ''
fixedStack:
  - { id: 0, type: spill-slot, offset: -16, size: 8, alignment: 16, stack-id: default, 
      callee-saved-register: '$r14', callee-saved-restored: true, debug-info-variable: '', 
      debug-info-expression: '', debug-info-location: '' }
  - { id: 1, type: spill-slot, offset: -24, size: 8, alignment: 8, stack-id: default, 
      callee-saved-register: '$rbx', callee-saved-restored: true, debug-info-variable: '', 
      debug-info-expression: '', debug-info-location: '' }
stack:           []
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.0):
    successors: %bb.9(0x00000800), %bb.1(0x7ffff800)
    liveins: $r14, $rbx
  
    frame-setup PUSH64r killed $r14, implicit-def $rsp, implicit $rsp, debug-location !929
    frame-setup CFI_INSTRUCTION def_cfa_offset 16
    frame-setup PUSH64r killed $rbx, implicit-def $rsp, implicit $rsp, debug-location !929
    frame-setup CFI_INSTRUCTION def_cfa_offset 24
    frame-setup PUSH64r undef $rax, implicit-def $rsp, implicit $rsp
    frame-setup CFI_INSTRUCTION def_cfa_offset 32
    CFI_INSTRUCTION offset $rbx, -24
    CFI_INSTRUCTION offset $r14, -16
    DBG_VALUE 2, $noreg, !926, !DIExpression(), debug-location !928
    DBG_VALUE 3, $noreg, !927, !DIExpression(), debug-location !928
    renamable $rdi = MOV64rm $rip, 1, $noreg, target-flags(x86-gotpcrel) @_ZSt4cout, $noreg, debug-location !929 :: (load (s64) from got)
    $esi = MOV32ri 5, debug-location !929
    CALL64pcrel32 target-flags(x86-plt) @_ZNSolsEi, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax, debug-instr-number 3, debug-location !929
    renamable $rbx = COPY $rax, debug-location !929
    DBG_INSTR_REF !930, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(3, 8), debug-location !947
    DBG_INSTR_REF !950, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(3, 8), debug-location !1013
    renamable $rax = MOV64rm $rax, 1, $noreg, 0, $noreg, debug-location !1015 :: (dereferenceable load (s64) from %ir.1, !tbaa !1016)
    renamable $rax = MOV64rm killed renamable $rax, 1, $noreg, -24, $noreg, debug-location !1015 :: (load (s64) from %ir.3)
    DBG_VALUE $noreg, $noreg, !1019, !DIExpression(), debug-location !1033
    DBG_VALUE 10, $noreg, !1031, !DIExpression(), debug-location !1033
    renamable $r14 = MOV64rm renamable $rbx, 1, killed renamable $rax, 240, $noreg, debug-instr-number 1, debug-location !1035 :: (load (s64) from %ir.6, !tbaa !1036)
    DBG_INSTR_REF !1048, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(1, 0), debug-location !1060
    TEST64rr renamable $r14, renamable $r14, implicit-def $eflags, debug-location !1062
    JCC_1 %bb.9, 4, implicit $eflags, debug-location !1064
  
  bb.1 (%ir-block.10):
    successors: %bb.3(0x30000000), %bb.2(0x50000000)
    liveins: $rbx, $r14
  
    DBG_INSTR_REF !1066, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(1, 0), debug-location !1075
    DBG_VALUE 10, $noreg, !1074, !DIExpression(), debug-location !1075
    CMP8mi renamable $r14, 1, $noreg, 56, $noreg, 0, implicit-def $eflags, debug-location !1077 :: (load (s8) from %ir.11, align 8, !tbaa !1079)
    JCC_1 %bb.3, 4, implicit killed $eflags, debug-location !1082
  
  bb.2 (%ir-block.14):
    successors: %bb.4(0x80000000)
    liveins: $rbx, $r14
  
    renamable $al = MOV8rm killed renamable $r14, 1, $noreg, 67, $noreg, debug-location !1083 :: (load (s8) from %ir.15, !tbaa !1084)
    JMP_1 %bb.4
  
  bb.3 (%ir-block.17):
    successors: %bb.4(0x80000000)
    liveins: $rbx, $r14
  
    $rdi = COPY renamable $r14, debug-location !1086
    CALL64pcrel32 target-flags(x86-plt) @_ZNKSt5ctypeIcE13_M_widen_initEv, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp, debug-location !1086
    renamable $rax = MOV64rm renamable $r14, 1, $noreg, 0, $noreg, debug-location !1087 :: (load (s64) from %ir.7, !tbaa !1016)
    $rdi = COPY killed renamable $r14, debug-location !1087
    $esi = MOV32ri 10, debug-location !1087
    CALL64m killed renamable $rax, 1, $noreg, 48, $noreg, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $al, debug-location !1087 :: (load (s64) from %ir.19)
  
  bb.4 (%ir-block.22):
    successors: %bb.9(0x00000800), %bb.5(0x7ffff800)
    liveins: $al, $rbx
  
    renamable $esi = MOVSX32rr8 killed renamable $al, debug-location !1089
    $rdi = COPY killed renamable $rbx, debug-location !1089
    CALL64pcrel32 target-flags(x86-plt) @_ZNSo3putEc, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax, debug-instr-number 4, debug-location !1089
    DBG_INSTR_REF !1090, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(4, 8), debug-location !1093
    $rdi = COPY killed renamable $rax, debug-location !1095
    CALL64pcrel32 target-flags(x86-plt) @_ZNSo5flushEv, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax, debug-location !1095
    renamable $rdi = MOV64rm $rip, 1, $noreg, target-flags(x86-gotpcrel) @_ZSt4cout, $noreg, debug-location !1096 :: (load (s64) from got)
    $esi = MOV32ri 27, debug-location !1096
    CALL64pcrel32 target-flags(x86-plt) @_ZNSolsEi, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax, debug-instr-number 5, debug-location !1096
    renamable $rbx = COPY $rax, debug-location !1096
    DBG_INSTR_REF !930, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(5, 8), debug-location !1097
    DBG_INSTR_REF !950, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(5, 8), debug-location !1099
    renamable $rax = MOV64rm $rax, 1, $noreg, 0, $noreg, debug-location !1101 :: (dereferenceable load (s64) from %ir.26, !tbaa !1016)
    renamable $rax = MOV64rm killed renamable $rax, 1, $noreg, -24, $noreg, debug-location !1101 :: (load (s64) from %ir.28)
    DBG_VALUE $noreg, $noreg, !1019, !DIExpression(), debug-location !1102
    DBG_VALUE 10, $noreg, !1031, !DIExpression(), debug-location !1102
    renamable $r14 = MOV64rm renamable $rbx, 1, killed renamable $rax, 240, $noreg, debug-instr-number 2, debug-location !1104 :: (load (s64) from %ir.31, !tbaa !1036)
    DBG_INSTR_REF !1048, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(2, 0), debug-location !1105
    TEST64rr renamable $r14, renamable $r14, implicit-def $eflags, debug-location !1107
    JCC_1 %bb.9, 4, implicit $eflags, debug-location !1108
  
  bb.5 (%ir-block.35):
    successors: %bb.7(0x30000000), %bb.6(0x50000000)
    liveins: $rbx, $r14
  
    DBG_INSTR_REF !1066, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(2, 0), debug-location !1110
    DBG_VALUE 10, $noreg, !1074, !DIExpression(), debug-location !1110
    CMP8mi renamable $r14, 1, $noreg, 56, $noreg, 0, implicit-def $eflags, debug-location !1112 :: (load (s8) from %ir.36, align 8, !tbaa !1079)
    JCC_1 %bb.7, 4, implicit killed $eflags, debug-location !1113
  
  bb.6 (%ir-block.39):
    successors: %bb.8(0x80000000)
    liveins: $rbx, $r14
  
    renamable $al = MOV8rm killed renamable $r14, 1, $noreg, 67, $noreg, debug-location !1114 :: (load (s8) from %ir.40, !tbaa !1084)
    JMP_1 %bb.8
  
  bb.7 (%ir-block.42):
    successors: %bb.8(0x80000000)
    liveins: $rbx, $r14
  
    $rdi = COPY renamable $r14, debug-location !1116
    CALL64pcrel32 target-flags(x86-plt) @_ZNKSt5ctypeIcE13_M_widen_initEv, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp, debug-location !1116
    renamable $rax = MOV64rm renamable $r14, 1, $noreg, 0, $noreg, debug-location !1117 :: (load (s64) from %ir.32, !tbaa !1016)
    $rdi = COPY killed renamable $r14, debug-location !1117
    $esi = MOV32ri 10, debug-location !1117
    CALL64m killed renamable $rax, 1, $noreg, 48, $noreg, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $al, debug-location !1117 :: (load (s64) from %ir.44)
  
  bb.8 (%ir-block.47):
    liveins: $al, $rbx
  
    renamable $esi = MOVSX32rr8 killed renamable $al, debug-location !1119
    $rdi = COPY killed renamable $rbx, debug-location !1119
    CALL64pcrel32 target-flags(x86-plt) @_ZNSo3putEc, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax, debug-instr-number 6, debug-location !1119
    DBG_INSTR_REF !1090, !DIExpression(DW_OP_LLVM_arg, 0), dbg-instr-ref(6, 8), debug-location !1120
    $rdi = COPY killed renamable $rax, debug-location !1122
    CALL64pcrel32 target-flags(x86-plt) @_ZNSo5flushEv, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax, debug-location !1122
    $eax = MOV32r0 implicit-def dead $eflags, debug-location !1123
    $rsp = frame-destroy ADD64ri8 $rsp, 8, implicit-def dead $eflags, debug-location !1123
    frame-destroy CFI_INSTRUCTION def_cfa_offset 24, debug-location !1123
    $rbx = frame-destroy POP64r implicit-def $rsp, implicit $rsp, debug-location !1123
    frame-destroy CFI_INSTRUCTION def_cfa_offset 16, debug-location !1123
    $r14 = frame-destroy POP64r implicit-def $rsp, implicit $rsp, debug-location !1123
    frame-destroy CFI_INSTRUCTION def_cfa_offset 8, debug-location !1123
    RET 0, $eax, debug-location !1123
  
  bb.9 (%ir-block.9):
    CALL64pcrel32 target-flags(x86-plt) @_ZSt16__throw_bad_castv, csr_64, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp, debug-location !DILocation(line: 50, column: 2, scope: !1063, inlinedAt: !DILocation(line: 450, column: 16, scope: !1020, inlinedAt: !DILocation(line: 685, column: 34, scope: !951, inlinedAt: !DILocation(line: 113, column: 9, scope: !931, inlinedAt: !928))))

...
---
name:            _GLOBAL__sub_I_dbg_info_print.cpp
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
callsEHReturn:   false
callsUnwindInit: false
hasEHCatchret:   false
hasEHScopes:     false
hasEHFunclets:   false
isOutlined:      false
debugInstrRef:   true
failsVerification: false
tracksDebugUserValues: true
registers:       []
liveins:         []
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       8
  offsetAdjustment: -8
  maxAlignment:    1
  adjustsStack:    true
  hasCalls:        true
  stackProtector:  ''
  functionContext: ''
  maxCallFrameSize: 0
  cvBytesOfCalleeSavedRegisters: 0
  hasOpaqueSPAdjustment: false
  hasVAStart:      false
  hasMustTailInVarArgFunc: false
  hasTailCall:     true
  localFrameSize:  0
  savePoint:       ''
  restorePoint:    ''
fixedStack:      []
stack:           []
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.0):
    frame-setup PUSH64r undef $rax, implicit-def $rsp, implicit $rsp
    frame-setup CFI_INSTRUCTION def_cfa_offset 16
    $rdi = MOV32ri64 @_ZStL8__ioinit, debug-location !1128
    CALL64pcrel32 target-flags(x86-plt) @_ZNSt8ios_base4InitC1Ev, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp, debug-location !1128
    renamable $rdi = MOV64rm $rip, 1, $noreg, target-flags(x86-gotpcrel) @_ZNSt8ios_base4InitD1Ev, $noreg, debug-location !1132 :: (load (s64) from got)
    $rsi = MOV32ri64 @_ZStL8__ioinit, debug-location !1132
    $rdx = MOV32ri64 @__dso_handle, debug-location !1132
    $rax = frame-destroy POP64r implicit-def $rsp, implicit $rsp, debug-location !1132
    frame-destroy CFI_INSTRUCTION def_cfa_offset 8, debug-location !1132
    TCRETURNdi64 target-flags(x86-plt) @__cxa_atexit, 0, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit killed $rdx, debug-location !1132

...
