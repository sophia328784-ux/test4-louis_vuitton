.class public final synthetic Lcom/vuitton/android/presentation/screen/main/navigation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

.field public final synthetic g:Lkotlin/jvm/functions/Function3;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->e:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->f:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->g:Lkotlin/jvm/functions/Function3;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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

    invoke-static {v8}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v1

    float-to-int v14, v1

    invoke-static {v8}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v1

    float-to-int v15, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->ab()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result v2

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->d:Landroid/content/Context;

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v9, 0x6

    if-eqz v2, :cond_6

    const v1, 0xe3bd3bb

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    invoke-virtual {v11, v1}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->g(Z)V

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_5

    invoke-static {v4, v8}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v2, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_0

    move-object v2, v4

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_0

    :goto_1
    const-class v2, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1

    if-ne v4, v13, :cond_2

    :cond_1
    new-instance v4, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$1$1;

    invoke-direct {v4, v1, v10}, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$1$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-ne v4, v13, :cond_4

    :cond_3
    new-instance v4, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$2$1;

    invoke-direct {v4, v10, v12, v1}, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$2$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move v1, v9

    new-instance v9, Lcom/vuitton/android/presentation/screen/main/navigation/c;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->g:Lkotlin/jvm/functions/Function3;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->h:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v0

    move v2, v1

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/main/navigation/c;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lkotlin/jvm/functions/Function3;IILkotlin/jvm/functions/Function0;)V

    const v0, -0x7a4de958

    invoke-static {v0, v9, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, v8, v2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVWishlistLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_6
    move v2, v9

    const v3, 0xe5e79ba

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v3, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->g(Z)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->e:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_7

    if-ne v6, v13, :cond_8

    :cond_7
    new-instance v6, Lce0;

    const/4 v4, 0x5

    invoke-direct {v6, v1, v5, v12, v4}, Lce0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroid/content/Context;I)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_9

    if-ne v7, v13, :cond_a

    :cond_9
    new-instance v7, Lce0;

    invoke-direct {v7, v1, v5, v12, v2}, Lce0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroid/content/Context;I)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x6

    const/16 v10, 0x18

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/navigation/b;->f:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_b

    if-ne v2, v13, :cond_c

    :cond_b
    new-instance v2, Lce0;

    const/4 v0, 0x7

    invoke-direct {v2, v1, v12, v0}, Lce0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Landroid/content/Context;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_d

    if-ne v3, v13, :cond_e

    :cond_d
    new-instance v3, Lce0;

    const/4 v0, 0x4

    invoke-direct {v3, v1, v12, v0}, Lce0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Landroid/content/Context;I)V

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    const/16 v15, 0x739

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v8

    move-object v8, v2

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
