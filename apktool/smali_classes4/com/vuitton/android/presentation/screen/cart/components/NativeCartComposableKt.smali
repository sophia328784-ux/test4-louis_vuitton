.class public abstract Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u00a8\u0006\u000f\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\n\u001a\u0004\u0018\u00010\t8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\r\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0012\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;",
        "packaging",
        "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;",
        "reinsurance",
        "Lkotlin/Function0;",
        "",
        "cartAuthAction",
        "Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen;",
        "currentBottomSheet",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;",
        "currentCartItem",
        "currentReinsuranceItem",
        "currentOnBackPressed",
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
.method public static final a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v7, p7

    const v0, 0x201006ea

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v0, v7, 0x6

    const/4 v8, 0x4

    if-nez v0, :cond_2

    and-int/lit8 v0, v7, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v7

    goto :goto_2

    :cond_2
    move v0, v7

    :goto_2
    and-int/lit8 v3, v7, 0x30

    if-nez v3, :cond_4

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_3

    :cond_3
    const/16 v3, 0x10

    :goto_3
    or-int/2addr v0, v3

    :cond_4
    and-int/lit16 v3, v7, 0x180

    if-nez v3, :cond_7

    and-int/lit16 v3, v7, 0x200

    if-nez v3, :cond_5

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4

    :cond_5
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_6

    const/16 v3, 0x100

    goto :goto_5

    :cond_6
    const/16 v3, 0x80

    :goto_5
    or-int/2addr v0, v3

    :cond_7
    and-int/lit16 v3, v7, 0xc00

    move-object/from16 v4, p3

    if-nez v3, :cond_9

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x800

    goto :goto_6

    :cond_8
    const/16 v3, 0x400

    :goto_6
    or-int/2addr v0, v3

    :cond_9
    and-int/lit16 v3, v7, 0x6000

    move-object/from16 v5, p4

    if-nez v3, :cond_b

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x4000

    goto :goto_7

    :cond_a
    const/16 v3, 0x2000

    :goto_7
    or-int/2addr v0, v3

    :cond_b
    const/high16 v3, 0x30000

    and-int/2addr v3, v7

    move-object/from16 v9, p5

    if-nez v3, :cond_d

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v3, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v3, 0x10000

    :goto_8
    or-int/2addr v0, v3

    :cond_d
    move v10, v0

    const v0, 0x12493

    and-int/2addr v0, v10

    const v3, 0x12492

    const/4 v11, 0x0

    if-eq v0, v3, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    move v0, v11

    :goto_9
    and-int/lit8 v3, v10, 0x1

    invoke-virtual {v15, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lse0;

    const/4 v1, 0x0

    move-object v3, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lse0;-><init>(ILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const v1, -0x4d99cc01

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const v1, 0x7f140e92

    const-string v2, "CartTopAppBar"

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v6, :cond_10

    const v4, 0x29212d74

    invoke-static {v15, v4, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_f

    new-instance v4, Lbe0;

    invoke-direct {v4, v8}, Lbe0;-><init>(I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v11, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v15, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x180

    const/16 v17, 0xf8

    move v1, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v0

    move v0, v1

    invoke-static/range {v8 .. v17}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_10
    move-object v4, v0

    move v0, v11

    const v5, 0x29278ec4

    invoke-static {v15, v5, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_11

    new-instance v5, Lbe0;

    const/4 v3, 0x5

    invoke-direct {v5, v3}, Lbe0;-><init>(I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v0, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v15, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    shl-int/lit8 v1, v10, 0x3

    const/high16 v2, 0x380000

    and-int/2addr v1, v2

    const/high16 v2, 0xc00000

    or-int v20, v1, v2

    const/16 v21, 0x0

    const/16 v22, 0xf36

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p5

    move-object/from16 v19, v15

    move-object v15, v4

    invoke-static/range {v8 .. v22}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v19

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_13

    new-instance v0, Lp1;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v2, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lp1;-><init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v7, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7b7acf7c

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p13, v0

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    move-object/from16 v11, p5

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    move-object/from16 v12, p6

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v0, v2

    move-object/from16 v13, p7

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v2, 0x400000

    :goto_7
    or-int/2addr v0, v2

    move-object/from16 v2, p8

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/high16 v5, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v5, 0x2000000

    :goto_8
    or-int/2addr v0, v5

    move-object/from16 v5, p9

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v16, 0x10000000

    :goto_9
    or-int v0, v0, v16

    move-object/from16 v9, p10

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v17, 0x4

    :goto_a
    move-object/from16 v6, p11

    goto :goto_b

    :cond_a
    const/16 v17, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v3, 0x20

    :cond_b
    or-int v31, v17, v3

    const v3, 0x12492493

    and-int/2addr v3, v0

    const v10, 0x12492492

    const/16 v6, 0x12

    if-ne v3, v10, :cond_d

    and-int/lit8 v3, v31, 0x13

    if-eq v3, v6, :cond_c

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v3, 0x1

    :goto_d
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v10, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_44

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    invoke-static {v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    sget-object v4, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v14}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;->f3()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v21

    invoke-interface {v14}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;->r7()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v22

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v6, :cond_e

    invoke-static {v8}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v4

    :cond_e
    check-cast v4, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {v8}, Lcom/vuitton/android/presentation/compose/components/LifecycleEventKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v5

    move/from16 v25, v0

    const/4 v0, 0x7

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v8, v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v26

    invoke-static {v2, v0, v8, v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v32

    sget-object v0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->MAIN:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    move-object/from16 v2, p2

    if-ne v2, v0, :cond_f

    const/16 v28, 0x1

    goto :goto_e

    :cond_f
    const/16 v28, 0x0

    :goto_e
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    and-int/lit8 v9, v25, 0x70

    const/16 v2, 0x20

    if-eq v9, v2, :cond_10

    const/4 v2, 0x0

    goto :goto_f

    :cond_10
    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_11

    if-ne v9, v6, :cond_12

    :cond_11
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;

    const/4 v2, 0x0

    invoke-direct {v9, v14, v10, v2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xe

    if-ne v0, v6, :cond_13

    new-instance v0, Ldd0;

    invoke-direct {v0, v2}, Ldd0;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v0, Landroidx/compose/runtime/MutableState;

    new-instance v9, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v9}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_14

    new-instance v2, Lc30;

    move-object/from16 v30, v4

    const/16 v4, 0xe

    invoke-direct {v2, v4, v0}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_10

    :cond_14
    move-object/from16 v30, v4

    :goto_10
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v4, 0x30

    invoke-static {v9, v2, v8, v4}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v2

    new-instance v9, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v9}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    and-int/lit8 v4, v25, 0xe

    move-object/from16 v34, v0

    const/4 v0, 0x4

    if-eq v4, v0, :cond_15

    const/4 v0, 0x0

    goto :goto_11

    :cond_15
    const/4 v0, 0x1

    :goto_11
    or-int v0, v18, v0

    move/from16 v18, v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v18, :cond_16

    if-ne v0, v6, :cond_17

    :cond_16
    new-instance v0, Lk60;

    const/16 v11, 0x11

    invoke-direct {v0, v1, v10, v11}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    invoke-static {v9, v0, v8, v11}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v9

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->j:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_19

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v12, v0, Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;

    if-eqz v12, :cond_18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    move-object/from16 v12, p6

    move-object/from16 v0, v18

    goto :goto_12

    :cond_19
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_1a

    new-instance v0, Lbe0;

    const/4 v11, 0x3

    invoke-direct {v0, v11}, Lbe0;-><init>(I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x5

    const/16 v12, 0x30

    invoke-static {v12, v11, v8, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v11

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_1b

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_13

    :cond_1b
    const/16 v29, 0x0

    :goto_13
    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_1c

    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v6, :cond_1d

    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v18, :cond_1e

    if-ne v14, v6, :cond_1f

    :cond_1e
    new-instance v14, Lm8;

    const/4 v7, 0x4

    invoke-direct {v14, v11, v12, v7}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    move/from16 v18, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v18, :cond_20

    if-ne v7, v6, :cond_21

    :cond_20
    new-instance v7, Lr;

    invoke-direct {v7, v11, v12, v0, v13}, Lr;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v7, Lkotlin/jvm/functions/Function3;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    move/from16 v33, v0

    const/4 v0, 0x4

    if-eq v4, v0, :cond_22

    const/4 v0, 0x0

    goto :goto_14

    :cond_22
    const/4 v0, 0x1

    :goto_14
    or-int v0, v33, v0

    move/from16 v33, v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v33, :cond_24

    if-ne v0, v6, :cond_23

    goto :goto_15

    :cond_23
    move-object/from16 v33, v11

    goto :goto_16

    :cond_24
    :goto_15
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$2$1;

    move-object/from16 v33, v11

    const/4 v11, 0x0

    invoke-direct {v0, v5, v1, v11}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$2$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v5, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x4

    if-eq v4, v0, :cond_25

    const/4 v0, 0x0

    goto :goto_17

    :cond_25
    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_26

    if-ne v5, v6, :cond_27

    :cond_26
    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$3$1;

    const/4 v0, 0x0

    invoke-direct {v5, v1, v7, v0}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v4, v0, :cond_28

    const/4 v0, 0x0

    goto :goto_18

    :cond_28
    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_2a

    if-ne v5, v6, :cond_29

    goto :goto_19

    :cond_29
    move-object v2, v3

    move-object/from16 v19, v12

    move-object/from16 v24, v13

    move-object/from16 v36, v14

    move-object/from16 v37, v18

    move/from16 v14, v25

    const/4 v13, 0x1

    move v12, v4

    move-object/from16 v18, v7

    move-object/from16 v7, v30

    goto :goto_1a

    :cond_2a
    :goto_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1;

    const/4 v5, 0x0

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v12

    move-object/from16 v24, v13

    move-object/from16 v36, v14

    move-object/from16 v37, v18

    move/from16 v14, v25

    const/4 v13, 0x1

    move v12, v4

    move-object/from16 v18, v7

    move-object/from16 v7, v30

    move-object/from16 v4, v34

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_1a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_2b

    const/4 v5, 0x0

    goto :goto_1b

    :cond_2b
    move v5, v13

    :goto_1b
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2c

    if-ne v3, v6, :cond_2d

    :cond_2c
    new-instance v3, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$5$1;

    const/4 v0, 0x0

    invoke-direct {v3, v1, v7, v2, v0}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v12, v0, :cond_2e

    const/4 v5, 0x0

    goto :goto_1c

    :cond_2e
    move v5, v13

    :goto_1c
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    and-int/lit16 v3, v14, 0x380

    const/16 v4, 0x100

    if-ne v3, v4, :cond_2f

    move v5, v13

    goto :goto_1d

    :cond_2f
    const/4 v5, 0x0

    :goto_1d
    or-int/2addr v0, v5

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_31

    if-ne v3, v6, :cond_30

    goto :goto_1e

    :cond_30
    move-object/from16 v16, v9

    move-object v5, v10

    const/16 v38, 0x12

    move-object v10, v2

    move-object v9, v6

    goto :goto_1f

    :cond_31
    :goto_1e
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$6$1;

    move-object v3, v6

    const/4 v6, 0x0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    move-object v9, v4

    move-object/from16 v4, p2

    move-object v5, v10

    const/16 v38, 0x12

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$6$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v2

    move-object v10, v3

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_1f
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v12, v0, :cond_32

    const/4 v0, 0x0

    goto :goto_20

    :cond_32
    move v0, v13

    :goto_20
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_34

    if-ne v2, v9, :cond_33

    goto :goto_21

    :cond_33
    const/4 v0, 0x0

    goto :goto_22

    :cond_34
    :goto_21
    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$7$1;

    const/4 v0, 0x0

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$7$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_22
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v8}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_35

    move-object/from16 v29, v0

    new-instance v0, Lhg;

    move-object/from16 v3, p9

    move-object v4, v1

    move-object/from16 v2, v26

    move/from16 v1, v28

    invoke-direct/range {v0 .. v6}, Lhg;-><init>(ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v39, v2

    move-object v11, v5

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x1041157d

    invoke-direct {v2, v3, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_23

    :cond_35
    move-object/from16 v29, v0

    move-object v11, v5

    move-object/from16 v39, v26

    move/from16 v1, v28

    :goto_23
    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    const/16 v3, 0x36

    if-eqz v2, :cond_36

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v2, :cond_37

    :cond_36
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->e:Z

    if-eqz v2, :cond_38

    :cond_37
    const v1, 0x78faa470

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v7, v0, v8, v3}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartLoadingScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_24
    move-object v15, v9

    move-object/from16 v42, v11

    move-object/from16 p12, v19

    move-object/from16 v41, v24

    move-object/from16 v3, v27

    move-object/from16 v40, v33

    move-object v11, v8

    move/from16 v33, v14

    goto/16 :goto_2a

    :cond_38
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->f:Z

    if-eqz v2, :cond_3c

    const v1, 0x78fd67bf

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v1, 0x4

    if-eq v12, v1, :cond_39

    const/4 v5, 0x0

    goto :goto_25

    :cond_39
    move v5, v13

    :goto_25
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_3a

    if-ne v1, v9, :cond_3b

    :cond_3a
    move-object/from16 v17, v0

    goto :goto_26

    :cond_3b
    move-object v12, v0

    move v10, v3

    goto :goto_27

    :goto_26
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$8$1;

    const-string v5, "getCartFull()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v2, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v4, "getCartFull"

    move v10, v2

    move-object/from16 v12, v17

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_27
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v7, v12, v1, v8, v10}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_24

    :cond_3c
    move-object v12, v0

    move v2, v3

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->g:Z

    if-eqz v0, :cond_3d

    const v0, 0x7900e207

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v0, v14, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v2

    move-object/from16 v2, p4

    invoke-static {v7, v12, v2, v8, v0}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartEmptyScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_24

    :cond_3d
    move-object/from16 v2, p4

    const v0, 0x79064afa

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v0, :cond_3e

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    move-object/from16 v29, v0

    :cond_3e
    check-cast v29, Ljava/util/Collection;

    if-eqz v29, :cond_40

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_28

    :cond_3f
    const/4 v5, 0x0

    goto :goto_29

    :cond_40
    :goto_28
    move v5, v13

    :goto_29
    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v26

    new-instance v0, Lq70;

    move-object/from16 v6, p0

    move v2, v1

    move v1, v5

    move-object/from16 v5, v20

    move-object/from16 v13, v22

    move-wide/from16 v22, v3

    move-object v4, v11

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v6}, Lq70;-><init>(ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;)V

    move-object v5, v4

    const v2, 0x7151a336

    invoke-static {v2, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    new-instance v0, Lae0;

    const/4 v2, 0x2

    invoke-direct {v0, v7, v2}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v2, -0x52ada02b

    invoke-static {v2, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/b;

    move-object/from16 v2, p0

    move-object/from16 v6, p5

    move-object/from16 v11, p11

    move-object v7, v5

    move-object v15, v9

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v10, v18

    move-object/from16 p12, v19

    move-object/from16 v41, v24

    move-object/from16 v3, v27

    move-object/from16 v40, v33

    move-object/from16 v9, p7

    move/from16 v33, v14

    move-object/from16 v18, v17

    move-object v14, v8

    move-object/from16 v17, v12

    move-object/from16 v12, v21

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/cart/components/b;-><init>(ZLcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v42, v7

    const v1, -0x2e4e8b54

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v27

    const v29, 0x30000db0

    const/16 v30, 0xb1

    const/16 v16, 0x0

    move-object/from16 v19, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v28, v14

    invoke-static/range {v16 .. v30}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v28

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2a
    invoke-virtual/range {v40 .. v40}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v0

    if-eqz v0, :cond_43

    const v0, 0x7950249e

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "NativeCartComposable"

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const v0, 0x7f140319

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_42

    if-ne v1, v15, :cond_41

    goto :goto_2b

    :cond_41
    move-object/from16 v2, p12

    move-object/from16 v7, v41

    goto :goto_2c

    :cond_42
    :goto_2b
    new-instance v1, Lpp;

    const/16 v0, 0x19

    move-object/from16 v2, p12

    move-object/from16 v7, v41

    invoke-direct {v1, v3, v2, v7, v0}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2c
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/c;

    move-object/from16 v4, p0

    move-object/from16 v5, p8

    move-object v1, v2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v6, v37

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/cart/components/c;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v1, 0x1c9b194b

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x9

    const/high16 v2, 0x6000000

    or-int v12, v1, v2

    const/16 v13, 0xf0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v8

    const/4 v8, 0x0

    move-object v2, v9

    const/4 v9, 0x0

    move-object v3, v10

    move-object/from16 v4, v40

    move-object v10, v0

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2d

    :cond_43
    const/4 v2, 0x0

    const v0, 0x795fd606

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2d
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->n:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v2, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    shr-int/lit8 v2, v33, 0x12

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v0, v2

    shl-int/lit8 v2, v31, 0xc

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int v7, v0, v2

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object v6, v11

    move-object/from16 v3, v32

    move-object/from16 v2, v39

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_2e

    :cond_44
    move-object v11, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_45

    new-instance v0, Lle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lle;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_45
    return-void
.end method
