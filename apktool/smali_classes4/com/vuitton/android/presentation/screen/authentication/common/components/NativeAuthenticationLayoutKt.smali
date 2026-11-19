.class public abstract Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$WhenMappings;
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


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/focus/FocusManager;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;ZLjava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object/from16 v1, p4

    move-object/from16 v9, p8

    move/from16 v2, p17

    move/from16 v3, p18

    move/from16 v5, p19

    const-string v6, "NativeAuthenticationLayout"

    if-eqz v0, :cond_0

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x4fc16ebc

    move-object/from16 v8, p16

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    or-int/lit8 v8, v2, 0x6

    and-int/lit8 v10, v2, 0x30

    if-nez v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x20

    goto :goto_0

    :cond_1
    const/16 v10, 0x10

    :goto_0
    or-int/2addr v8, v10

    :cond_2
    and-int/lit16 v10, v2, 0x180

    if-nez v10, :cond_4

    move-object/from16 v10, p2

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0x100

    goto :goto_1

    :cond_3
    const/16 v15, 0x80

    :goto_1
    or-int/2addr v8, v15

    goto :goto_2

    :cond_4
    move-object/from16 v10, p2

    :goto_2
    and-int/lit16 v15, v2, 0xc00

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-nez v15, :cond_6

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move/from16 v15, v17

    goto :goto_3

    :cond_5
    move/from16 v15, v16

    :goto_3
    or-int/2addr v8, v15

    :cond_6
    and-int/lit8 v15, v5, 0x10

    const/16 v18, 0x2000

    const/16 v19, 0x4000

    if-eqz v15, :cond_7

    or-int/lit16 v8, v8, 0x6000

    goto :goto_6

    :cond_7
    and-int/lit16 v11, v2, 0x6000

    if-nez v11, :cond_a

    const v11, 0x8000

    and-int/2addr v11, v2

    if-nez v11, :cond_8

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_4

    :cond_8
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    :goto_4
    if-eqz v11, :cond_9

    move/from16 v11, v19

    goto :goto_5

    :cond_9
    move/from16 v11, v18

    :goto_5
    or-int/2addr v8, v11

    :cond_a
    :goto_6
    and-int/lit8 v11, v5, 0x20

    const/high16 v20, 0x10000

    const/high16 v21, 0x20000

    const/high16 v22, 0x30000

    if-eqz v11, :cond_b

    or-int v8, v8, v22

    move-object/from16 v12, p5

    goto :goto_8

    :cond_b
    and-int v23, v2, v22

    move-object/from16 v12, p5

    if-nez v23, :cond_d

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    move/from16 v23, v21

    goto :goto_7

    :cond_c
    move/from16 v23, v20

    :goto_7
    or-int v8, v8, v23

    :cond_d
    :goto_8
    const/high16 v23, 0x180000

    and-int v23, v2, v23

    move/from16 v13, p6

    if-nez v23, :cond_f

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v24

    if-eqz v24, :cond_e

    const/high16 v24, 0x100000

    goto :goto_9

    :cond_e
    const/high16 v24, 0x80000

    :goto_9
    or-int v8, v8, v24

    :cond_f
    and-int/lit16 v14, v5, 0x80

    const/high16 v25, 0xc00000

    if-eqz v14, :cond_11

    or-int v8, v8, v25

    :cond_10
    move-object/from16 v25, v0

    move-object/from16 v0, p7

    goto :goto_b

    :cond_11
    and-int v25, v2, v25

    if-nez v25, :cond_10

    move-object/from16 v25, v0

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    const/high16 v26, 0x800000

    goto :goto_a

    :cond_12
    const/high16 v26, 0x400000

    :goto_a
    or-int v8, v8, v26

    :goto_b
    const/high16 v26, 0x6000000

    and-int v26, v2, v26

    if-nez v26, :cond_14

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x4000000

    goto :goto_c

    :cond_13
    const/high16 v26, 0x2000000

    :goto_c
    or-int v8, v8, v26

    :cond_14
    and-int/lit16 v0, v5, 0x200

    const/high16 v26, 0x30000000

    if-eqz v0, :cond_16

    or-int v8, v8, v26

    :cond_15
    move/from16 v26, v0

    move-object/from16 v0, p9

    goto :goto_e

    :cond_16
    and-int v26, v2, v26

    if-nez v26, :cond_15

    move/from16 v26, v0

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    const/high16 v27, 0x20000000

    goto :goto_d

    :cond_17
    const/high16 v27, 0x10000000

    :goto_d
    or-int v8, v8, v27

    :goto_e
    and-int/lit16 v0, v5, 0x400

    const/16 v27, 0x4

    move/from16 v28, v0

    if-eqz v28, :cond_18

    or-int/lit8 v29, v3, 0x6

    move-object/from16 v0, p10

    move/from16 v30, v29

    goto :goto_10

    :cond_18
    and-int/lit8 v29, v3, 0x6

    move-object/from16 v0, p10

    if-nez v29, :cond_1a

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    move/from16 v30, v27

    goto :goto_f

    :cond_19
    const/16 v30, 0x2

    :goto_f
    or-int v30, v3, v30

    goto :goto_10

    :cond_1a
    move/from16 v30, v3

    :goto_10
    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_1c

    or-int/lit8 v30, v30, 0x30

    :cond_1b
    move/from16 v31, v0

    move-object/from16 v0, p11

    goto :goto_12

    :cond_1c
    and-int/lit8 v31, v3, 0x30

    if-nez v31, :cond_1b

    move/from16 v31, v0

    move-object/from16 v0, p11

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    const/16 v32, 0x20

    goto :goto_11

    :cond_1d
    const/16 v32, 0x10

    :goto_11
    or-int v30, v30, v32

    :goto_12
    and-int/lit16 v0, v3, 0x180

    if-nez v0, :cond_1f

    move-object/from16 v0, p12

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1e

    const/16 v23, 0x100

    goto :goto_13

    :cond_1e
    const/16 v23, 0x80

    :goto_13
    or-int v30, v30, v23

    goto :goto_14

    :cond_1f
    move-object/from16 v0, p12

    :goto_14
    and-int/lit16 v0, v3, 0xc00

    if-nez v0, :cond_21

    move-object/from16 v0, p13

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    move/from16 v16, v17

    :cond_20
    or-int v30, v30, v16

    :goto_15
    move/from16 v0, v30

    goto :goto_16

    :cond_21
    move-object/from16 v0, p13

    goto :goto_15

    :goto_16
    and-int/lit16 v1, v5, 0x4000

    if-eqz v1, :cond_23

    or-int/lit16 v0, v0, 0x6000

    move/from16 v16, v0

    :cond_22
    move/from16 v0, p14

    goto :goto_17

    :cond_23
    move/from16 v16, v0

    and-int/lit16 v0, v3, 0x6000

    if-nez v0, :cond_22

    move/from16 v0, p14

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_24

    move/from16 v18, v19

    :cond_24
    or-int v16, v16, v18

    :goto_17
    and-int v17, v3, v22

    move-object/from16 v0, p15

    if-nez v17, :cond_26

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    move/from16 v20, v21

    :cond_25
    or-int v16, v16, v20

    :cond_26
    const v17, 0x12492493

    and-int v0, v8, v17

    move/from16 v17, v1

    const v1, 0x12492492

    const/16 v18, 0x0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_28

    const v0, 0x12493

    and-int v0, v16, v0

    const v1, 0x12492

    if-eq v0, v1, :cond_27

    goto :goto_18

    :cond_27
    move/from16 v0, v18

    goto :goto_19

    :cond_28
    :goto_18
    move v0, v2

    :goto_19
    and-int/lit8 v1, v8, 0x1

    invoke-virtual {v7, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move/from16 v6, v17

    if-eqz v15, :cond_29

    move-object/from16 v17, v1

    goto :goto_1a

    :cond_29
    move-object/from16 v17, p4

    :goto_1a
    move/from16 v8, v27

    if-eqz v11, :cond_2a

    move-object/from16 v27, v1

    goto :goto_1b

    :cond_2a
    move-object/from16 v27, v12

    :goto_1b
    move/from16 v11, v28

    if-eqz v14, :cond_2b

    move-object/from16 v28, v1

    goto :goto_1c

    :cond_2b
    move-object/from16 v28, p7

    :goto_1c
    if-eqz v26, :cond_2c

    move-object v12, v1

    goto :goto_1d

    :cond_2c
    move-object/from16 v12, p9

    :goto_1d
    if-eqz v11, :cond_2d

    move-object/from16 v30, v1

    goto :goto_1e

    :cond_2d
    move-object/from16 v30, p10

    :goto_1e
    move/from16 v11, v18

    if-eqz v31, :cond_2e

    move-object/from16 v18, v1

    goto :goto_1f

    :cond_2e
    move-object/from16 v18, p11

    :goto_1f
    if-eqz v6, :cond_2f

    move v6, v11

    goto :goto_20

    :cond_2f
    move/from16 v6, p14

    :goto_20
    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v14, :cond_30

    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v11, v7}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object/from16 v25, v11

    check-cast v25, Lkotlinx/coroutines/CoroutineScope;

    sget-object v11, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v11, v15

    const/4 v8, 0x3

    if-eq v15, v2, :cond_33

    const/4 v2, 0x2

    if-eq v15, v2, :cond_32

    if-ne v15, v8, :cond_31

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;->b:Ljava/util/List;

    :goto_21
    move-object/from16 v21, v1

    move/from16 p5, v6

    move-object/from16 p9, v11

    move-object/from16 v29, v12

    const/4 v3, 0x2

    goto/16 :goto_23

    :cond_31
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_32
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;->a:Ljava/util/List;

    goto :goto_21

    :cond_33
    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;->a:Ljava/util/List;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v15, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140e43

    const/4 v3, 0x2

    invoke-direct {v15, v8, v1, v3, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140e1f

    invoke-direct {v8, v5, v1, v3, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "nativeRegister_title_text"

    const-string v1, "nativeRegister_description_text"

    invoke-direct {v2, v15, v8, v5, v1}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v15, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    move/from16 p5, v6

    const v6, 0x7f140e44

    const/4 v10, 0x0

    invoke-direct {v15, v6, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    move-object/from16 p9, v11

    const v11, 0x7f140e20

    invoke-direct {v6, v11, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v8, v15, v6, v5, v1}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_34

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v11, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v15, 0x7f140e42

    invoke-direct {v11, v15, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    move-object/from16 v29, v12

    const v12, 0x7f140e23

    invoke-direct {v15, v12, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v6, v11, v15, v5, v1}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_34
    move-object/from16 v29, v12

    move-object v6, v10

    :goto_22
    new-instance v11, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v15, 0x7f140e44

    invoke-direct {v12, v15, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v13, 0x7f140e21

    invoke-direct {v15, v13, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v11, v12, v15, v5, v1}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v12, 0x7f140e41

    invoke-direct {v5, v12, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v13, 0x7f140e22

    invoke-direct {v12, v13, v10, v3, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v10, "nativeRegister_titleActivateAccount_text"

    const-string v13, "nativeRegister_descriptionActivationCode_text"

    invoke-direct {v1, v5, v12, v10, v13}, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v8, v6, v11, v1}, [Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v21, v1

    :goto_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, p9, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_37

    if-eq v1, v3, :cond_36

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_24
    move/from16 v20, v1

    goto :goto_25

    :cond_35
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_36
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitleKt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_24

    :cond_37
    if-eqz p5, :cond_38

    const/4 v1, 0x5

    goto :goto_24

    :cond_38
    const/16 v20, 0x4

    :goto_25
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_39

    if-ne v3, v14, :cond_3a

    :cond_39
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1;

    invoke-direct {v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$1$1;-><init>(Landroidx/compose/ui/focus/FocusManager;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3a
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v0, v1, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    new-instance v1, Lae0;

    const/4 v2, 0x1

    invoke-direct {v1, v9, v2}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v2, -0x28940d7e

    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    new-instance v15, Lle0;

    move-object/from16 v23, p1

    move-object/from16 v19, p2

    move/from16 v16, p6

    move-object/from16 v24, p12

    move-object/from16 v22, p13

    move-object/from16 v26, p15

    invoke-direct/range {v15 .. v30}, Lle0;-><init>(ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;ILjava/util/List;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    const v3, -0x167b1e35

    invoke-static {v3, v15, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const v23, 0x30000c00

    const/16 v24, 0x1f6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v7

    invoke-static/range {v10 .. v24}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move/from16 v15, p5

    move-object v5, v1

    move-object v12, v2

    move-object/from16 v6, v27

    move-object/from16 v8, v28

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-object v1, v0

    goto :goto_26

    :cond_3b
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p14

    move-object v6, v12

    move-object/from16 v1, v25

    move-object/from16 v12, p11

    :goto_26
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3c

    move-object v2, v0

    new-instance v0, Lme0;

    move-object/from16 v3, p2

    move/from16 v7, p6

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v33, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v19}, Lme0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/focus/FocusManager;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;ZLjava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;III)V

    move-object/from16 v2, v33

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3c
    return-void
.end method
