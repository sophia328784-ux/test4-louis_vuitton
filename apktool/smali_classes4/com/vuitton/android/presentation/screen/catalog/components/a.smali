.class public final synthetic Lcom/vuitton/android/presentation/screen/catalog/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/a;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/a;->c:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/a;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    move-object v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/a;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x0

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p3, :cond_0

    if-ne p4, v6, :cond_1

    :cond_0
    new-instance p4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$5$1$1;

    invoke-direct {p4, p2, v0}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$5$1$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, p1, p4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_2

    if-ne p4, v6, :cond_3

    :cond_2
    new-instance p4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$5$2$1;

    invoke-direct {p4, p2, v0}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$5$2$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, p2, p4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v3

    instance-of p2, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz p2, :cond_4

    move-object p2, v1

    check-cast p2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {p2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p2

    :goto_0
    move-object v4, p2

    goto :goto_1

    :cond_4
    sget-object p2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_0

    :goto_1
    const-class p2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;

    sget-object p3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p3, p2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/a;->c:Landroidx/navigation/NavHostController;

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_5

    if-ne p4, v6, :cond_6

    :cond_5
    new-instance p4, Lyj;

    const/4 p3, 0x1

    invoke-direct {p4, p2, p3}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v5, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v2, p4

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x30

    const/16 v8, 0x30

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/a;->d:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt;->a(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    return-object p1

    :cond_7
    const-string p0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0
.end method
