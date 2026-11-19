.class public abstract Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;",
        "addressEditorViewState",
        "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;",
        "addressAutocompleteViewState",
        "",
        "autofillPositioned",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "textFieldValue",
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


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move/from16 v15, p11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x49d217e3

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    move-object/from16 v9, p0

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p10, v0

    move-object/from16 v2, p1

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    const/16 v14, 0x20

    if-eqz v1, :cond_1

    move v1, v14

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v5, p2

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    and-int/lit8 v1, v15, 0x8

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v6, p3

    goto :goto_4

    :cond_3
    move-object/from16 v6, p3

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x800

    goto :goto_3

    :cond_4
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v0, v7

    :goto_4
    and-int/lit8 v7, v15, 0x10

    if-eqz v7, :cond_5

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v10, p4

    goto :goto_6

    :cond_5
    move-object/from16 v10, p4

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x4000

    goto :goto_5

    :cond_6
    const/16 v11, 0x2000

    :goto_5
    or-int/2addr v0, v11

    :goto_6
    and-int/lit8 v11, v15, 0x40

    const/16 v16, -0x1

    move/from16 p9, v11

    if-eqz p9, :cond_7

    const/high16 v17, 0x180000

    or-int v0, v0, v17

    goto :goto_9

    :cond_7
    if-nez p6, :cond_8

    move/from16 v3, v16

    goto :goto_7

    :cond_8
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    move/from16 v3, v17

    :goto_7
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, 0x100000

    goto :goto_8

    :cond_9
    const/high16 v3, 0x80000

    :goto_8
    or-int/2addr v0, v3

    :goto_9
    and-int/lit16 v3, v15, 0x80

    if-eqz v3, :cond_a

    const/high16 v16, 0xc00000

    or-int v0, v0, v16

    goto :goto_d

    :cond_a
    if-nez p7, :cond_b

    :goto_a
    move/from16 v4, v16

    goto :goto_b

    :cond_b
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    goto :goto_a

    :goto_b
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_c

    const/high16 v4, 0x800000

    goto :goto_c

    :cond_c
    const/high16 v4, 0x400000

    :goto_c
    or-int/2addr v0, v4

    :goto_d
    and-int/lit16 v4, v15, 0x100

    if-eqz v4, :cond_d

    const/high16 v20, 0x6000000

    or-int v0, v0, v20

    move-object/from16 v12, p8

    goto :goto_f

    :cond_d
    move-object/from16 v12, p8

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/high16 v21, 0x4000000

    goto :goto_e

    :cond_e
    const/high16 v21, 0x2000000

    :goto_e
    or-int v0, v0, v21

    :goto_f
    const v21, 0x2492493

    and-int v11, v0, v21

    const v8, 0x2492492

    const/16 v23, 0x0

    const/16 v24, 0x1

    if-eq v11, v8, :cond_f

    move/from16 v8, v24

    goto :goto_10

    :cond_f
    move/from16 v8, v23

    :goto_10
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v13, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_3f

    const/4 v8, 0x0

    if-eqz v1, :cond_10

    move v1, v7

    move-object v7, v8

    goto :goto_11

    :cond_10
    move v1, v7

    move-object v7, v6

    :goto_11
    if-eqz v1, :cond_11

    move-object v6, v8

    goto :goto_12

    :cond_11
    move-object v6, v10

    :goto_12
    move v1, v4

    if-eqz p9, :cond_12

    move-object v4, v8

    goto :goto_13

    :cond_12
    move-object/from16 v4, p6

    :goto_13
    if-eqz v3, :cond_13

    move-object v5, v8

    goto :goto_14

    :cond_13
    move-object/from16 v5, p7

    :goto_14
    if-eqz v1, :cond_14

    move-object v3, v8

    goto :goto_15

    :cond_14
    move-object v3, v12

    :goto_15
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v10, :cond_15

    invoke-static {v13}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v1

    :cond_15
    move-object/from16 v25, v1

    check-cast v25, Landroidx/compose/material3/SnackbarHostState;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v11, v0, 0x70

    if-eq v11, v14, :cond_16

    move/from16 v26, v23

    goto :goto_16

    :cond_16
    move/from16 v26, v24

    :goto_16
    const/high16 v27, 0xe000000

    and-int v14, v0, v27

    move-object/from16 p3, v1

    const/high16 v1, 0x4000000

    if-ne v14, v1, :cond_17

    move/from16 v21, v24

    goto :goto_17

    :cond_17
    move/from16 v21, v23

    :goto_17
    or-int v21, v26, v21

    const/high16 v26, 0x380000

    move/from16 p4, v11

    and-int v11, v0, v26

    const/high16 v1, 0x100000

    if-ne v11, v1, :cond_18

    move/from16 v22, v24

    goto :goto_18

    :cond_18
    move/from16 v22, v23

    :goto_18
    or-int v21, v21, v22

    const/high16 v22, 0x1c00000

    move/from16 p6, v11

    and-int v11, v0, v22

    const/high16 v1, 0x800000

    if-ne v11, v1, :cond_19

    move/from16 v1, v24

    goto :goto_19

    :cond_19
    move/from16 v1, v23

    :goto_19
    or-int v1, v21, v1

    const v21, 0xe000

    move/from16 p7, v1

    and-int v1, v0, v21

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_1a

    move/from16 v1, v24

    goto :goto_1a

    :cond_1a
    move/from16 v1, v23

    :goto_1a
    or-int v1, p7, v1

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    move/from16 p7, v1

    const/16 v1, 0x800

    if-ne v2, v1, :cond_1b

    move/from16 v1, v24

    goto :goto_1b

    :cond_1b
    move/from16 v1, v23

    :goto_1b
    or-int v1, p7, v1

    and-int/lit8 v2, v0, 0xe

    move/from16 p7, v1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_1c

    move/from16 v1, v23

    goto :goto_1c

    :cond_1c
    move/from16 v1, v24

    :goto_1c
    or-int v1, p7, v1

    and-int/lit16 v0, v0, 0x380

    move/from16 p7, v1

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1d

    move/from16 v16, v24

    goto :goto_1d

    :cond_1d
    move/from16 v16, v23

    :goto_1d
    or-int v16, p7, v16

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v16, :cond_1e

    if-ne v1, v10, :cond_1f

    :cond_1e
    move v1, v0

    goto :goto_1e

    :cond_1f
    move-object/from16 v15, p3

    move/from16 v28, p6

    move/from16 v31, v0

    move/from16 v30, v2

    move-object v9, v4

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    move/from16 v29, v11

    move-object/from16 p3, v12

    move/from16 v12, p4

    move-object v11, v3

    move-object v3, v8

    move/from16 p4, v14

    move-object/from16 v8, p5

    move-object v14, v10

    move-object v10, v5

    goto :goto_1f

    :goto_1e
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;

    move/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v15, p3

    move/from16 v28, p6

    move/from16 v31, v1

    move/from16 v30, v2

    move-object/from16 p3, v12

    move/from16 v29, v16

    move-object/from16 v1, p1

    move/from16 v12, p4

    move-object/from16 v2, p5

    move/from16 p4, v14

    move-object v14, v10

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/State;Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v11, v3

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    move-object v3, v8

    move-object v8, v2

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_1f
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    const/16 v1, 0x20

    if-eq v12, v1, :cond_20

    move/from16 v1, v23

    goto :goto_20

    :cond_20
    move/from16 v1, v24

    :goto_20
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_22

    if-ne v2, v14, :cond_21

    goto :goto_21

    :cond_21
    move-object/from16 p6, v9

    move-object v9, v3

    goto :goto_22

    :cond_22
    :goto_21
    new-instance v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$2$1;

    const-string v6, "updateSearchBarValue(Ljava/lang/String;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    const-string v5, "updateSearchBarValue"

    move-object/from16 p6, v9

    move-object v9, v3

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_22
    move-object/from16 v21, v2

    check-cast v21, Lkotlin/reflect/KFunction;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;->NATIVE_REGISTER_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    if-ne v8, v1, :cond_23

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    :goto_23
    move-object/from16 v22, v2

    goto :goto_24

    :cond_23
    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_23

    :goto_24
    if-ne v8, v1, :cond_24

    move/from16 v26, v24

    :goto_25
    move/from16 v1, p4

    const/high16 v2, 0x4000000

    goto :goto_26

    :cond_24
    move/from16 v26, v23

    goto :goto_25

    :goto_26
    if-ne v1, v2, :cond_25

    move/from16 v4, v24

    :goto_27
    move/from16 v3, v28

    const/high16 v5, 0x100000

    goto :goto_28

    :cond_25
    move/from16 v4, v23

    goto :goto_27

    :goto_28
    if-ne v3, v5, :cond_26

    move/from16 v6, v24

    goto :goto_29

    :cond_26
    move/from16 v6, v23

    :goto_29
    or-int/2addr v4, v6

    move/from16 v6, v29

    const/high16 v7, 0x800000

    if-ne v6, v7, :cond_27

    move/from16 v7, v24

    goto :goto_2a

    :cond_27
    move/from16 v7, v23

    :goto_2a
    or-int/2addr v4, v7

    move-object/from16 v7, p3

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    or-int v4, v4, v27

    const/16 v2, 0x20

    if-eq v12, v2, :cond_28

    move/from16 v2, v23

    goto :goto_2b

    :cond_28
    move/from16 v2, v24

    :goto_2b
    or-int/2addr v2, v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_29

    if-ne v4, v14, :cond_2a

    :cond_29
    move-object v2, v0

    goto :goto_2c

    :cond_2a
    move-object/from16 v27, v0

    move v8, v1

    move-object v0, v4

    move-object v4, v7

    move-object v7, v10

    move-object/from16 v28, v11

    move-object/from16 p3, v15

    const/high16 v15, 0x4000000

    move v10, v3

    move v11, v6

    move-object/from16 v6, p6

    goto :goto_2d

    :goto_2c
    new-instance v0, Lg4;

    move-object v4, v7

    const/4 v7, 0x0

    move-object/from16 p3, v8

    move v8, v1

    move-object/from16 v1, p3

    move-object/from16 v5, p1

    move-object/from16 v27, v2

    move-object v2, v11

    move-object/from16 p3, v15

    const/high16 v15, 0x4000000

    move v11, v6

    move-object v6, v4

    move-object v4, v10

    move v10, v3

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v7}, Lg4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v28, v2

    move-object v7, v4

    move-object v4, v6

    move-object v6, v3

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2d
    move-object/from16 v29, v0

    check-cast v29, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x20

    if-eq v12, v1, :cond_2b

    move/from16 v0, v23

    goto :goto_2e

    :cond_2b
    move/from16 v0, v24

    :goto_2e
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move/from16 v1, v30

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    move/from16 v1, v23

    goto :goto_2f

    :cond_2c
    move/from16 v1, v24

    :goto_2f
    or-int/2addr v0, v1

    move/from16 v1, v31

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2d

    move/from16 v3, v24

    goto :goto_30

    :cond_2d
    move/from16 v3, v23

    :goto_30
    or-int/2addr v0, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2f

    if-ne v3, v14, :cond_2e

    goto :goto_31

    :cond_2e
    move/from16 v32, v1

    goto :goto_32

    :cond_2f
    :goto_31
    new-instance v0, Lz;

    move/from16 v31, v1

    const/4 v1, 0x3

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move/from16 v32, v31

    invoke-direct/range {v0 .. v5}, Lz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_32
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function2;

    if-ne v8, v15, :cond_30

    move/from16 v0, v24

    :goto_33
    const/high16 v1, 0x100000

    goto :goto_34

    :cond_30
    move/from16 v0, v23

    goto :goto_33

    :goto_34
    if-ne v10, v1, :cond_31

    move/from16 v2, v24

    goto :goto_35

    :cond_31
    move/from16 v2, v23

    :goto_35
    or-int/2addr v0, v2

    const/high16 v2, 0x800000

    if-ne v11, v2, :cond_32

    move/from16 v2, v24

    goto :goto_36

    :cond_32
    move/from16 v2, v23

    :goto_36
    or-int/2addr v0, v2

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    const/16 v2, 0x20

    if-eq v12, v2, :cond_33

    move/from16 v2, v23

    goto :goto_37

    :cond_33
    move/from16 v2, v24

    :goto_37
    or-int/2addr v0, v2

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_35

    if-ne v2, v14, :cond_34

    goto :goto_38

    :cond_34
    move-object v0, v2

    move-object v3, v6

    move-object/from16 v2, v28

    move-object v6, v4

    move-object v4, v7

    goto :goto_39

    :cond_35
    :goto_38
    new-instance v0, Lj4;

    move-object v5, v7

    const/4 v7, 0x0

    move-object/from16 v1, p5

    move-object v3, v6

    move-object/from16 v2, v28

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v7}, Lj4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_39
    move-object/from16 v28, v0

    check-cast v28, Lkotlin/jvm/functions/Function0;

    if-ne v8, v15, :cond_36

    move/from16 v0, v24

    :goto_3a
    const/high16 v1, 0x100000

    goto :goto_3b

    :cond_36
    move/from16 v0, v23

    goto :goto_3a

    :goto_3b
    if-ne v10, v1, :cond_37

    move/from16 v1, v24

    goto :goto_3c

    :cond_37
    move/from16 v1, v23

    :goto_3c
    or-int/2addr v0, v1

    const/high16 v7, 0x800000

    if-ne v11, v7, :cond_38

    move/from16 v1, v24

    goto :goto_3d

    :cond_38
    move/from16 v1, v23

    :goto_3d
    or-int/2addr v0, v1

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move/from16 v1, v32

    const/16 v5, 0x100

    if-ne v1, v5, :cond_39

    move/from16 v1, v24

    goto :goto_3e

    :cond_39
    move/from16 v1, v23

    :goto_3e
    or-int/2addr v0, v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3b

    if-ne v1, v14, :cond_3a

    goto :goto_3f

    :cond_3a
    move-object/from16 v30, v2

    move-object v15, v3

    move-object/from16 v20, v4

    move-object v4, v6

    goto :goto_40

    :cond_3b
    :goto_3f
    new-instance v0, Lj4;

    const/4 v7, 0x1

    move-object/from16 v5, p2

    move-object/from16 v1, p5

    invoke-direct/range {v0 .. v7}, Lj4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v30, v2

    move-object v15, v3

    move-object/from16 v20, v4

    move-object v4, v6

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_40
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v11, v21

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x20

    if-eq v12, v1, :cond_3c

    goto :goto_41

    :cond_3c
    move/from16 v23, v24

    :goto_41
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v23, v0

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3d

    if-ne v1, v14, :cond_3e

    :cond_3d
    new-instance v0, Lr0;

    const/4 v5, 0x1

    move-object/from16 v2, p1

    move-object/from16 v1, p5

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Ljava/lang/Object;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_3e
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/16 v14, 0x6180

    move-object/from16 v0, p3

    move-object/from16 v4, p5

    move-object/from16 v8, v17

    move-object/from16 v1, v19

    move-object/from16 v5, v22

    move-object/from16 v2, v25

    move/from16 v6, v26

    move-object/from16 v3, v27

    move-object/from16 v9, v28

    move-object/from16 v7, v29

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt;->b(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v7, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v30

    goto :goto_42

    :cond_3f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v4, v6

    move-object v5, v10

    move-object v9, v12

    :goto_42
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_40

    new-instance v0, Lk4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lk4;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_40
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move/from16 v14, p14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x28adeada

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v14, 0x6

    const/4 v4, 0x2

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    or-int/2addr v6, v14

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v6, v14

    :goto_1
    and-int/lit8 v7, v14, 0x30

    const/16 v8, 0x10

    move-object/from16 v10, p1

    if-nez v7, :cond_3

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v14, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v14, 0xc00

    if-nez v7, :cond_7

    move-object/from16 v7, p3

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x800

    goto :goto_4

    :cond_6
    const/16 v15, 0x400

    :goto_4
    or-int/2addr v6, v15

    goto :goto_5

    :cond_7
    move-object/from16 v7, p3

    :goto_5
    and-int/lit16 v15, v14, 0x6000

    if-nez v15, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x4000

    goto :goto_6

    :cond_8
    const/16 v15, 0x2000

    :goto_6
    or-int/2addr v6, v15

    :cond_9
    const/high16 v15, 0x30000

    and-int/2addr v15, v14

    if-nez v15, :cond_c

    if-nez v5, :cond_a

    const/4 v15, -0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    :goto_7
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_b

    const/high16 v15, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v15, 0x10000

    :goto_8
    or-int/2addr v6, v15

    :cond_c
    const/high16 v15, 0x180000

    and-int/2addr v15, v14

    if-nez v15, :cond_e

    move/from16 v15, p6

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v16, 0x80000

    :goto_9
    or-int v6, v6, v16

    goto :goto_a

    :cond_e
    move/from16 v15, p6

    :goto_a
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    move-object/from16 v2, p7

    if-nez v16, :cond_10

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v16, 0x400000

    :goto_b
    or-int v6, v6, v16

    :cond_10
    const/high16 v16, 0x6000000

    and-int v16, v14, v16

    move-object/from16 v11, p8

    if-nez v16, :cond_12

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x4000000

    goto :goto_c

    :cond_11
    const/high16 v17, 0x2000000

    :goto_c
    or-int v6, v6, v17

    :cond_12
    const/high16 v17, 0x30000000

    and-int v17, v14, v17

    move-object/from16 v12, p9

    if-nez v17, :cond_14

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x20000000

    goto :goto_d

    :cond_13
    const/high16 v18, 0x10000000

    :goto_d
    or-int v6, v6, v18

    :cond_14
    move/from16 v18, v8

    move-object/from16 v8, p10

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/4 v4, 0x4

    :cond_15
    move-object/from16 v9, p11

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v18, 0x20

    :cond_16
    or-int v4, v4, v18

    move-object/from16 v9, p12

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/16 v17, 0x100

    goto :goto_e

    :cond_17
    const/16 v17, 0x80

    :goto_e
    or-int v4, v4, v17

    const v16, 0x12492493

    and-int v13, v6, v16

    const v1, 0x12492492

    const/4 v2, 0x0

    const/16 v22, 0x1

    if-ne v13, v1, :cond_19

    and-int/lit16 v1, v4, 0x93

    const/16 v4, 0x92

    if-eq v1, v4, :cond_18

    goto :goto_f

    :cond_18
    move v1, v2

    goto :goto_10

    :cond_19
    :goto_f
    move/from16 v1, v22

    :goto_10
    and-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v4, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-ne v5, v1, :cond_1a

    move/from16 v26, v22

    goto :goto_11

    :cond_1a
    move/from16 v26, v2

    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v4, :cond_1b

    new-instance v1, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v1, Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_1c

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object/from16 v24, v13

    check-cast v24, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_1d

    new-instance v15, Landroidx/compose/ui/text/input/TextFieldValue;

    const/16 v20, 0x6

    const/16 v21, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v21}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v19, v13

    check-cast v19, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v6, v6, 0x1c00

    const/16 v13, 0x800

    if-ne v6, v13, :cond_1e

    goto :goto_12

    :cond_1e
    move/from16 v22, v2

    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v22, :cond_20

    if-ne v6, v4, :cond_1f

    goto :goto_13

    :cond_1f
    move-object/from16 v17, v1

    move-object/from16 v18, v24

    goto :goto_14

    :cond_20
    :goto_13
    new-instance v15, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteScreen$1$1;

    const/16 v20, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, v1

    move-object/from16 v18, v24

    invoke-direct/range {v15 .. v20}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteScreen$1$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v15

    :goto_14
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const-string v1, "AddressAutocompleteScreen"

    if-eqz v26, :cond_21

    const v4, 0x191cd4c9

    invoke-static {v0, v4, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v27

    const v1, 0x7f080345

    invoke-static {v1, v0, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v28

    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v30, Landroidx/compose/ui/layout/ContentScale$Companion;->h:Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    const/16 v32, 0x0

    const/16 v33, 0x36

    const/16 v29, 0x0

    const/16 v31, 0x0

    invoke-static/range {v27 .. v33}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_21
    const v4, 0x192081ce

    invoke-static {v0, v4, v2, v1}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_15
    if-eqz v26, :cond_22

    const v4, 0x4b222031    # 1.0625073E7f

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->h:J

    :goto_16
    move-wide/from16 v27, v6

    goto :goto_17

    :cond_22
    const v4, 0x4b222637    # 1.0626615E7f

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :goto_17
    new-instance v4, Li4;

    const/4 v9, 0x1

    move-object/from16 v7, p0

    move/from16 v6, p6

    invoke-direct/range {v4 .. v9}, Li4;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    const v2, 0x2a2bdcea

    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    new-instance v4, Lg0;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v5, -0x19329594

    invoke-static {v5, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    new-instance v15, Ll4;

    move-object/from16 v22, p4

    move-object/from16 v23, p7

    move-object/from16 v16, v10

    move-object/from16 v21, v11

    move-object/from16 v20, v12

    move-object/from16 v24, v18

    move-object/from16 v25, v19

    move-object/from16 v19, p11

    move-object/from16 v18, v17

    move-object/from16 v17, p12

    invoke-direct/range {v15 .. v26}, Ll4;-><init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Z)V

    const v5, 0x69cbfbf5

    invoke-static {v5, v15, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v26

    move-wide/from16 v21, v27

    const v28, 0x30000c30

    const/16 v29, 0x1b4

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_18

    :cond_23
    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_24

    new-instance v0, Lm4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v14}, Lm4;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method

.method public static final c(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    const v0, 0x699d64b9

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    or-int v0, p5, v0

    move/from16 v3, p1

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x100

    goto :goto_3

    :cond_3
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    move-object/from16 v7, p3

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x800

    goto :goto_4

    :cond_4
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x1

    if-eq v4, v5, :cond_5

    move v4, v6

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v12, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$WhenMappings;->b:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v6, :cond_9

    if-eq v4, v2, :cond_8

    const/4 v2, 0x3

    if-eq v4, v2, :cond_7

    if-ne v4, v1, :cond_6

    const v1, 0x7f140dcb

    goto :goto_6

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_7
    const v1, 0x7f140dca

    goto :goto_6

    :cond_8
    const v1, 0x7f14093d

    goto :goto_6

    :cond_9
    const v1, 0x7f1402de

    :goto_6
    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v9

    shl-int/lit8 v1, v0, 0x3

    and-int/lit16 v1, v1, 0x3f0

    shl-int/lit8 v0, v0, 0x9

    const/high16 v2, 0x380000

    and-int/2addr v0, v2

    or-int v13, v1, v0

    const/16 v14, 0x36

    const/16 v15, 0x2b1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v10, "addressAutocomplete_title_text"

    const-string v11, "addressAutocomplete_back_button"

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v15}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_7

    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v3, Li4;

    const/4 v5, 0x0

    move-object/from16 v6, p0

    move/from16 v9, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v4, p5

    invoke-direct/range {v3 .. v9}, Li4;-><init>(IILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Z)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    const v0, -0xa1d0405

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    iget-object v0, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int v2, p4, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x100

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v2, v5

    and-int/lit16 v5, v2, 0x93

    const/16 v7, 0x92

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v5, v7, :cond_3

    move v5, v9

    goto :goto_3

    :cond_3
    move v5, v10

    :goto_3
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v8, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$WhenMappings;->c:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v9, :cond_5

    if-ne v5, v4, :cond_4

    const v5, 0x9143d2c

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/16 v18, 0x0

    move-wide/from16 v16, v4

    invoke-direct/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4
    move-object v4, v11

    goto :goto_5

    :cond_4
    const v0, 0x914076e

    invoke-static {v8, v0, v10}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_5
    const v4, 0x914111e

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->t:J

    const/16 v18, 0x0

    move-wide/from16 v16, v4

    invoke-direct/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :goto_5
    const-string v5, "AutocompleteSuggestionList"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v12, v13, v8, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v12

    iget-wide v13, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v8, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v27, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_6

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v14, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v9, 0x7395d44

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->d:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move v9, v10

    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v29, v9, 0x1

    if-ltz v9, :cond_c

    check-cast v11, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    invoke-static {v5, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v17

    and-int/lit16 v12, v2, 0x380

    if-ne v12, v6, :cond_7

    const/4 v12, 0x1

    goto :goto_8

    :cond_7
    move v12, v10

    :goto_8
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_9

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v12, :cond_8

    goto :goto_9

    :cond_8
    const/4 v12, 0x2

    goto :goto_a

    :cond_9
    :goto_9
    new-instance v13, Ll0;

    const/4 v12, 0x2

    invoke-direct {v13, v3, v11, v12}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    move-object/from16 v21, v13

    check-cast v21, Lkotlin/jvm/functions/Function0;

    const/16 v22, 0x1f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v15, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v14, v15, v8, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v6, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v8, v13}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_b

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_a

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v14, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v13, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v23, 0x0

    const/16 v24, 0x8

    sget-object v19, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v21, v10

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "addressAutocomplete_suggestionTitle_text_"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    const/16 v25, 0x0

    const v26, 0x1fff8

    move-object v13, v5

    move-object v5, v6

    move-object v12, v7

    iget-wide v6, v4, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;->a:J

    move-object/from16 v23, v8

    move v14, v9

    const-wide/16 v8, 0x0

    move-object/from16 v22, v10

    const/4 v10, 0x0

    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move-object v4, v12

    const-wide/16 v11, 0x0

    move-object/from16 v21, v13

    const/4 v13, 0x0

    move/from16 v24, v14

    const/4 v14, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x1

    const-wide/16 v15, 0x0

    const/16 v32, 0x0

    const/16 v17, 0x0

    const/16 v33, 0x2

    const/16 v18, 0x0

    move-object/from16 v34, v19

    const/16 v19, 0x0

    move-object/from16 v35, v20

    const/16 v20, 0x0

    move-object/from16 v36, v21

    const/16 v21, 0x0

    move/from16 v37, v24

    const/16 v24, 0x0

    move-object/from16 v38, v0

    move/from16 p3, v2

    move-object/from16 v2, v34

    move-object/from16 v0, v35

    move-object/from16 v3, v36

    move/from16 v1, v37

    const/16 v31, 0x100

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static/range {v23 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    invoke-static/range {v23 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v8, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x2

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addressAutocomplete_suggestionDescription_text_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;->c:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    iget-wide v6, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;->b:J

    const-wide/16 v8, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v4, 0x0

    const/4 v12, 0x2

    invoke-static {v1, v2, v4, v12}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AutocompleteSuggestionListConfiguration;->c:J

    move-object/from16 v8, v23

    invoke-static/range {v4 .. v10}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v4, v0

    move-object v5, v3

    move/from16 v9, v29

    move/from16 v7, v30

    move/from16 v6, v31

    move-object/from16 v0, v38

    move-object/from16 v3, p2

    goto/16 :goto_7

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v27

    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v27

    :cond_d
    move v0, v10

    const/4 v1, 0x1

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_c

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v27

    :cond_f
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v0, Lu;

    const/4 v5, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method
