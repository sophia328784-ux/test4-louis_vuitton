.class public final synthetic Lcom/vuitton/android/presentation/screen/options/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/navigation/NavHostController;I)V
    .locals 0

    iput p3, p0, Lcom/vuitton/android/presentation/screen/options/b;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/b;->c:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/options/b;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/options/b;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6, v1, v5}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v11}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v7, v11}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v9

    instance-of v1, v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_0

    move-object v1, v7

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_0

    :goto_1
    const-class v1, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/options/b;->c:Landroidx/navigation/NavHostController;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_1

    if-ne v5, v2, :cond_2

    :cond_1
    new-instance v12, Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt$OptionsNavHost$5$1$7$1$1;

    const-string v17, "popBackStack()Z"

    const/16 v18, 0x8

    const/4 v13, 0x0

    const-class v15, Landroidx/navigation/NavHostController;

    const-string v16, "popBackStack"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v12

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v4, v5, v11, v3}, Lcom/vuitton/android/presentation/screen/options/accessibility/components/AccessibilityPreferencesComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_3
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :pswitch_0
    check-cast v4, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p4

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7, v1, v5}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/options/b;->c:Landroidx/navigation/NavHostController;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4

    if-ne v1, v2, :cond_5

    :cond_4
    new-instance v7, Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt$OptionsNavHost$5$1$4$1$1;

    const-string v12, "popBackStack()Z"

    const/16 v13, 0x8

    const/4 v8, 0x0

    const-class v10, Landroidx/navigation/NavHostController;

    const-string v11, "popBackStack"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v7

    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v1, v6, v3}, Lcom/vuitton/android/presentation/screen/options/dispatch/components/DispatchComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
