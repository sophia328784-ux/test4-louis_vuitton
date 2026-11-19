.class public abstract Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array/range {v0 .. v5}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v0, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, -0x2687fd86

    move-object/from16 v9, p9

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v8, v5, 0x6

    if-nez v8, :cond_1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v5

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    and-int/lit8 v9, v5, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v8, v9

    :cond_3
    and-int/lit16 v9, v5, 0x180

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x100

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v8, v12

    goto :goto_4

    :cond_5
    move-object/from16 v9, p2

    :goto_4
    and-int/lit16 v12, v5, 0xc00

    if-nez v12, :cond_7

    move-object/from16 v12, p3

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x800

    goto :goto_5

    :cond_6
    const/16 v13, 0x400

    :goto_5
    or-int/2addr v8, v13

    goto :goto_6

    :cond_7
    move-object/from16 v12, p3

    :goto_6
    and-int/lit16 v13, v5, 0x6000

    if-nez v13, :cond_9

    move-object/from16 v13, p4

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x4000

    goto :goto_7

    :cond_8
    const/16 v14, 0x2000

    :goto_7
    or-int/2addr v8, v14

    goto :goto_8

    :cond_9
    move-object/from16 v13, p4

    :goto_8
    const/high16 v14, 0x30000

    and-int/2addr v14, v5

    if-nez v14, :cond_b

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v14, 0x10000

    :goto_9
    or-int/2addr v8, v14

    :cond_b
    const/high16 v14, 0x180000

    and-int/2addr v14, v5

    if-nez v14, :cond_d

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/high16 v14, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v14, 0x80000

    :goto_a
    or-int/2addr v8, v14

    :cond_d
    const/high16 v14, 0xc00000

    and-int/2addr v14, v5

    const/high16 v6, 0x800000

    if-nez v14, :cond_f

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    move v14, v6

    goto :goto_b

    :cond_e
    const/high16 v14, 0x400000

    :goto_b
    or-int/2addr v8, v14

    :cond_f
    const/high16 v14, 0x6000000

    and-int/2addr v14, v5

    const/high16 v15, 0x4000000

    if-nez v14, :cond_11

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_10

    move v14, v15

    goto :goto_c

    :cond_10
    const/high16 v14, 0x2000000

    :goto_c
    or-int/2addr v8, v14

    :cond_11
    move/from16 v32, v8

    const v8, 0x2492493

    and-int v8, v32, v8

    const v14, 0x2492492

    if-eq v8, v14, :cond_12

    const/4 v8, 0x1

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    :goto_d
    and-int/lit8 v14, v32, 0x1

    invoke-virtual {v11, v14, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_29

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/high16 v14, 0xe000000

    and-int v14, v32, v14

    if-ne v14, v15, :cond_13

    const/4 v14, 0x1

    goto :goto_e

    :cond_13
    const/4 v14, 0x0

    :goto_e
    const/high16 v33, 0x1c00000

    and-int v15, v32, v33

    if-ne v15, v6, :cond_14

    const/16 v18, 0x1

    goto :goto_f

    :cond_14
    const/16 v18, 0x0

    :goto_f
    or-int v14, v14, v18

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v14, v14, v18

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v10, 0x0

    if-nez v14, :cond_15

    if-ne v6, v13, :cond_16

    :cond_15
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$NativeRegisterRegistrationAddressComposable$1$1;

    invoke-direct {v6, v4, v3, v2, v10}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$NativeRegisterRegistrationAddressComposable$1$1;-><init>(ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_17

    if-ne v8, v13, :cond_20

    :cond_17
    iget-object v6, v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v10, v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v10, :cond_18

    check-cast v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    goto :goto_11

    :cond_18
    const/4 v14, 0x0

    :goto_11
    if-eqz v14, :cond_19

    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    goto :goto_12

    :cond_19
    const/4 v10, 0x0

    :goto_12
    sget-object v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTRY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq v10, v14, :cond_1a

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/4 v10, 0x0

    goto :goto_10

    :cond_1b
    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Lkotlin/collections/IndexingIterable;

    move-result-object v6

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-static {v10}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v10

    const/16 v14, 0x10

    if-ge v10, v14, :cond_1c

    move v10, v14

    :cond_1c
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v6}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    move-object v10, v6

    check-cast v10, Lkotlin/collections/IndexingIterator;

    iget-object v8, v10, Lkotlin/collections/IndexingIterator;->b:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v10}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/collections/IndexedValue;

    iget v10, v8, Lkotlin/collections/IndexedValue;->a:I

    iget-object v8, v8, Lkotlin/collections/IndexedValue;->b:Ljava/lang/Object;

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object v3, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-interface {v14, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p7

    const/16 v8, 0xa

    goto :goto_13

    :cond_1d
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$compareBy$1;

    invoke-direct {v3, v14}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$compareBy$1;-><init>(Ljava/util/Map;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$thenBy$1;

    invoke-direct {v6, v3}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v8, :cond_1e

    check-cast v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$WhenMappings;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v10, v8

    packed-switch v8, :pswitch_data_0

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->k:Ljava/lang/String;

    :goto_15
    move-object/from16 v26, v8

    goto :goto_16

    :pswitch_0
    const-string v8, "nativeRegister_address3_textField"

    goto :goto_15

    :pswitch_1
    const-string v8, "nativeRegister_address2_textField"

    goto :goto_15

    :pswitch_2
    const-string v8, "nativeRegister_address1_textField"

    goto :goto_15

    :pswitch_3
    const-string v8, "nativeRegister_city_textField"

    goto :goto_15

    :pswitch_4
    const-string v8, "nativeRegister_state_textField"

    goto :goto_15

    :pswitch_5
    const-string v8, "nativeRegister_postalCode_textField"

    goto :goto_15

    :goto_16
    const/16 v28, 0x0

    const/16 v29, 0x3bf

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v7

    invoke-static/range {v19 .. v29}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v7

    :cond_1e
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1f
    new-instance v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-direct {v8, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;-><init>(Ljava/util/List;)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "NativeRegisterRegistrationAddressComposable"

    invoke-direct {v3, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v7, "nativeRegister_addressSearch_textField"

    invoke-static {v3, v7}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v19

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v24, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v3

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v12, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const v3, 0x7f140e40

    invoke-static {v11, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    shr-int/lit8 v3, v32, 0x9

    and-int/lit8 v24, v3, 0x70

    const/16 v25, 0x37d4

    move-object/from16 v22, v11

    const/4 v11, 0x0

    move-object v3, v13

    const/4 v13, 0x0

    move v7, v15

    const/4 v15, 0x0

    const/high16 v19, 0x20000

    const/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move/from16 v23, v19

    const/16 v19, 0x0

    move/from16 v26, v21

    const/16 v21, 0x0

    move/from16 v27, v23

    const/16 v23, 0xc06

    const-string v9, ""

    move-object/from16 v34, v3

    move/from16 v3, v20

    move-object/from16 v20, p4

    invoke-static/range {v9 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;III)V

    move-object v4, v12

    move-object/from16 v11, v22

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v10, "nativeRegister_addressManualDescription_text"

    invoke-static {v9, v10}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v17, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v9

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v9, 0x7f140e34

    invoke-static {v11, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/16 v30, 0x0

    const v31, 0x1fff8

    move-object/from16 v27, v12

    move-wide v11, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v28, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v22, v28

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    shl-int/lit8 v10, v32, 0x9

    const/high16 v11, 0x70000

    and-int/2addr v11, v10

    or-int/lit8 v11, v11, 0x30

    const/high16 v12, 0x380000

    and-int/2addr v10, v12

    or-int/2addr v10, v11

    shl-int/lit8 v11, v32, 0x6

    and-int v11, v11, v33

    or-int v23, v10, v11

    const/high16 v24, 0x6000000

    const v25, 0x3ff09

    move/from16 v17, v3

    const/4 v3, 0x0

    move-object v10, v6

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v26, v21

    const/16 v21, 0x0

    move-object v5, v8

    move-object v0, v10

    move/from16 v2, v26

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    move/from16 v26, v7

    move v7, v9

    move-object/from16 v9, p3

    invoke-static/range {v3 .. v25}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V

    move-object v6, v10

    move-object/from16 v11, v22

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v1, v3, v5, v2}, Landroidx/compose/foundation/layout/ColumnScope;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v3

    iget-object v13, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v5, "nativeRegister_confirm_button"

    invoke-static {v3, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v18, 0x0

    const/16 v19, 0xd

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v3

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v3, 0x7f140635

    invoke-static {v11, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, p1

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->a:Z

    move/from16 v7, v26

    const/high16 v8, 0x800000

    if-ne v7, v8, :cond_21

    move v9, v2

    goto :goto_17

    :cond_21
    const/4 v9, 0x0

    :goto_17
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    const/high16 v10, 0x70000

    and-int v10, v32, v10

    const/high16 v14, 0x20000

    if-ne v10, v14, :cond_22

    move v10, v2

    goto :goto_18

    :cond_22
    const/4 v10, 0x0

    :goto_18
    or-int/2addr v9, v10

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_24

    move-object/from16 v9, v34

    if-ne v10, v9, :cond_23

    goto :goto_19

    :cond_23
    move-object/from16 v14, p7

    const/4 v15, 0x0

    goto :goto_1a

    :cond_24
    move-object/from16 v9, v34

    :goto_19
    new-instance v10, Lsf0;

    move-object/from16 v14, p7

    const/4 v15, 0x0

    invoke-direct {v10, v14, v3, v6, v15}, Lsf0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    move-object/from16 v17, v10

    check-cast v17, Lkotlin/jvm/functions/Function0;

    move-object/from16 v34, v9

    const/4 v9, 0x0

    const/16 v10, 0x178

    const/4 v14, 0x0

    move/from16 v21, v15

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v19, v5

    move/from16 v35, v21

    move-object/from16 v2, v34

    move-object/from16 v5, p7

    invoke-static/range {v9 .. v20}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    const-string v9, "nativeRegister_skipStep_link"

    invoke-static {v0, v9}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-interface {v1, v0, v9}, Landroidx/compose/foundation/layout/ColumnScope;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v17, 0x5

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v0, 0x7f140e6d

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    if-ne v7, v8, :cond_25

    const/4 v13, 0x1

    goto :goto_1b

    :cond_25
    move/from16 v13, v35

    :goto_1b
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v13

    const/high16 v7, 0x380000

    and-int v7, v32, v7

    const/high16 v8, 0x100000

    if-ne v7, v8, :cond_26

    const/4 v13, 0x1

    goto :goto_1c

    :cond_26
    move/from16 v13, v35

    :goto_1c
    or-int/2addr v0, v13

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_28

    if-ne v7, v2, :cond_27

    goto :goto_1d

    :cond_27
    move-object/from16 v0, p6

    goto :goto_1e

    :cond_28
    :goto_1d
    new-instance v7, Lsf0;

    move-object/from16 v0, p6

    const/4 v2, 0x1

    invoke-direct {v7, v5, v3, v0, v2}, Lsf0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1e
    move-object v14, v7

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0xc00

    const/16 v17, 0x14

    move-object/from16 v22, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v12, v4

    move-object/from16 v15, v22

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_1f

    :cond_29
    move-object/from16 v6, p5

    move-object v5, v3

    move-object/from16 v22, v11

    move-object v3, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1f
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_2a

    new-instance v0, Ld4;

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p10

    move-object v2, v3

    move-object v8, v5

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Ld4;-><init>(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZI)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
