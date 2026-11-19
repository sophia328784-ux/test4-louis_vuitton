.class public final synthetic Lcom/vuitton/android/presentation/screen/catalog/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;

.field public final synthetic g:Landroidx/navigation/NavHostController;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->e:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->f:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->d:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->g:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->h:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->j:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->d:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->e:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->f:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->g:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->h:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->i:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->j:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_0

    if-ne v7, v2, :cond_1

    :cond_0
    new-instance v7, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$2$1$1;

    invoke-direct {v7, v4, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$2$1$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const-class v1, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v5, v1}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->d:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->b:Ljava/util/List;

    if-eqz v4, :cond_4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_3
    move-object v5, v3

    :goto_0
    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-object v8, v5

    goto :goto_1

    :cond_4
    move-object v8, v3

    :goto_1
    if-nez v8, :cond_5

    const v0, -0x911fbab

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_5

    :cond_5
    const v1, -0x911fbaa

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->e:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->f:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_6

    if-ne v6, v2, :cond_7

    :cond_6
    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$2$3$1$1;

    invoke-direct {v6, v9, v8, v5, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$2$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "CatalogNavHost$lambda$4$0$1"

    invoke-direct {v1, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v6, 0x0

    invoke-static {v4, v5, v15, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_8
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-ne v5, v2, :cond_a

    :cond_9
    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$2$3$2$1$1;

    invoke-direct {v5, v1, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$2$3$2$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->g:Landroidx/navigation/NavHostController;

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_b

    if-ne v3, v2, :cond_c

    :cond_b
    new-instance v3, Lyj;

    const/4 v1, 0x2

    invoke-direct {v3, v11, v1}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_d

    if-ne v4, v2, :cond_e

    :cond_d
    new-instance v4, Lvg;

    const/4 v1, 0x4

    invoke-direct {v4, v9, v8, v1}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_f

    if-ne v5, v2, :cond_10

    :cond_f
    move-object v10, v8

    goto :goto_3

    :cond_10
    move-object v10, v8

    goto :goto_4

    :goto_3
    new-instance v8, Lk3;

    const/4 v13, 0x4

    invoke-direct/range {v8 .. v13}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v8

    :goto_4
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_11

    if-ne v5, v2, :cond_12

    :cond_11
    new-instance v5, Ln0;

    const/16 v1, 0xc

    invoke-direct {v5, v9, v10, v12, v1}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x0

    const/4 v6, 0x0

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->i:Lkotlin/jvm/functions/Function1;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->j:Lkotlin/jvm/functions/Function0;

    move-object v9, v3

    move-object v8, v10

    move-object v10, v4

    invoke-static/range {v6 .. v16}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_13
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v12, p3

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_14

    if-ne v6, v2, :cond_15

    :cond_14
    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$1$1$1;

    invoke-direct {v6, v4, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->e:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->f:Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_16

    if-ne v5, v2, :cond_17

    :cond_16
    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$1$2$1;

    invoke-direct {v5, v14, v15, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_18

    if-ne v4, v2, :cond_19

    :cond_18
    new-instance v4, Lc1;

    const/16 v3, 0x1d

    invoke-direct {v4, v14, v3}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->g:Landroidx/navigation/NavHostController;

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_1a

    if-ne v6, v2, :cond_1b

    :cond_1a
    new-instance v13, Lk3;

    const/16 v18, 0x3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v13

    :cond_1b
    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->d:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->j:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/catalog/components/b;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
