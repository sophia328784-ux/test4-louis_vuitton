.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lkotlin/jvm/functions/Function3;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/d;->b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/d;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/d;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/d;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/d;->f:Lkotlin/jvm/functions/Function3;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/d;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/personalselections/d;->h:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/personalselections/d;->b:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v11, 0x0

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_0

    if-ne v5, v12, :cond_1

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$1$1;

    invoke-direct {v5, v3, v11}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$1$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    const-string v9, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v4, :cond_27

    invoke-static {v4, v8}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v3, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_2

    move-object v3, v4

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_2
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_0

    :goto_1
    sget-object v10, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    invoke-virtual {v10, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

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

    move-object v6, v8

    const/4 v8, 0x2

    move-object/from16 v4, v16

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v20

    move-object v8, v6

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-static {v4, v8}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v3, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_3
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_2

    :goto_3
    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    invoke-virtual {v10, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x1b

    if-nez v4, :cond_4

    if-ne v5, v12, :cond_5

    :cond_4
    new-instance v5, Ltb0;

    invoke-direct {v5, v15, v6}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v3, v5, v8, v4}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->PERSONAL_SELECTIONS:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/personalselections/d;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v10, v14

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v10, :cond_6

    if-ne v14, v12, :cond_7

    :cond_6
    new-instance v14, Lqn0;

    const/4 v10, 0x2

    invoke-direct {v14, v9, v3, v10}, Lqn0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v9, v14

    check-cast v9, Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/personalselections/d;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v14, v14, v16

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v14, :cond_8

    if-ne v4, v12, :cond_9

    :cond_8
    new-instance v4, Lqn0;

    const/4 v14, 0x3

    invoke-direct {v4, v10, v3, v14}, Lqn0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_a

    if-ne v10, v12, :cond_b

    :cond_a
    move-object v3, v13

    goto :goto_4

    :cond_b
    move-object v3, v13

    goto :goto_5

    :goto_4
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$socialLoginState$3$1;

    const-string v18, "reloadDetail()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "reloadDetail"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v13

    :goto_5
    check-cast v10, Lkotlin/reflect/KFunction;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object v14, v9

    const/4 v9, 0x6

    move v13, v6

    move-object v6, v10

    const/4 v10, 0x0

    move/from16 v31, v13

    move-object v13, v3

    move-object v3, v5

    move-object v5, v4

    move-object v4, v14

    move/from16 v14, v31

    invoke-static/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v3

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/personalselections/d;->e:Landroid/content/Context;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_c

    if-ne v6, v12, :cond_d

    :cond_c
    new-instance v6, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1;

    invoke-direct {v6, v15, v5, v11}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;->g()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v7

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_e

    if-ne v10, v12, :cond_f

    :cond_e
    move-object v9, v13

    goto :goto_6

    :cond_f
    move-object v9, v13

    move-object v13, v10

    move v10, v14

    goto :goto_7

    :goto_6
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$3$1;

    const-string v18, "setUserChatConsentEnabled()V"

    const/16 v19, 0x0

    move v10, v14

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "setUserChatConsentEnabled"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_7
    move-object v11, v13

    check-cast v11, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_10

    if-ne v14, v12, :cond_11

    :cond_10
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$4$1;

    const-string v18, "sendTrackingHit(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;)V"

    const/16 v19, 0x0

    const/4 v14, 0x1

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "sendTrackingHit"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_11
    move-object/from16 v20, v14

    check-cast v20, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_12

    if-ne v14, v12, :cond_13

    :cond_12
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$5$1;

    const-string v18, "updateWishlist(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V"

    const/16 v19, 0x0

    const/4 v14, 0x1

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "updateWishlist"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_13
    move-object/from16 v21, v14

    check-cast v21, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_14

    if-ne v14, v12, :cond_15

    :cond_14
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$6$1;

    const-string v18, "refreshWishlistStatus()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "refreshWishlistStatus"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_15
    move-object/from16 v22, v14

    check-cast v22, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_16

    if-ne v14, v12, :cond_17

    :cond_16
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$7$1;

    const-string v18, "sharePersonalSelection()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "sharePersonalSelection"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_17
    move-object/from16 v23, v14

    check-cast v23, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_18

    if-ne v14, v12, :cond_19

    :cond_18
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$8$1;

    const-string v18, "reloadDetail()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "reloadDetail"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_19
    move-object/from16 v24, v14

    check-cast v24, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_1a

    if-ne v14, v12, :cond_1b

    :cond_1a
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$9$1;

    const-string v18, "onWishlistToggled(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/16 v19, 0x0

    const/4 v14, 0x1

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "onWishlistToggled"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_1b
    move-object/from16 v25, v14

    check-cast v25, Lkotlin/reflect/KFunction;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_1c

    if-ne v14, v12, :cond_1d

    :cond_1c
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$10$1;

    const-string v18, "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/16 v19, 0x0

    const/4 v14, 0x1

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    const-string v17, "onWishlistAnimationEnded"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_1d
    check-cast v14, Lkotlin/reflect/KFunction;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->i:Lkotlin/jvm/functions/Function0;

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->j:Lkotlin/jvm/functions/Function0;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/personalselections/d;->h:Landroidx/navigation/NavHostController;

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v17, v17, v18

    move-object/from16 p1, v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v17, :cond_1f

    if-ne v1, v12, :cond_1e

    goto :goto_8

    :cond_1e
    move-object/from16 p2, v3

    goto :goto_9

    :cond_1f
    :goto_8
    new-instance v1, Lgf0;

    move-object/from16 p2, v3

    const/4 v3, 0x1

    invoke-direct {v1, v10, v5, v3}, Lgf0;-><init>(Landroidx/navigation/NavHostController;Landroid/content/Context;I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_20

    if-ne v10, v12, :cond_21

    :cond_20
    new-instance v10, Lef;

    const/16 v3, 0xe

    invoke-direct {v10, v5, v3}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v10, Lkotlin/jvm/functions/Function1;

    check-cast v25, Lkotlin/jvm/functions/Function1;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    check-cast v21, Lkotlin/jvm/functions/Function1;

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 p3, v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_22

    if-ne v1, v12, :cond_23

    :cond_22
    new-instance v1, Lje;

    const/16 v3, 0x1b

    invoke-direct {v1, v5, v3}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v23

    check-cast v16, Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, v24

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    move-object/from16 p4, v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_24

    if-ne v1, v12, :cond_25

    :cond_24
    new-instance v1, Lgi0;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v5, v9, v3}, Lgi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function2;

    move-object/from16 v19, v20

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v23, 0x0

    move-object v3, v4

    move-object v4, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/personalselections/d;->f:Lkotlin/jvm/functions/Function3;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/d;->g:Lkotlin/jvm/functions/Function0;

    move-object/from16 v9, p3

    move-object v5, v7

    move-object/from16 v20, v13

    move-object v12, v14

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object v7, v0

    move-object/from16 v22, v8

    move-object v8, v11

    move-object/from16 v21, v15

    move-object/from16 v11, v25

    move-object/from16 v0, p2

    move-object/from16 v15, p4

    invoke-static/range {v3 .. v23}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/PersonalSelectionsInStoreComposableKt;->b(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v8, v22

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroidx/compose/runtime/Composer;I)V

    return-object p1

    :cond_26
    invoke-static {v9}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_27
    invoke-static {v9}, Lmd;->k(Ljava/lang/String;)V

    return-object v11
.end method
