.class public final synthetic Lcom/vuitton/android/presentation/screen/services/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->b:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->c:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->f:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/services/components/a;->j:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    const/4 v5, 0x4

    if-nez v3, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v3, v6, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    and-int/2addr v2, v7

    invoke-interface {v14, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v2, "ServicesComposable$lambda$5"

    invoke-static {v2, v1}, Lo60;->e(Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v9, v10, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-eqz v11, :cond_1d

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v3, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v9, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/services/components/a;->c:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/services/components/a;->b:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_4

    if-ne v10, v11, :cond_5

    :cond_4
    new-instance v15, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt$ServicesComposable$4$1$1$1;

    const-string v20, "onAppointmentsClicked()V"

    const/16 v21, 0x0

    const/16 v16, 0x0

    const-class v18, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    const-string v19, "onAppointmentsClicked"

    move-object/from16 v17, v6

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v15

    :cond_5
    check-cast v10, Lkotlin/reflect/KFunction;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v9, v12

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/services/components/a;->d:Landroid/content/Context;

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/services/components/a;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v9, v15

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v9, :cond_7

    if-ne v15, v11, :cond_6

    goto :goto_3

    :cond_6
    move-object v9, v12

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v15, Lr0;

    const/16 v20, 0x1b

    move-object/from16 v19, v1

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-direct/range {v15 .. v20}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v9, v17

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_4
    move-object v12, v15

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/services/components/a;->f:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v13, :cond_8

    if-ne v4, v11, :cond_9

    :cond_8
    move-object/from16 v17, v15

    goto :goto_5

    :cond_9
    move-object v15, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_6

    :goto_5
    new-instance v15, Lr0;

    const/16 v20, 0x1c

    move-object/from16 v19, v1

    move-object/from16 v16, v6

    move-object/from16 v18, v9

    invoke-direct/range {v15 .. v20}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_6
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v6, v13

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v6, v13

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v6, :cond_a

    if-ne v13, v11, :cond_b

    :cond_a
    new-instance v13, Lcv0;

    const/4 v6, 0x3

    invoke-direct {v13, v1, v4, v9, v6}, Lcv0;-><init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroidx/compose/runtime/State;Landroid/content/Context;I)V

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v6, v13

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v13, :cond_c

    if-ne v7, v11, :cond_d

    :cond_c
    new-instance v7, Lcv0;

    invoke-direct {v7, v1, v4, v9, v5}, Lcv0;-><init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroidx/compose/runtime/State;Landroid/content/Context;I)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v5, v13

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v5, v13

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v5, :cond_e

    if-ne v13, v11, :cond_f

    :cond_e
    new-instance v13, Lcv0;

    const/4 v5, 0x5

    invoke-direct {v13, v1, v9, v4, v5}, Lcv0;-><init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_10

    if-ne v8, v11, :cond_11

    :cond_10
    new-instance v8, Lcv0;

    const/4 v5, 0x0

    invoke-direct {v8, v1, v9, v4, v5}, Lcv0;-><init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    move-object/from16 v16, v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v5, :cond_12

    if-ne v2, v11, :cond_13

    :cond_12
    new-instance v2, Lcv0;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v9, v4, v5}, Lcv0;-><init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v5, v5, v17

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v5, v5, v17

    move-object/from16 v17, v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v5, :cond_14

    if-ne v2, v11, :cond_15

    :cond_14
    new-instance v2, Lcv0;

    const/4 v5, 0x2

    invoke-direct {v2, v1, v9, v4, v5}, Lcv0;-><init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v18

    or-int v5, v5, v18

    move-object/from16 p1, v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v5, :cond_16

    if-ne v2, v11, :cond_17

    :cond_16
    new-instance v2, Lwi0;

    const/4 v5, 0x1

    invoke-direct {v2, v9, v4, v5}, Lwi0;-><init>(Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v5, v5, v18

    move-object/from16 p2, v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v5, :cond_18

    if-ne v2, v11, :cond_19

    :cond_18
    new-instance v2, Ldv0;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v9, v5}, Ldv0;-><init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroid/content/Context;I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v5, v15

    const/4 v15, 0x0

    move-object/from16 v19, v4

    move-object v9, v8

    move-object/from16 v22, v11

    move-object v4, v12

    move-object v8, v13

    move-object/from16 v0, v16

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v2

    move-object v2, v3

    move-object v3, v10

    move-object/from16 v10, v17

    invoke-static/range {v2 .. v15}, Lcom/vuitton/android/presentation/screen/services/components/ServicesScreenKt;->f(Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->b:Z

    if-eqz v2, :cond_1a

    const v2, -0x446f5ad2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v14, v0}, Lpq0;->h(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/4 v9, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    move-object v6, v14

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_1a
    const v0, -0x446a172b

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->m:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/services/components/a;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_1b

    move-object/from16 v0, v22

    if-ne v5, v0, :cond_1c

    :cond_1b
    new-instance v5, Ljm0;

    const/16 v0, 0x14

    invoke-direct {v5, v1, v4, v0}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int v8, v1, v0

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/services/components/a;->g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/services/components/a;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/services/components/a;->i:Lkotlin/jvm/functions/Function1;

    move-object v3, v0

    move-object v7, v14

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_8

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_1e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
