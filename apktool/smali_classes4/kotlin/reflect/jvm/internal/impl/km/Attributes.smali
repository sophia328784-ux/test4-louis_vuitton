.class public abstract Lkotlin/reflect/jvm/internal/impl/km/Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

.field public static final j:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 60

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes;

    const-string v2, "hasAnnotations"

    const-string v3, "getHasAnnotations(Lkotlin/metadata/KmClass;)Z"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v5, "getHasAnnotations(Lkotlin/metadata/KmConstructor;)Z"

    invoke-static {v1, v2, v5, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v5

    const-string v6, "getHasAnnotations(Lkotlin/metadata/KmFunction;)Z"

    invoke-static {v1, v2, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    const-string v7, "getHasAnnotations(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v2, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    const-string v8, "getHasAnnotations(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z"

    invoke-static {v1, v2, v8, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v8

    const-string v9, "getHasAnnotations(Lkotlin/metadata/KmValueParameter;)Z"

    invoke-static {v1, v2, v9, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v9

    const-string v10, "getHasAnnotations(Lkotlin/metadata/KmTypeAlias;)Z"

    invoke-static {v1, v2, v10, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v10, "getModality(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Modality;"

    const-string v11, "modality"

    invoke-static {v1, v11, v10, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v10

    const-string v12, "getVisibility(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Visibility;"

    const-string v13, "visibility"

    invoke-static {v1, v13, v12, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v12

    const-string v14, "getKind(Lkotlin/metadata/KmClass;)Lkotlin/metadata/ClassKind;"

    const-string v15, "kind"

    invoke-static {v1, v15, v14, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v14

    move-object/from16 v16, v0

    const-string v0, "isInner"

    move-object/from16 v17, v2

    const-string v2, "isInner(Lkotlin/metadata/KmClass;)Z"

    invoke-static {v1, v0, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v2, "isData"

    move-object/from16 v18, v0

    const-string v0, "isData(Lkotlin/metadata/KmClass;)Z"

    invoke-static {v1, v2, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v2, "isExternal(Lkotlin/metadata/KmClass;)Z"

    move-object/from16 v19, v0

    const-string v0, "isExternal"

    invoke-static {v1, v0, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    move-object/from16 v20, v2

    const-string v2, "isExpect(Lkotlin/metadata/KmClass;)Z"

    move-object/from16 v21, v5

    const-string v5, "isExpect"

    invoke-static {v1, v5, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    move-object/from16 v22, v2

    const-string v2, "isValue"

    move-object/from16 v23, v6

    const-string v6, "isValue(Lkotlin/metadata/KmClass;)Z"

    invoke-static {v1, v2, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v6, "isFunInterface"

    move-object/from16 v24, v2

    const-string v2, "isFunInterface(Lkotlin/metadata/KmClass;)Z"

    invoke-static {v1, v6, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v6, "hasEnumEntries"

    move-object/from16 v25, v2

    const-string v2, "getHasEnumEntries(Lkotlin/metadata/KmClass;)Z"

    invoke-static {v1, v6, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v6, "getVisibility(Lkotlin/metadata/KmConstructor;)Lkotlin/metadata/Visibility;"

    invoke-static {v1, v13, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    move-object/from16 v26, v2

    const-string v2, "isSecondary"

    move-object/from16 v27, v6

    const-string v6, "isSecondary(Lkotlin/metadata/KmConstructor;)Z"

    invoke-static {v1, v2, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v6, "getHasNonStableParameterNames(Lkotlin/metadata/KmConstructor;)Z"

    move-object/from16 v28, v2

    const-string v2, "hasNonStableParameterNames"

    invoke-static {v1, v2, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    move-object/from16 v29, v6

    const-string v6, "getKind(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/MemberKind;"

    invoke-static {v1, v15, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    move-object/from16 v30, v6

    const-string v6, "getVisibility(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Visibility;"

    invoke-static {v1, v13, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    move-object/from16 v31, v6

    const-string v6, "getModality(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Modality;"

    invoke-static {v1, v11, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    move-object/from16 v32, v6

    const-string v6, "isOperator"

    move-object/from16 v33, v7

    const-string v7, "isOperator(Lkotlin/metadata/KmFunction;)Z"

    invoke-static {v1, v6, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    const-string v7, "isInfix"

    move-object/from16 v34, v6

    const-string v6, "isInfix(Lkotlin/metadata/KmFunction;)Z"

    invoke-static {v1, v7, v6, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    const-string v7, "isInline(Lkotlin/metadata/KmFunction;)Z"

    move-object/from16 v35, v6

    const-string v6, "isInline"

    invoke-static {v1, v6, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    move-object/from16 v36, v7

    const-string v7, "isTailrec"

    move-object/from16 v37, v8

    const-string v8, "isTailrec(Lkotlin/metadata/KmFunction;)Z"

    invoke-static {v1, v7, v8, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    const-string v8, "isExternal(Lkotlin/metadata/KmFunction;)Z"

    invoke-static {v1, v0, v8, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v8

    move-object/from16 v38, v7

    const-string v7, "isSuspend(Lkotlin/metadata/KmFunction;)Z"

    move-object/from16 v39, v8

    const-string v8, "isSuspend"

    invoke-static {v1, v8, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    move-object/from16 v40, v7

    const-string v7, "isExpect(Lkotlin/metadata/KmFunction;)Z"

    invoke-static {v1, v5, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    move-object/from16 v41, v7

    const-string v7, "getHasNonStableParameterNames(Lkotlin/metadata/KmFunction;)Z"

    invoke-static {v1, v2, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v7, "getVisibility(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Visibility;"

    invoke-static {v1, v13, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    move-object/from16 v42, v2

    const-string v2, "getModality(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Modality;"

    invoke-static {v1, v11, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    move-object/from16 v43, v2

    const-string v2, "getKind(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/MemberKind;"

    invoke-static {v1, v15, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v15, "isVar"

    move-object/from16 v44, v2

    const-string v2, "isVar(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v15, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v15, "isConst"

    move-object/from16 v45, v2

    const-string v2, "isConst(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v15, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v15, "isLateinit"

    move-object/from16 v46, v2

    const-string v2, "isLateinit(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v15, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v15, "hasConstant"

    move-object/from16 v47, v2

    const-string v2, "getHasConstant(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v15, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v15, "isExternal(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v0, v15, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v15

    move-object/from16 v48, v2

    const-string v2, "isDelegated"

    move-object/from16 v49, v7

    const-string v7, "isDelegated(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v2, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v7, "isExpect(Lkotlin/metadata/KmProperty;)Z"

    invoke-static {v1, v5, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v5

    const-string v7, "getVisibility(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Visibility;"

    invoke-static {v1, v13, v7, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    move-object/from16 v50, v2

    const-string v2, "getModality(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Modality;"

    invoke-static {v1, v11, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v11, "isNotDefault"

    move-object/from16 v51, v2

    const-string v2, "isNotDefault(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z"

    invoke-static {v1, v11, v2, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    const-string v11, "isExternal(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z"

    invoke-static {v1, v0, v11, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v11, "isInline(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z"

    invoke-static {v1, v6, v11, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    const-string v11, "isNullable"

    move-object/from16 v52, v0

    const-string v0, "isNullable(Lkotlin/metadata/KmType;)Z"

    invoke-static {v1, v11, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v11, "isSuspend(Lkotlin/metadata/KmType;)Z"

    invoke-static {v1, v8, v11, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v8

    const-string v11, "isDefinitelyNonNull"

    move-object/from16 v53, v0

    const-string v0, "isDefinitelyNonNull(Lkotlin/metadata/KmType;)Z"

    invoke-static {v1, v11, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v11, "isReified"

    move-object/from16 v54, v0

    const-string v0, "isReified(Lkotlin/metadata/KmTypeParameter;)Z"

    invoke-static {v1, v11, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v11, "getVisibility(Lkotlin/metadata/KmTypeAlias;)Lkotlin/metadata/Visibility;"

    invoke-static {v1, v13, v11, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v11

    const-string v13, "declaresDefaultValue"

    move-object/from16 v55, v0

    const-string v0, "getDeclaresDefaultValue(Lkotlin/metadata/KmValueParameter;)Z"

    invoke-static {v1, v13, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v13, "isCrossinline"

    move-object/from16 v56, v0

    const-string v0, "isCrossinline(Lkotlin/metadata/KmValueParameter;)Z"

    invoke-static {v1, v13, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v13, "isNoinline"

    move-object/from16 v57, v0

    const-string v0, "isNoinline(Lkotlin/metadata/KmValueParameter;)Z"

    invoke-static {v1, v13, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v13, "isNegated"

    move-object/from16 v58, v0

    const-string v0, "isNegated(Lkotlin/metadata/KmEffectExpression;)Z"

    invoke-static {v1, v13, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v13, "isNullCheckPredicate"

    move-object/from16 v59, v0

    const-string v0, "isNullCheckPredicate(Lkotlin/metadata/KmEffectExpression;)Z"

    invoke-static {v1, v13, v0, v4, v3}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/16 v1, 0x38

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v16, v1, v3

    aput-object v21, v1, v4

    const/4 v13, 0x2

    aput-object v23, v1, v13

    const/4 v13, 0x3

    aput-object v33, v1, v13

    const/4 v13, 0x4

    aput-object v37, v1, v13

    const/4 v13, 0x5

    aput-object v9, v1, v13

    const/4 v9, 0x6

    aput-object v17, v1, v9

    const/4 v9, 0x7

    aput-object v10, v1, v9

    const/16 v9, 0x8

    aput-object v12, v1, v9

    const/16 v9, 0x9

    aput-object v14, v1, v9

    const/16 v9, 0xa

    aput-object v18, v1, v9

    const/16 v10, 0xb

    aput-object v19, v1, v10

    const/16 v10, 0xc

    aput-object v20, v1, v10

    const/16 v10, 0xd

    aput-object v22, v1, v10

    const/16 v10, 0xe

    aput-object v24, v1, v10

    const/16 v10, 0xf

    aput-object v25, v1, v10

    const/16 v10, 0x10

    aput-object v26, v1, v10

    const/16 v10, 0x11

    aput-object v27, v1, v10

    const/16 v10, 0x12

    aput-object v28, v1, v10

    const/16 v10, 0x13

    aput-object v29, v1, v10

    const/16 v10, 0x14

    aput-object v30, v1, v10

    const/16 v10, 0x15

    aput-object v31, v1, v10

    const/16 v10, 0x16

    aput-object v32, v1, v10

    const/16 v10, 0x17

    aput-object v34, v1, v10

    const/16 v10, 0x18

    aput-object v35, v1, v10

    const/16 v10, 0x19

    aput-object v36, v1, v10

    const/16 v10, 0x1a

    aput-object v38, v1, v10

    const/16 v10, 0x1b

    aput-object v39, v1, v10

    const/16 v10, 0x1c

    aput-object v40, v1, v10

    const/16 v10, 0x1d

    aput-object v41, v1, v10

    const/16 v10, 0x1e

    aput-object v42, v1, v10

    const/16 v10, 0x1f

    aput-object v49, v1, v10

    const/16 v10, 0x20

    aput-object v43, v1, v10

    const/16 v10, 0x21

    aput-object v44, v1, v10

    const/16 v10, 0x22

    aput-object v45, v1, v10

    const/16 v10, 0x23

    aput-object v46, v1, v10

    const/16 v10, 0x24

    aput-object v47, v1, v10

    const/16 v10, 0x25

    aput-object v48, v1, v10

    const/16 v10, 0x26

    aput-object v15, v1, v10

    const/16 v10, 0x27

    aput-object v50, v1, v10

    const/16 v10, 0x28

    aput-object v5, v1, v10

    const/16 v5, 0x29

    aput-object v7, v1, v5

    const/16 v5, 0x2a

    aput-object v51, v1, v5

    const/16 v5, 0x2b

    aput-object v2, v1, v5

    const/16 v2, 0x2c

    aput-object v52, v1, v2

    const/16 v2, 0x2d

    aput-object v6, v1, v2

    const/16 v2, 0x2e

    aput-object v53, v1, v2

    const/16 v2, 0x2f

    aput-object v8, v1, v2

    const/16 v2, 0x30

    aput-object v54, v1, v2

    const/16 v2, 0x31

    aput-object v55, v1, v2

    const/16 v2, 0x32

    aput-object v11, v1, v2

    const/16 v2, 0x33

    aput-object v56, v1, v2

    const/16 v2, 0x34

    aput-object v57, v1, v2

    const/16 v2, 0x35

    aput-object v58, v1, v2

    const/16 v2, 0x36

    aput-object v59, v1, v2

    const/16 v2, 0x37

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->c:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->b(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->f(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->j(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->h(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$2;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$2;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->e(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$2;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$2;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->k(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->c:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$kind$2;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$kind$2;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->f:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/ClassKind;->a()Lkotlin/enums/EnumEntries;

    move-result-object v2

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/ClassKind;->a()Lkotlin/enums/EnumEntries;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/km/ClassKind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/km/ClassKind;->b()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-direct {v5, v0, v1, v2, v6}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;Lkotlin/enums/EnumEntries;Ljava/util/List;)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->d:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->g:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->e:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->h:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->i:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->j:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->k:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->f:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->l:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->m:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->k(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->n:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->b(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->o:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->b(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$kind$7;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$kind$7;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->d(Lkotlin/reflect/KMutableProperty1;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$10;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$10;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->k(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$6;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$6;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->e(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->q:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->r:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->s:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->t:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->u:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->v:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->w:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->x:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$14;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$14;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->k(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$10;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$10;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->e(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$kind$11;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$kind$11;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->d(Lkotlin/reflect/KMutableProperty1;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->y:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->B:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->C:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->D:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->E:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->F:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->G:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$18;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$18;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->k(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$14;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$modality$14;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->e(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->K:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->f(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->L:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->f(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->M:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->f(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v0, v3, v4, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(III)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->i(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->g:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->a:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->a:I

    add-int/2addr v2, v4

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->b:I

    invoke-direct {v0, v2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(III)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->i(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->h:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->b:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->a:I

    add-int/2addr v2, v4

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->b:I

    invoke-direct {v0, v2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(III)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->i(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->i:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes$isReified$2;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$isReified$2;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    invoke-direct {v2, v3, v4, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(III)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->j:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$22;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$22;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->k(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->H:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->j(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->I:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->j(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->J:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->j(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes$isNegated$2;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$isNegated$2;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->N:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes$isNullCheckPredicate$2;->b:Lkotlin/reflect/jvm/internal/impl/km/Attributes$isNullCheckPredicate$2;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->O:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/km/KmClass;)Lkotlin/reflect/jvm/internal/impl/km/ClassKind;
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->d:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-virtual {v1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;->a(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/KProperty;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/ClassKind;

    return-object p0
.end method
