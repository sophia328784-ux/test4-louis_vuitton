.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/navigation/NavHostController;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/b;->b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/b;->c:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/b;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/b;->e:Landroidx/navigation/NavHostController;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/b;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v12, p3

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/b;->b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_0

    if-ne v4, v9, :cond_1

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$1$1;

    invoke-direct {v4, v2, v5}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-static {v4, v12}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v2, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_2

    move-object v2, v4

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_0

    :goto_1
    const-class v2, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v15}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v16, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v29, 0xfff

    const/16 v30, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v16 .. v30}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v6, v12

    move-object/from16 v4, v16

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-ne v5, v9, :cond_4

    :cond_3
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$2$1;

    const-string v18, "reloadList()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;

    const-string v17, "reloadList"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v13

    :cond_4
    check-cast v5, Lkotlin/reflect/KFunction;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_5

    if-ne v6, v9, :cond_6

    :cond_5
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$3$1;

    const-string v18, "setUserChatConsentEnabled()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;

    const-string v17, "setUserChatConsentEnabled"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v13

    :cond_6
    check-cast v6, Lkotlin/reflect/KFunction;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_7

    if-ne v7, v9, :cond_8

    :cond_7
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$4$1;

    const-string v18, "sendTrackingHit(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;)V"

    const/16 v19, 0x0

    const/4 v14, 0x1

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModel;

    const-string v17, "sendTrackingHit"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v13

    :cond_8
    check-cast v7, Lkotlin/reflect/KFunction;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/personalselections/b;->e:Landroidx/navigation/NavHostController;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_9

    if-ne v10, v9, :cond_a

    :cond_9
    new-instance v10, Ltl;

    const/4 v8, 0x1

    invoke-direct {v10, v3, v8}, Ltl;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v8, v10

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x0

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/personalselections/b;->c:Lkotlin/jvm/functions/Function3;

    move-object v7, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/personalselections/b;->d:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/personalselections/b;->f:Lkotlin/jvm/functions/Function0;

    move-object v3, v2

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListComposableKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :cond_b
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5
.end method
