.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/register/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->G:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v1, v8, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    and-int/2addr v0, v6

    invoke-interface {v5, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    const/4 v9, 0x0

    const-string v10, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v1, :cond_e

    invoke-static {v1, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v3

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_1
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1

    :goto_2
    sget-object v11, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-virtual {v11, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {v1, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v3

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_2
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_3

    :goto_4
    const-class v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    invoke-virtual {v11, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/register/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_3

    if-ne v2, v3, :cond_4

    :cond_3
    new-instance v2, Lqf0;

    invoke-direct {v2, v15, v7}, Lqf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;I)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_5

    if-ne v4, v3, :cond_6

    :cond_5
    new-instance v4, Ltb0;

    const/16 v0, 0xd

    invoke-direct {v4, v15, v0}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_7

    if-ne v7, v3, :cond_8

    :cond_7
    new-instance v7, Lqf0;

    invoke-direct {v7, v15, v6}, Lqf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;I)V

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_9

    if-ne v6, v3, :cond_a

    :cond_9
    new-instance v6, Lqf0;

    invoke-direct {v6, v15, v8}, Lqf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_b

    if-ne v8, v3, :cond_c

    :cond_b
    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$onCreateView$1$1$1$5$1;

    const-string v18, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/16 v19, 0x1

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v17, "onNavigateBackPressed"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v13

    :cond_c
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v3, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v6

    move-object v6, v8

    const/4 v8, 0x0

    move-object v0, v12

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt;->a(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_d
    invoke-static {v10}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_e
    invoke-static {v10}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
