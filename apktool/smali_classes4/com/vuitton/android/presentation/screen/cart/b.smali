.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

.field public final synthetic e:Landroidx/navigation/NavHostController;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/cart/b;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/b;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/b;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/b;->e:Landroidx/navigation/NavHostController;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/cart/b;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/cart/b;->b:Z

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/b;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v10, 0x0

    if-nez v3, :cond_0

    if-ne v5, v9, :cond_1

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$3$1$1;

    invoke-direct {v5, v2, v4, v10}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$3$1$1;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/b;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    invoke-interface {v12}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-static {v11}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4, v11}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

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
    const-class v3, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v5, v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;->b:Ljava/lang/String;

    move-object v6, v4

    goto :goto_2

    :cond_3
    move-object v6, v10

    :goto_2
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;

    if-eqz v4, :cond_4

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;->c:Ljava/lang/String;

    :cond_4
    move-object v7, v10

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/cart/b;->e:Landroidx/navigation/NavHostController;

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_5

    if-ne v8, v9, :cond_6

    :cond_5
    new-instance v13, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$3$2$1;

    const-string v18, "popBackStack()Z"

    const/16 v19, 0x8

    const/4 v14, 0x0

    const-class v16, Landroidx/navigation/NavHostController;

    const-string v17, "popBackStack"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v13

    :cond_6
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_7

    if-ne v10, v9, :cond_8

    :cond_7
    new-instance v10, Ltb0;

    const/16 v4, 0xa

    invoke-direct {v10, v12, v4}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v9, v10

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/b;->f:Lkotlin/jvm/functions/Function1;

    move v4, v2

    invoke-static/range {v3 .. v12}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftOptionComposableKt;->a(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :cond_9
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10
.end method
