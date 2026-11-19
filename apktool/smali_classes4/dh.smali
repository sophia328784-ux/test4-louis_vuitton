.class public final synthetic Ldh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ldh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldh;->c:I

    iput-object p2, p0, Ldh;->e:Ljava/lang/Object;

    iput-object p3, p0, Ldh;->f:Ljava/lang/Object;

    iput p4, p0, Ldh;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;II)V
    .locals 1

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Ldh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh;->f:Ljava/lang/Object;

    iput-object p2, p0, Ldh;->e:Ljava/lang/Object;

    iput p3, p0, Ldh;->c:I

    iput p4, p0, Ldh;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;ILkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Ldh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh;->e:Ljava/lang/Object;

    iput p2, p0, Ldh;->c:I

    iput-object p3, p0, Ldh;->f:Ljava/lang/Object;

    iput p4, p0, Ldh;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IILjava/lang/Object;I)V
    .locals 0

    .line 17
    iput p5, p0, Ldh;->b:I

    iput-object p1, p0, Ldh;->e:Ljava/lang/Object;

    iput p2, p0, Ldh;->c:I

    iput p3, p0, Ldh;->d:I

    iput-object p4, p0, Ldh;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 18
    iput p5, p0, Ldh;->b:I

    iput-object p1, p0, Ldh;->e:Ljava/lang/Object;

    iput-object p2, p0, Ldh;->f:Ljava/lang/Object;

    iput p3, p0, Ldh;->c:I

    iput p4, p0, Ldh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/Pair;IILkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 19
    const/4 p5, 0x1

    iput p5, p0, Ldh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh;->e:Ljava/lang/Object;

    iput p2, p0, Ldh;->c:I

    iput p3, p0, Ldh;->d:I

    iput-object p4, p0, Ldh;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Ldh;->b:I

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x2

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget v6, v0, Ldh;->d:I

    iget v7, v0, Ldh;->c:I

    const/4 v8, 0x1

    iget-object v9, v0, Ldh;->f:Ljava/lang/Object;

    iget-object v10, v0, Ldh;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v10, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v11, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    and-int/lit8 v11, v1, 0x3

    if-eq v11, v4, :cond_0

    move v3, v8

    :cond_0
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1

    if-ne v3, v5, :cond_2

    :cond_1
    new-instance v3, Ll61;

    invoke-direct {v3, v10, v2}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3

    if-ne v2, v5, :cond_4

    :cond_3
    new-instance v2, La20;

    const/4 v1, 0x3

    invoke-direct {v2, v7, v6, v1, v10}, La20;-><init>(IIILjava/lang/Object;)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    const/16 v19, 0x31

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_0

    :cond_5
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v10, Lkotlin/jvm/functions/Function3;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v11, v1, 0x3

    if-eq v11, v4, :cond_6

    move v4, v8

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-static {v12, v0}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v14

    instance-of v1, v12, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_7

    move-object v1, v12

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_2
    move-object v15, v1

    goto :goto_3

    :cond_7
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_2

    :goto_3
    const-class v1, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object/from16 v1, v16

    check-cast v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_8

    if-ne v8, v5, :cond_9

    :cond_8
    new-instance v8, Ltj;

    invoke-direct {v8, v10, v7, v6, v2}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v8, v9, v1, v3}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_a
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    move-object v1, v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    return-object v0

    :pswitch_1
    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v10, v7, v9, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v9, Landroidx/compose/ui/Modifier;

    check-cast v10, Landroidx/compose/material3/SnackbarHostState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v9, v10, v0, v1, v6}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v10, Lcom/vuitton/android/designkit/ui/theme/atoms/LVNavBarScopeInstance;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-virtual {v10, v7, v1, v0, v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVNavBarScopeInstance;->a(IILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v10, Lkotlin/jvm/functions/Function0;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v7, v10, v9, v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreenKt;->a(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object v1, v10

    check-cast v1, Lkotlin/Pair;

    move-object v4, v9

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget v2, v0, Ldh;->c:I

    iget v3, v0, Ldh;->d:I

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/options/dispatch/components/DispatchComposableKt;->b(Lkotlin/Pair;IILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v10, Lcom/vuitton/android/designkit/ui/theme/templates/bottomsheet/BottomSheetIconScopeInstance;

    check-cast v9, Landroidx/compose/ui/Modifier;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-virtual {v10, v9, v0, v7, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/bottomsheet/BottomSheetIconScopeInstance;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
