.class public final synthetic Lcom/vuitton/android/presentation/screen/onboarding/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/a;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/a;->d:Landroidx/navigation/NavHostController;

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

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/onboarding/a;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_0

    if-ne v4, v9, :cond_1

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$18$1$1;

    invoke-direct {v4, v2, v5}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$18$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4, v8}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

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
    const-class v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/onboarding/a;->d:Landroidx/navigation/NavHostController;

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-ne v4, v9, :cond_4

    :cond_3
    new-instance v10, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$18$2$1;

    const-string v15, "popBackStack()Z"

    const/16 v16, 0x8

    const/4 v11, 0x0

    const-class v13, Landroidx/navigation/NavHostController;

    const-string v14, "popBackStack"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v10

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/onboarding/a;->c:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-static {v2, v0, v4, v8, v3}, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :cond_5
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5
.end method
