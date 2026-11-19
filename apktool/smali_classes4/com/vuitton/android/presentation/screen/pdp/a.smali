.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/a;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/a;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v1, v11, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    and-int/2addr v0, v9

    invoke-interface {v8, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->h:Z

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_3

    const v4, -0x7f0d91f7

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1

    if-ne v5, v12, :cond_2

    :cond_1
    new-instance v5, Lrh0;

    const/16 v4, 0x1c

    invoke-direct {v5, v2, v0, v4}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v8, v10}, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotListenerKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_3
    const v0, -0x7f0895a3

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    if-nez v0, :cond_7

    const v0, -0x7f07a183

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, v4

    :goto_2
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_5

    if-ne v6, v12, :cond_6

    :cond_5
    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$3$1$1$2$1;

    invoke-direct {v6, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$3$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_7
    const v0, -0x7f0187e3

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_8

    new-instance v0, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v0}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v0, Landroidx/compose/material3/SnackbarHostState;

    invoke-static {v8}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v5

    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v5

    invoke-static {v5}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v13

    invoke-static {v8}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v5

    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v5

    invoke-static {v5}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v14

    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    if-ne v6, v12, :cond_a

    :cond_9
    move-object v5, v2

    move-object v2, v0

    goto :goto_4

    :cond_a
    move-object/from16 v16, v0

    move-object v5, v2

    goto :goto_5

    :goto_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$3$1$1$3$1;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$3$1$1$3$1;-><init>(Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v2

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :goto_5
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v15, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v15, 0x6

    if-nez v2, :cond_b

    if-ne v4, v12, :cond_c

    :cond_b
    new-instance v4, Lxl0;

    invoke-direct {v4, v5, v15}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v8, v10}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt;->a(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->F()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v9

    goto :goto_6

    :cond_d
    move v0, v10

    :goto_6
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x3

    if-ne v2, v12, :cond_e

    new-instance v2, Lul0;

    invoke-direct {v2, v4}, Lul0;-><init>(I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x30

    invoke-static {v0, v2, v8, v6, v10}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-array v0, v9, [Landroidx/navigation3/runtime/NavKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$Pdp;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$Pdp;

    aput-object v2, v0, v10

    invoke-static {v0, v8}, Landroidx/navigation3/runtime/RememberNavBackStackKt;->a([Landroidx/navigation3/runtime/NavKey;Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/NavBackStack;

    move-result-object v0

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object v17

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_f

    if-ne v6, v12, :cond_10

    :cond_f
    move-object v2, v0

    goto :goto_7

    :cond_10
    move-object/from16 v44, v0

    move-object v10, v1

    move-object v9, v3

    move v15, v4

    goto :goto_8

    :goto_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$3$1$1$6$1;

    move-object v6, v2

    move-object v2, v5

    const-string v5, "onShadeFinderClicked()V"

    move-object/from16 v19, v6

    const/4 v6, 0x0

    move-object/from16 v20, v1

    const/4 v1, 0x0

    move-object/from16 v21, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    move/from16 v22, v4

    const-string v4, "onShadeFinderClicked"

    move-object/from16 v44, v19

    move-object/from16 v10, v20

    move-object/from16 v9, v21

    move/from16 v15, v22

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v5, v2

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v0

    :goto_8
    check-cast v6, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_11

    if-ne v1, v12, :cond_12

    :cond_11
    new-instance v1, Lyl0;

    invoke-direct {v1, v5, v9, v11}, Lyl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_13

    if-ne v2, v12, :cond_14

    :cond_13
    new-instance v2, Lyl0;

    invoke-direct {v2, v9, v5, v15}, Lyl0;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    if-nez v0, :cond_15

    if-ne v3, v12, :cond_16

    :cond_15
    new-instance v3, Lyl0;

    invoke-direct {v3, v9, v5, v4}, Lyl0;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v0, :cond_17

    if-ne v15, v12, :cond_18

    :cond_17
    new-instance v15, Lxl0;

    const/16 v0, 0x9

    invoke-direct {v15, v5, v0}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v0, v0, v19

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    const/4 v4, 0x5

    if-nez v0, :cond_19

    if-ne v11, v12, :cond_1a

    :cond_19
    new-instance v11, Lyl0;

    invoke-direct {v11, v9, v5, v4}, Lyl0;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v0, v0, v21

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1b

    if-ne v4, v12, :cond_1c

    :cond_1b
    new-instance v4, Lyl0;

    const/4 v0, 0x6

    invoke-direct {v4, v5, v9, v0}, Lyl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    move/from16 p2, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v1

    const/4 v1, 0x7

    if-nez p2, :cond_1d

    if-ne v0, v12, :cond_1e

    :cond_1d
    new-instance v0, Lyl0;

    invoke-direct {v0, v5, v9, v1}, Lyl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v24

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v24, :cond_20

    if-ne v1, v12, :cond_1f

    goto :goto_9

    :cond_1f
    move-object/from16 v24, v0

    goto :goto_a

    :cond_20
    :goto_9
    new-instance v1, Lam0;

    move-object/from16 v24, v0

    const/4 v0, 0x4

    invoke-direct {v1, v5, v0}, Lam0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v25

    or-int v0, v0, v25

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v25

    or-int v0, v0, v25

    move/from16 v25, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v25, :cond_22

    if-ne v0, v12, :cond_21

    goto :goto_b

    :cond_21
    move-object/from16 v25, v1

    goto :goto_c

    :cond_22
    :goto_b
    new-instance v0, Lof0;

    move-object/from16 v25, v1

    const/16 v1, 0x15

    invoke-direct {v0, v10, v5, v9, v1}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_23

    if-ne v10, v12, :cond_24

    :cond_23
    new-instance v10, Lxl0;

    const/4 v1, 0x0

    invoke-direct {v10, v5, v1}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v26, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_25

    if-ne v0, v12, :cond_26

    :cond_25
    new-instance v0, Lxl0;

    const/4 v1, 0x1

    invoke-direct {v0, v5, v1}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v27

    or-int v1, v1, v27

    move-object/from16 v27, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_27

    if-ne v0, v12, :cond_28

    :cond_27
    new-instance v0, Lyl0;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v5, v1}, Lyl0;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v28, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_29

    if-ne v0, v12, :cond_2a

    :cond_29
    new-instance v0, Lxl0;

    const/4 v1, 0x2

    invoke-direct {v0, v5, v1}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v29, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_2b

    if-ne v0, v12, :cond_2c

    :cond_2b
    new-instance v0, Lxl0;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v30, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_2d

    if-ne v0, v12, :cond_2e

    :cond_2d
    new-instance v0, Lxl0;

    const/4 v1, 0x4

    invoke-direct {v0, v5, v1}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v20, v0

    move-object/from16 v0, v44

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v31

    or-int v1, v1, v31

    move/from16 v31, v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v31, :cond_30

    if-ne v1, v12, :cond_2f

    goto :goto_d

    :cond_2f
    move-object/from16 v31, v2

    goto :goto_e

    :cond_30
    :goto_d
    new-instance v1, Lrh0;

    move-object/from16 v31, v2

    const/16 v2, 0x1a

    invoke-direct {v1, v0, v9, v2}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v44, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_31

    if-ne v0, v12, :cond_32

    :cond_31
    new-instance v0, Lxl0;

    const/4 v2, 0x5

    invoke-direct {v0, v5, v2}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_32
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v21, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_33

    if-ne v0, v12, :cond_34

    :cond_33
    new-instance v0, Lxl0;

    const/4 v2, 0x7

    invoke-direct {v0, v5, v2}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_34
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 p2, v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_35

    if-ne v0, v12, :cond_36

    :cond_35
    new-instance v0, Lam0;

    const/4 v2, 0x0

    invoke-direct {v0, v5, v2}, Lam0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_36
    move-object/from16 v32, v0

    check-cast v32, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_37

    if-ne v2, v12, :cond_38

    :cond_37
    new-instance v2, Lxl0;

    const/16 v0, 0x8

    invoke-direct {v2, v5, v0}, Lxl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_38
    move-object/from16 v33, v2

    check-cast v33, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_39

    if-ne v2, v12, :cond_3a

    :cond_39
    new-instance v2, Llk;

    const/4 v0, 0x3

    invoke-direct {v2, v13, v14, v0, v5}, Llk;-><init>(FFILjava/lang/Object;)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3a
    move-object/from16 v34, v2

    check-cast v34, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_3b

    if-ne v2, v12, :cond_3c

    :cond_3b
    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$3$1$1$28$1;

    invoke-direct {v2, v5}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$3$1$1$28$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3c
    move-object/from16 v35, v2

    check-cast v35, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_3d

    if-ne v2, v12, :cond_3e

    :cond_3d
    new-instance v2, Lbm0;

    const/4 v0, 0x0

    invoke-direct {v2, v5, v9, v0}, Lbm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3e
    move-object/from16 v36, v2

    check-cast v36, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_3f

    if-ne v2, v12, :cond_40

    :cond_3f
    new-instance v2, Lbm0;

    const/4 v0, 0x1

    invoke-direct {v2, v5, v9, v0}, Lbm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_40
    move-object/from16 v37, v2

    check-cast v37, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_41

    if-ne v2, v12, :cond_42

    :cond_41
    new-instance v2, Lyl0;

    const/4 v0, 0x1

    invoke-direct {v2, v5, v9, v0}, Lyl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_42
    move-object/from16 v38, v2

    check-cast v38, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_43

    if-ne v2, v12, :cond_44

    :cond_43
    new-instance v2, Lam0;

    const/4 v0, 0x1

    invoke-direct {v2, v5, v0}, Lam0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_44
    move-object/from16 v39, v2

    check-cast v39, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_45

    if-ne v2, v12, :cond_46

    :cond_45
    new-instance v2, Lam0;

    const/4 v0, 0x2

    invoke-direct {v2, v5, v0}, Lam0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_46
    move-object/from16 v40, v2

    check-cast v40, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_47

    if-ne v2, v12, :cond_48

    :cond_47
    new-instance v2, Lam0;

    const/4 v0, 0x3

    invoke-direct {v2, v5, v0}, Lam0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_48
    move-object/from16 v41, v2

    check-cast v41, Lkotlin/jvm/functions/Function1;

    sget-object v0, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/16 v43, 0x30

    move-object/from16 v9, v28

    move-object/from16 v28, v20

    move-object/from16 v20, v25

    move-object/from16 v25, v9

    move-object v12, v7

    move-object/from16 v42, v8

    move-object/from16 v22, v10

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v13, v23

    move-object/from16 v19, v24

    move-object/from16 v23, v27

    move-object/from16 v27, v30

    move-object/from16 v14, v31

    move-object/from16 v8, v44

    move-object/from16 v31, p2

    move-object/from16 v24, v6

    move-object/from16 v17, v11

    move-object/from16 v16, v15

    move-object/from16 v11, v18

    move-object/from16 v30, v21

    move-object/from16 v21, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v1

    move-object v15, v3

    move-object/from16 v18, v4

    invoke-static/range {v8 .. v43}, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt;->a(Landroidx/navigation3/runtime/NavBackStack;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_f

    :cond_49
    move-object/from16 v42, v8

    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->D()V

    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
