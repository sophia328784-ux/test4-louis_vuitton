.class public final synthetic Lcom/vuitton/android/presentation/screen/search/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->b:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->e:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/search/components/a;->i:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->d:Landroidx/compose/ui/Modifier;

    if-eqz v2, :cond_0

    const-string v3, "SearchScreenComposable$lambda$0"

    invoke-static {v2, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_0
    move-object v14, v2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->b:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v21

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/compose/ui/focus/FocusManager;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->r:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v7, :cond_2

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v12}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v16, v6

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v26, v6

    check-cast v26, Landroid/content/Context;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_3

    new-instance v6, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v6}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v6, Landroidx/compose/ui/focus/FocusRequester;

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v9, :cond_4

    if-ne v10, v7, :cond_5

    :cond_4
    new-instance v10, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$1$1;

    invoke-direct {v10, v1, v6, v11}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Landroidx/compose/ui/focus/FocusRequester;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_6

    if-ne v10, v7, :cond_7

    :cond_6
    new-instance v10, Lqu0;

    invoke-direct {v10, v1, v3}, Lqu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x6

    invoke-static {v8, v11, v10, v12, v3}, Landroidx/lifecycle/compose/LifecycleEffectKt;->a(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_8

    if-ne v9, v7, :cond_9

    :cond_8
    new-instance v9, Lsq0;

    const/16 v8, 0xc

    invoke-direct {v9, v3, v8}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v9, v12, v4, v5}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_a

    new-instance v27, Lcom/vuitton/android/presentation/compose/NestedScroll;

    new-instance v4, Leu;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5}, Leu;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;I)V

    const/16 v31, 0x5

    const/16 v32, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v29, v4

    invoke-direct/range {v27 .. v32}, Lcom/vuitton/android/presentation/compose/NestedScroll;-><init>(FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v28, v4

    check-cast v28, Landroidx/compose/runtime/MutableState;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v6

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->h:J

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v10

    new-instance v13, Lcom/vuitton/android/presentation/screen/search/components/c;

    iget-boolean v15, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->e:Z

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->f:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->g:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->h:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/components/a;->i:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-object/from16 v27, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    move-object/from16 v18, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    invoke-direct/range {v13 .. v28}, Lcom/vuitton/android/presentation/screen/search/components/c;-><init>(Landroidx/compose/ui/Modifier;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x1e088d57

    invoke-static {v0, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    const/high16 v13, 0x30180000

    const/16 v14, 0xbf

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
