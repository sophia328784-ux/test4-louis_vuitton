.class public final synthetic Lcom/vuitton/android/presentation/screen/main/navigation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final synthetic d:Lkotlinx/coroutines/flow/SharedFlow;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lqb0;

.field public final synthetic g:Lkotlin/jvm/functions/Function3;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function3;IILkotlin/jvm/functions/Function0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->d:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->f:Lqb0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->g:Lkotlin/jvm/functions/Function3;

    iput p7, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->h:I

    iput p8, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->i:I

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v6, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    const/4 v7, 0x0

    const-string v8, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v2, :cond_c

    invoke-static {v2, v6}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v4

    instance-of v1, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_1
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1

    :goto_2
    sget-object v9, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-virtual {v9, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-static {v6}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2, v6}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v4

    instance-of v1, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_3
    move-object v5, v1

    goto :goto_4

    :cond_2
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_3

    :goto_4
    const-class v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-virtual {v9, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    new-instance v11, Lcom/vuitton/android/presentation/screen/main/navigation/FeedNavigationKt$feedComposable$3$1$1$1;

    const-string v16, "updateStatusBarIconsColor-CFaEubQ(Z)V"

    const/16 v17, 0x0

    const/4 v12, 0x1

    const-class v14, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    const-string v15, "updateStatusBarIconsColor"

    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v11

    :cond_4
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->g:Lkotlin/jvm/functions/Function3;

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    iget v7, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->h:I

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v5, v8

    iget v8, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->i:I

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_5

    if-ne v9, v4, :cond_6

    :cond_5
    new-instance v9, Ltj;

    const/4 v5, 0x5

    invoke-direct {v9, v2, v7, v8, v5}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v7, v9

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->k:Landroid/content/Context;

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_7

    if-ne v8, v4, :cond_8

    :cond_7
    new-instance v8, Lje;

    const/16 v5, 0x8

    invoke-direct {v8, v2, v5}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_9

    if-ne v8, v4, :cond_a

    :cond_9
    new-instance v8, Lje;

    const/16 v4, 0x9

    invoke-direct {v8, v2, v4}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->d:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->e:Lkotlin/jvm/functions/Function1;

    move-object v11, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->f:Lqb0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/navigation/a;->j:Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v8

    move-object v8, v0

    move-object v0, v10

    move-object/from16 v10, v18

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt;->b(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_b
    invoke-static {v8}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_c
    invoke-static {v8}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
