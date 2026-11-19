.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/register/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Landroidx/navigation/NavHostController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/b;->b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/b;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/b;->d:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

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

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/b;->b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-static {v12}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4, v12}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v3, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_0

    move-object v3, v4

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_0
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_0

    :goto_1
    const-class v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/b;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/b;->d:Landroidx/navigation/NavHostController;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    new-instance v4, Lt30;

    const/16 v3, 0x15

    invoke-direct {v4, v11, v0, v3}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;->c:Ljava/lang/String;

    sget-object v14, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;->NATIVE_REGISTER_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-ne v4, v5, :cond_4

    :cond_3
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$2$2$1;

    const-string v8, "trackAddressEvent(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;)V"

    move-object v5, v9

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v7, "trackAddressEvent"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_4
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v6, v13

    const/high16 v13, 0x30000

    move-object v8, v14

    const/4 v14, 0x0

    move-object v3, v11

    move-object v11, v4

    move-object v4, v3

    move-object v5, v0

    move-object v3, v1

    move-object v7, v2

    move-object v9, v15

    invoke-static/range {v3 .. v14}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
