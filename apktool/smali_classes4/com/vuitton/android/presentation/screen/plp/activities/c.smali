.class public final synthetic Lcom/vuitton/android/presentation/screen/plp/activities/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/base/BaseActivity;I)V
    .locals 0

    iput p2, p0, Lcom/vuitton/android/presentation/screen/plp/activities/c;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/c;->c:Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/plp/activities/c;->b:I

    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const/4 v3, 0x2

    const/4 v4, 0x0

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/activities/c;->c:Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v8, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;

    and-int/lit8 v8, v1, 0x3

    if-eq v8, v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/2addr v1, v6

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-static {v12, v0}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v14

    instance-of v1, v12, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_1

    move-object v1, v12

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_1
    move-object v15, v1

    goto :goto_2

    :cond_1
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1

    :goto_2
    const-class v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object/from16 v1, v16

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;->c:Landroidx/lifecycle/SavedStateHandle;

    const-string v3, "nav_arg_plp_slotted_sku_list"

    invoke-virtual {v2, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "nav_arg_plp_list_title"

    invoke-virtual {v2, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    :goto_3
    const-string v3, "nav_arg_plp_is_most_purchased_with"

    invoke-virtual {v2, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_4
    move/from16 v16, v4

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_5

    if-ne v3, v5, :cond_6

    :cond_5
    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$onCreate$1$1$1$1$1;

    const-string v13, "finish()V"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;

    const-string v12, "finish"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v8

    :cond_6
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_7

    if-ne v3, v5, :cond_8

    :cond_7
    new-instance v3, Lhv0;

    const/4 v2, 0x5

    invoke-direct {v3, v10, v2}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_9

    if-ne v3, v5, :cond_a

    :cond_9
    new-instance v3, Lrp0;

    const/16 v2, 0x15

    invoke-direct {v3, v0, v10, v2}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v0

    move-object/from16 v17, v1

    move-object v12, v7

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt;->a(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_b
    invoke-static {v2}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    return-object v7

    :pswitch_0
    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v8, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;

    and-int/lit8 v8, v1, 0x3

    if-eq v8, v3, :cond_d

    move v4, v6

    :cond_d
    and-int/2addr v1, v6

    invoke-interface {v0, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v12

    if-eqz v12, :cond_15

    invoke-static {v12, v0}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v14

    instance-of v1, v12, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_e

    move-object v1, v12

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_6
    move-object v15, v1

    goto :goto_7

    :cond_e
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_6

    :goto_7
    const-class v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object/from16 v1, v16

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_f

    if-ne v3, v5, :cond_10

    :cond_f
    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$onCreate$1$1$1$1$1;

    const-string v13, "finish()V"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;

    const-string v12, "finish"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v8

    :cond_10
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_11

    if-ne v3, v5, :cond_12

    :cond_11
    new-instance v3, Lss;

    const/16 v2, 0x9

    invoke-direct {v3, v10, v2}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_13

    if-ne v3, v5, :cond_14

    :cond_13
    new-instance v3, Lck;

    const/16 v2, 0x16

    invoke-direct {v3, v10, v2}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x30

    const/16 v19, 0x20

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    move-object/from16 v17, v1

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPSimpleComposableKt;->a(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    goto :goto_8

    :cond_15
    invoke-static {v2}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_9
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
