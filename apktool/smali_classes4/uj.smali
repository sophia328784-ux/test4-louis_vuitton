.class public final synthetic Luj;
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

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Luj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luj;->e:Ljava/lang/Object;

    iput-object p2, p0, Luj;->f:Ljava/lang/Object;

    iput-object p3, p0, Luj;->g:Ljava/lang/Object;

    iput-object p4, p0, Luj;->i:Ljava/lang/Object;

    iput-object p5, p0, Luj;->h:Ljava/lang/Object;

    iput p6, p0, Luj;->c:I

    iput p7, p0, Luj;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 22
    iput p8, p0, Luj;->b:I

    iput-object p1, p0, Luj;->e:Ljava/lang/Object;

    iput-object p2, p0, Luj;->f:Ljava/lang/Object;

    iput-object p3, p0, Luj;->g:Ljava/lang/Object;

    iput-object p4, p0, Luj;->h:Ljava/lang/Object;

    iput-object p5, p0, Luj;->i:Ljava/lang/Object;

    iput p6, p0, Luj;->c:I

    iput p7, p0, Luj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lqb0;Landroid/content/Context;Lkotlin/jvm/functions/Function3;IILkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Luj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luj;->e:Ljava/lang/Object;

    iput-object p2, p0, Luj;->f:Ljava/lang/Object;

    iput-object p3, p0, Luj;->g:Ljava/lang/Object;

    iput p4, p0, Luj;->c:I

    iput p5, p0, Luj;->d:I

    iput-object p6, p0, Luj;->h:Ljava/lang/Object;

    iput-object p7, p0, Luj;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Luj;->b:I

    iget v2, v0, Luj;->c:I

    iget-object v3, v0, Luj;->h:Ljava/lang/Object;

    iget-object v4, v0, Luj;->i:Ljava/lang/Object;

    iget-object v5, v0, Luj;->g:Ljava/lang/Object;

    iget-object v6, v0, Luj;->f:Ljava/lang/Object;

    iget-object v7, v0, Luj;->e:Ljava/lang/Object;

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/Modifier;

    move-object v10, v6

    check-cast v10, Landroidx/compose/material3/SnackbarHostState;

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget v0, v0, Luj;->d:I

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->m(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    check-cast v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    check-cast v5, Ljava/lang/String;

    check-cast v3, Lcom/vuitton/android/presentation/compose/components/AvatarSize;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move v9, v2

    move-object v2, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v7, v9, 0x1

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget v8, v0, Luj;->d:I

    move-object/from16 v19, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/compose/components/LVAvatarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/AvatarSize;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move v9, v2

    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v6

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState;

    check-cast v3, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v7, v9, 0x1

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget v8, v0, Luj;->d:I

    move-object/from16 v19, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationConfigurationCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/CustomizationCardState;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move v9, v2

    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v6

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    check-cast v3, Ljava/util/List;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v7, v9, 0x1

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget v8, v0, Luj;->d:I

    move-object/from16 v19, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move v9, v2

    check-cast v7, Lqb0;

    check-cast v6, Landroid/content/Context;

    check-cast v5, Lkotlin/jvm/functions/Function3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v4, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eq v2, v10, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    and-int/2addr v1, v8

    invoke-interface {v15, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v1, v11

    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v11

    const-string v16, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v11, :cond_c

    invoke-static {v11, v15}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v13

    instance-of v12, v11, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v12, :cond_1

    move-object v12, v11

    check-cast v12, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v12}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v12

    :goto_1
    move-object v14, v12

    goto :goto_2

    :cond_1
    sget-object v12, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1

    :goto_2
    sget-object v12, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-virtual {v12, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object v10, v1

    move-object/from16 v1, v17

    const/4 v2, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v10

    move-object/from16 v18, v10

    check-cast v18, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-static {v11, v15}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v13

    instance-of v10, v11, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v10, :cond_2

    move-object v10, v11

    check-cast v10, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v10}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v10

    :goto_3
    move-object v14, v10

    goto :goto_4

    :cond_2
    sget-object v10, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_3

    :goto_4
    const-class v10, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    invoke-virtual {v1, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    move-object v10, v7

    move-object v7, v3

    sget-object v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->MAIN:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v11, :cond_3

    if-ne v12, v13, :cond_4

    :cond_3
    new-instance v12, Lsj;

    invoke-direct {v12, v6, v2, v2}, Lsj;-><init>(Landroid/content/Context;IB)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v14

    or-int/2addr v11, v14

    iget v0, v0, Luj;->d:I

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_5

    if-ne v14, v13, :cond_6

    :cond_5
    new-instance v14, Ltj;

    invoke-direct {v14, v5, v9, v0, v2}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_7

    if-ne v2, v13, :cond_8

    :cond_7
    new-instance v2, Lm;

    invoke-direct {v2, v4, v6, v8}, Lm;-><init>(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_9

    if-ne v2, v13, :cond_a

    :cond_9
    new-instance v2, Lm;

    const/4 v0, 0x2

    invoke-direct {v2, v4, v6, v0}, Lm;-><init>(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v11, 0x180

    move-object v2, v1

    move-object v4, v10

    move-object v5, v12

    move-object v6, v14

    move-object v10, v15

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt;->a(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_b
    invoke-static/range {v16 .. v16}, Lmd;->k(Ljava/lang/String;)V

    :goto_5
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    invoke-static/range {v16 .. v16}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_7
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
