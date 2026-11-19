.class public final synthetic Lhk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk;->e:Ljava/lang/Object;

    iput-object p2, p0, Lhk;->f:Ljava/lang/Object;

    iput-object p3, p0, Lhk;->g:Ljava/lang/Object;

    iput-object p4, p0, Lhk;->h:Ljava/lang/Object;

    iput-object p5, p0, Lhk;->i:Ljava/lang/Object;

    iput-object p6, p0, Lhk;->j:Ljava/lang/Object;

    iput-object p7, p0, Lhk;->c:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lhk;->k:Ljava/lang/Object;

    iput-object p9, p0, Lhk;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk;->e:Ljava/lang/Object;

    iput-object p2, p0, Lhk;->f:Ljava/lang/Object;

    iput-object p3, p0, Lhk;->g:Ljava/lang/Object;

    iput-object p4, p0, Lhk;->h:Ljava/lang/Object;

    iput-object p5, p0, Lhk;->i:Ljava/lang/Object;

    iput-object p6, p0, Lhk;->j:Ljava/lang/Object;

    iput-object p7, p0, Lhk;->c:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lhk;->d:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lhk;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lhk;->b:I

    iget-object v3, v0, Lhk;->k:Ljava/lang/Object;

    iget-object v4, v0, Lhk;->j:Ljava/lang/Object;

    iget-object v5, v0, Lhk;->i:Ljava/lang/Object;

    iget-object v6, v0, Lhk;->h:Ljava/lang/Object;

    iget-object v7, v0, Lhk;->g:Ljava/lang/Object;

    iget-object v8, v0, Lhk;->f:Ljava/lang/Object;

    iget-object v9, v0, Lhk;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v11, v9

    check-cast v11, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    check-cast v7, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, p1

    check-cast v20, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v10, v11, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    const-string v12, "PdpScreen$lambda$7$0$0"

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v10, :cond_0

    iget-object v10, v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->AddToCart:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    if-eq v10, v15, :cond_1

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->DisplayBackInStock:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    if-eq v10, v15, :cond_1

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->GoToWebsiteProductPage:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    if-ne v10, v15, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v12

    move-object v5, v13

    goto :goto_1

    :cond_1
    :goto_0
    const v10, -0x7656e034

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v15, "pdp_ContactUs_button"

    invoke-static {v10, v15}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v15, :cond_2

    if-ne v2, v13, :cond_3

    :cond_2
    new-instance v2, Lqp;

    const/16 v15, 0x9

    invoke-direct {v2, v7, v11, v6, v15}, Lqp;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_4

    if-ne v7, v13, :cond_5

    :cond_4
    new-instance v7, Ltf0;

    const/4 v6, 0x6

    invoke-direct {v7, v5, v6}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x0

    const/16 v18, 0x30

    move-object/from16 v16, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v12

    move-object v12, v2

    move-object v2, v5

    move-object v5, v13

    move-object v13, v7

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v16

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :goto_1
    const v6, -0x764af447

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    iget-boolean v6, v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->h:Z

    iget-boolean v7, v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->s:Z

    if-eqz v6, :cond_8

    const v6, -0x7649cb7a

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v10, "pdp_nativeShare_button"

    invoke-static {v6, v10}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v6

    iget v13, v6, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->u:I

    const v6, 0x7f14036a

    invoke-static {v14, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v0, Lhk;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v10, v15

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v10, :cond_6

    if-ne v15, v5, :cond_7

    :cond_6
    new-instance v15, Ldm0;

    const/4 v10, 0x2

    invoke-direct {v15, v4, v11, v10}, Ldm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v15, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v10, v9, 0x9

    const v11, 0xe000

    and-int/2addr v10, v11

    shl-int/lit8 v9, v9, 0x18

    const/high16 v11, 0xe000000

    and-int/2addr v9, v11

    or-int v22, v10, v9

    const/16 v23, 0xe0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move-object/from16 v21, v14

    move-object v14, v6

    invoke-static/range {v12 .. v23}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope$ComposeDefaultImpls;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v21

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_8
    const v1, -0x764099c7

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    iget-boolean v1, v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->C:Z

    if-nez v1, :cond_f

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v1, :cond_f

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    const/4 v6, 0x1

    if-ne v1, v6, :cond_f

    const v1, -0x763e6a72

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    if-eqz v7, :cond_9

    const v1, -0x763d9e48

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const v1, 0x7f14035f

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_9
    const v1, -0x763b93c3

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const v1, 0x7f1402fa

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_a

    if-ne v6, v5, :cond_b

    :cond_a
    new-instance v6, Lnj0;

    const/16 v2, 0x8

    invoke-direct {v6, v1, v2}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v3, v1, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "pdp_wishlist_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    iget-boolean v1, v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->g:Z

    if-eqz v7, :cond_c

    const v2, -0x7631e157

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->V:I

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_c
    const v2, -0x763018d1

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->U:I

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :goto_6
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, v0, Lhk;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_d

    if-ne v3, v5, :cond_e

    :cond_d
    new-instance v3, Ldm0;

    const/4 v2, 0x3

    invoke-direct {v3, v4, v0, v2}, Ldm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x0

    move/from16 v17, v1

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpWishListTopBarButtonKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_f
    const v0, -0x762a8be7

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v2, v9

    check-cast v2, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    check-cast v8, Landroid/content/Context;

    check-cast v7, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    check-cast v6, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    check-cast v5, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    check-cast v4, Lkotlin/jvm/functions/Function3;

    move-object v11, v3

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v12, p3

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p4

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v9, v1, v3}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lik;

    iget-object v9, v0, Lhk;->c:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lhk;->d:Lkotlin/jvm/functions/Function0;

    move-object/from16 v24, v4

    move-object v4, v3

    move-object v3, v8

    move-object/from16 v8, v24

    move-object/from16 v24, v7

    move-object v7, v5

    move-object/from16 v5, v24

    invoke-direct/range {v1 .. v11}, Lik;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Landroidx/navigation/NavBackStackEntry;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v0, 0x6963039a

    invoke-static {v0, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v6, 0x6

    invoke-static {v0, v12, v6}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVCatalogLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
