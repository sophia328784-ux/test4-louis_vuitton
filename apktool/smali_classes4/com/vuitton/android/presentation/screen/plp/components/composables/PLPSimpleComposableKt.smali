.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V
    .locals 58

    move-object/from16 v2, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x51d0b6fb

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    and-int/lit8 v1, p7, 0x30

    move-object/from16 v10, p1

    if-nez v1, :cond_2

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    :cond_2
    move-object/from16 v12, p2

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v11, p3

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x800

    goto :goto_3

    :cond_4
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v3, p4

    goto :goto_5

    :cond_5
    move-object/from16 v3, p4

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x4000

    goto :goto_4

    :cond_6
    const/16 v4, 0x2000

    :goto_4
    or-int/2addr v0, v4

    :goto_5
    and-int/lit8 v4, p8, 0x20

    const/high16 v15, 0x30000

    if-eqz v4, :cond_7

    or-int/2addr v0, v15

    move/from16 v5, p5

    :goto_6
    move/from16 v16, v0

    goto :goto_8

    :cond_7
    move/from16 v5, p5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const/high16 v6, 0x20000

    goto :goto_7

    :cond_8
    const/high16 v6, 0x10000

    :goto_7
    or-int/2addr v0, v6

    goto :goto_6

    :goto_8
    const v0, 0x12493

    and-int v0, v16, v0

    const v6, 0x12492

    move/from16 p6, v15

    const/4 v14, 0x0

    if-eq v0, v6, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    move v0, v14

    :goto_9
    and-int/lit8 v6, v16, 0x1

    invoke-virtual {v7, v6, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x0

    if-eqz v1, :cond_a

    move-object/from16 v18, v0

    goto :goto_a

    :cond_a
    move-object/from16 v18, v3

    :goto_a
    if-eqz v4, :cond_b

    move/from16 v19, v14

    goto :goto_b

    :cond_b
    move/from16 v19, v5

    :goto_b
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    sget-object v1, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v3, v0, v7, v14, v4}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    new-instance v20, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v33, 0xfff

    const/16 v34, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v20 .. v34}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v20

    invoke-static {v6, v0, v7}, Landroidx/lifecycle/compose/FlowExtKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    if-eqz v19, :cond_f

    if-eqz v4, :cond_d

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    :goto_c
    if-nez v4, :cond_e

    :cond_d
    const-string v4, "LVPass/products_catalog/productlist"

    :cond_e
    iget v6, v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->f:I

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v13, "product_list."

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".["

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;

    const-string v13, "plp.most_purchased_with"

    const-string v14, "preview.most_purchased_with"

    invoke-direct {v6, v4, v13, v4, v14}, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v6

    goto :goto_10

    :cond_f
    new-instance v13, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;

    const-string v14, ""

    if-nez v4, :cond_10

    move-object v8, v14

    goto :goto_d

    :cond_10
    move-object v8, v4

    :goto_d
    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    if-nez v6, :cond_11

    move-object v15, v14

    goto :goto_e

    :cond_11
    move-object v15, v6

    :goto_e
    if-nez v4, :cond_12

    move-object v4, v14

    :cond_12
    if-nez v6, :cond_13

    goto :goto_f

    :cond_13
    move-object v14, v6

    :goto_f
    invoke-direct {v13, v8, v15, v4, v14}, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    sget-object v14, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->g()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v11

    and-int/lit8 v3, v16, 0xe

    if-eq v3, v9, :cond_14

    const/4 v4, 0x0

    goto :goto_11

    :cond_14
    const/4 v4, 0x1

    :goto_11
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_15

    if-ne v6, v9, :cond_16

    :cond_15
    move v4, v0

    goto :goto_12

    :cond_16
    move-object v10, v1

    move v12, v3

    move-object/from16 p5, v8

    move-object/from16 p4, v11

    move-object/from16 v25, v14

    const/4 v14, 0x7

    move v11, v0

    move-object v8, v5

    goto :goto_13

    :goto_12
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt$PLPSimpleComposable$1$1;

    move-object v6, v5

    const-string v5, "refreshWishlist()V"

    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v26, v1

    const/4 v1, 0x0

    move/from16 v27, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    move/from16 v28, v4

    const-string v4, "refreshWishlist"

    move-object/from16 p5, v8

    move-object/from16 p4, v11

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    move/from16 v12, v27

    move/from16 v11, v28

    move-object/from16 v25, v14

    const/4 v14, 0x7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :goto_13
    move-object/from16 v26, v6

    check-cast v26, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_17

    const/4 v0, 0x0

    goto :goto_14

    :cond_17
    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_18

    if-ne v1, v9, :cond_19

    :cond_18
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt$PLPSimpleComposable$2$1;

    const-string v5, "updateCurrentGridMode(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    const-string v4, "updateCurrentGridMode"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_19
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_15

    :cond_1a
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1c

    if-ne v1, v9, :cond_1b

    goto :goto_16

    :cond_1b
    move-object/from16 v2, p0

    goto :goto_17

    :cond_1c
    :goto_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt$PLPSimpleComposable$3$1;

    const-string v5, "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    const-string v4, "onWishlistAnimationEnded"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_17
    check-cast v1, Lkotlin/reflect/KFunction;

    new-instance v6, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v6, v11}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    check-cast v26, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_18

    :cond_1d
    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    const/16 v11, 0x15

    if-nez v0, :cond_1e

    if-ne v3, v9, :cond_1f

    :cond_1e
    new-instance v3, Lrh0;

    invoke-direct {v3, v2, v8, v11}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v28, v3

    check-cast v28, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_20

    new-instance v0, Lyk0;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lyk0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v29, v0

    check-cast v29, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_21

    const/4 v0, 0x0

    goto :goto_19

    :cond_21
    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_22

    if-ne v3, v9, :cond_23

    :cond_22
    new-instance v3, Lel0;

    const/4 v0, 0x1

    invoke-direct {v3, v2, v0}, Lel0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v30, v3

    check-cast v30, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_24

    if-ne v3, v9, :cond_25

    :cond_24
    new-instance v3, Lje;

    invoke-direct {v3, v8, v11}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v31, v3

    check-cast v31, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_26

    const/4 v0, 0x0

    goto :goto_1a

    :cond_26
    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_27

    if-ne v3, v9, :cond_28

    :cond_27
    new-instance v3, Lel0;

    const/4 v0, 0x2

    invoke-direct {v3, v2, v0}, Lel0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    move-object/from16 v32, v3

    check-cast v32, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_29

    new-instance v0, Lyk0;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lyk0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    move-object/from16 v33, v0

    check-cast v33, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_2a

    new-instance v0, Lyk0;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Lyk0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v34, v0

    check-cast v34, Lkotlin/jvm/functions/Function1;

    check-cast v27, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x6

    if-ne v0, v9, :cond_2b

    new-instance v0, Lyk0;

    invoke-direct {v0, v3}, Lyk0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v35, v0

    check-cast v35, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_2c

    new-instance v0, Laj0;

    const/16 v4, 0xd

    invoke-direct {v0, v4}, Laj0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v36, v0

    check-cast v36, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_2d

    new-instance v0, Lyk0;

    invoke-direct {v0, v14}, Lyk0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object v14, v0

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0xc

    if-ne v0, v9, :cond_2e

    new-instance v0, Laj0;

    invoke-direct {v0, v4}, Laj0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v37, v0

    check-cast v37, Lkotlin/jvm/functions/Function2;

    move-object/from16 v38, v1

    check-cast v38, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_2f

    const/4 v0, 0x0

    goto :goto_1b

    :cond_2f
    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_30

    if-ne v1, v9, :cond_31

    :cond_30
    new-instance v1, Lbl0;

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lbl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    move-object/from16 v39, v1

    check-cast v39, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_32

    new-instance v0, Lyk0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lyk0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_32
    move-object/from16 v40, v0

    check-cast v40, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_33

    const/4 v0, 0x0

    goto :goto_1c

    :cond_33
    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_34

    if-ne v1, v9, :cond_35

    :cond_34
    new-instance v1, Lbl0;

    const/4 v0, 0x2

    invoke-direct {v1, v2, v0}, Lbl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_35
    move-object/from16 v41, v1

    check-cast v41, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_36

    const/4 v0, 0x0

    goto :goto_1d

    :cond_36
    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_37

    if-ne v1, v9, :cond_38

    :cond_37
    new-instance v1, Lxe0;

    invoke-direct {v1, v2, v3}, Lxe0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_38
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function3;

    const v0, 0xe000

    and-int v0, v16, v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_39

    const/4 v0, 0x1

    goto :goto_1e

    :cond_39
    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int v1, v16, v1

    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_3a

    const/4 v1, 0x1

    goto :goto_1f

    :cond_3a
    const/4 v1, 0x0

    :goto_1f
    or-int/2addr v0, v1

    const/4 v3, 0x4

    if-eq v12, v3, :cond_3b

    const/4 v1, 0x0

    goto :goto_20

    :cond_3b
    const/4 v1, 0x1

    :goto_20
    or-int/2addr v0, v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3d

    if-ne v1, v9, :cond_3c

    goto :goto_21

    :cond_3c
    move-object v0, v1

    move-object v1, v2

    move v8, v4

    move-object v2, v13

    move-object/from16 v56, v18

    move/from16 v57, v19

    goto :goto_22

    :cond_3d
    :goto_21
    new-instance v0, Lod;

    move-object v5, v8

    move-object/from16 v1, v18

    move/from16 v3, v19

    move v8, v4

    move-object v4, v2

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lod;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;ZLcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;Landroid/content/Context;)V

    move-object/from16 v56, v1

    move/from16 v57, v3

    move-object v1, v4

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_22
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_3e

    new-instance v3, Lii0;

    invoke-direct {v3, v11}, Lii0;-><init>(I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3e
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_3f

    new-instance v4, Lii0;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lii0;-><init>(I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x4

    if-eq v12, v5, :cond_40

    const/4 v5, 0x0

    goto :goto_23

    :cond_40
    const/4 v5, 0x1

    :goto_23
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_41

    if-ne v11, v9, :cond_42

    :cond_41
    new-instance v11, Ldl0;

    const/4 v5, 0x2

    invoke-direct {v11, v1, v5}, Ldl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    if-eq v12, v5, :cond_43

    const/4 v5, 0x0

    goto :goto_24

    :cond_43
    const/4 v5, 0x1

    :goto_24
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v5, :cond_44

    if-ne v13, v9, :cond_45

    :cond_44
    new-instance v13, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt$PLPSimpleComposable$23$1;

    invoke-direct {v13, v1}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt$PLPSimpleComposable$23$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;)V

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_45
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_46

    new-instance v5, Lyk0;

    move/from16 v17, v8

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Lyk0;-><init>(I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_25

    :cond_46
    move/from16 v17, v8

    :goto_25
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    if-eq v12, v8, :cond_47

    const/4 v8, 0x0

    :goto_26
    move-object/from16 v18, v0

    goto :goto_27

    :cond_47
    const/4 v8, 0x1

    goto :goto_26

    :goto_27
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v8, :cond_48

    if-ne v0, v9, :cond_49

    :cond_48
    new-instance v0, Lbl0;

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8}, Lbl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_49
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v9, :cond_4a

    new-instance v8, Lii0;

    move-object/from16 v19, v0

    const/16 v0, 0x14

    invoke-direct {v8, v0}, Lii0;-><init>(I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_28

    :cond_4a
    move-object/from16 v19, v0

    :goto_28
    move-object/from16 v43, v8

    check-cast v43, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_4b

    const/4 v0, 0x0

    goto :goto_29

    :cond_4b
    const/4 v0, 0x1

    :goto_29
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v0, v8

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_4c

    if-ne v8, v9, :cond_4d

    :cond_4c
    new-instance v8, Lcl0;

    const/4 v0, 0x0

    invoke-direct {v8, v1, v2, v10, v0}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4d
    move-object/from16 v44, v8

    check-cast v44, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_4e

    const/4 v0, 0x0

    goto :goto_2a

    :cond_4e
    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_4f

    if-ne v2, v9, :cond_50

    :cond_4f
    new-instance v2, Ldl0;

    const/4 v8, 0x0

    invoke-direct {v2, v1, v8}, Ldl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_50
    move-object/from16 v45, v2

    check-cast v45, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_51

    const/4 v0, 0x0

    goto :goto_2b

    :cond_51
    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_53

    if-ne v2, v9, :cond_52

    goto :goto_2c

    :cond_52
    const/4 v0, 0x1

    goto :goto_2d

    :cond_53
    :goto_2c
    new-instance v2, Ldl0;

    const/4 v0, 0x1

    invoke-direct {v2, v1, v0}, Ldl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2d
    move-object/from16 v46, v2

    check-cast v46, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    if-eq v12, v8, :cond_54

    const/4 v0, 0x0

    :cond_54
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_55

    if-ne v2, v9, :cond_56

    :cond_55
    new-instance v2, Lel0;

    const/4 v8, 0x0

    invoke-direct {v2, v1, v8}, Lel0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_56
    move-object/from16 v47, v2

    check-cast v47, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v0, v16, 0x6

    and-int/lit16 v0, v0, 0x1c00

    const v2, 0x61b6180

    or-int v49, v0, v2

    shr-int/lit8 v0, v16, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int v0, v0, p6

    const/high16 v2, 0x1c00000

    shl-int/lit8 v8, v16, 0xc

    and-int/2addr v2, v8

    or-int v50, v0, v2

    const v54, 0x14001

    const/16 v55, 0x14

    const/4 v1, 0x0

    move-object/from16 v0, v37

    move-object/from16 v37, v3

    const/4 v3, 0x0

    move-object/from16 v21, v32

    move-object/from16 v32, v41

    move-object/from16 v41, v5

    const/4 v5, 0x0

    move-object v10, v6

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v8, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v23, v34

    const/16 v34, 0x0

    move-object/from16 v20, v31

    move-object/from16 v31, v40

    move-object/from16 v40, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v36

    const/16 v36, 0x0

    const v51, 0xdb61b0

    const v52, 0xd80006

    const/16 v53, 0x186

    move-object/from16 v12, p2

    move-object/from16 v2, p5

    move-object/from16 v48, v7

    move-object/from16 v7, v25

    move-object/from16 v24, v27

    move-object/from16 v16, v29

    move-object/from16 v22, v33

    move-object/from16 v25, v35

    move-object/from16 v29, v38

    move-object/from16 v33, v42

    move-object/from16 v38, v4

    move-object/from16 v27, v14

    move-object/from16 v35, v18

    move-object/from16 v42, v19

    move-object/from16 v14, v28

    move-object/from16 v19, v30

    move-object/from16 v30, v39

    move-object/from16 v4, p1

    move-object/from16 v18, p3

    move-object/from16 v28, v0

    move-object/from16 v39, v11

    move-object/from16 v11, p4

    invoke-static/range {v1 .. v55}, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLandroidx/compose/ui/unit/Dp;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIIIIII)V

    move-object/from16 v5, v56

    move/from16 v6, v57

    goto :goto_2e

    :cond_57
    move-object/from16 v48, v7

    invoke-virtual/range {v48 .. v48}, Landroidx/compose/runtime/GapComposer;->D()V

    move v6, v5

    move-object v5, v3

    :goto_2e
    invoke-virtual/range {v48 .. v48}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_58

    new-instance v0, Lrp;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lrp;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_58
    return-void
.end method
