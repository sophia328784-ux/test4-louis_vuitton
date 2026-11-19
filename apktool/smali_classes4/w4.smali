.class public final synthetic Lw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/compose/LazyPagingItems;Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lw4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw4;->f:Ljava/lang/Object;

    iput-object p3, p0, Lw4;->d:Ljava/lang/Object;

    iput-object p4, p0, Lw4;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 16
    const/16 v0, 0xb

    iput v0, p0, Lw4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw4;->d:Ljava/lang/Object;

    iput-object p3, p0, Lw4;->e:Ljava/lang/Object;

    iput-object p4, p0, Lw4;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/navigation/NavHostController;Ljava/lang/Object;I)V
    .locals 0

    .line 17
    iput p5, p0, Lw4;->b:I

    iput-object p1, p0, Lw4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw4;->e:Ljava/lang/Object;

    iput-object p3, p0, Lw4;->d:Ljava/lang/Object;

    iput-object p4, p0, Lw4;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p5, p0, Lw4;->b:I

    iput-object p1, p0, Lw4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw4;->e:Ljava/lang/Object;

    iput-object p3, p0, Lw4;->f:Ljava/lang/Object;

    iput-object p4, p0, Lw4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 19
    iput p5, p0, Lw4;->b:I

    iput-object p1, p0, Lw4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw4;->f:Ljava/lang/Object;

    iput-object p3, p0, Lw4;->e:Ljava/lang/Object;

    iput-object p4, p0, Lw4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lw4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4;->e:Ljava/lang/Object;

    iput-object p2, p0, Lw4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw4;->f:Ljava/lang/Object;

    iput-object p4, p0, Lw4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lw4;->b:I

    const/16 v2, 0xe

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x6

    const/4 v11, 0x1

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v13, v0, Lw4;->d:Ljava/lang/Object;

    iget-object v14, v0, Lw4;->f:Ljava/lang/Object;

    iget-object v15, v0, Lw4;->e:Ljava/lang/Object;

    iget-object v0, v0, Lw4;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    check-cast v15, Landroidx/compose/runtime/MutableState;

    check-cast v14, Landroidx/compose/runtime/MutableState;

    check-cast v13, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/compose/ui/graphics/painter/Painter;

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p4

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget v16, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v16, v10, 0x6

    if-nez v16, :cond_1

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    or-int/2addr v4, v10

    goto :goto_1

    :cond_1
    move v4, v10

    :goto_1
    and-int/lit8 v16, v10, 0x30

    if-nez v16, :cond_4

    and-int/lit8 v10, v10, 0x40

    if-nez v10, :cond_2

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_2

    :cond_2
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    :goto_2
    if-eqz v10, :cond_3

    const/16 v3, 0x20

    :cond_3
    or-int/2addr v4, v3

    :cond_4
    and-int/lit16 v3, v4, 0x93

    const/16 v10, 0x92

    if-eq v3, v10, :cond_5

    move v8, v11

    :cond_5
    and-int/lit8 v3, v4, 0x1

    invoke-interface {v6, v3, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v20, Landroidx/compose/ui/layout/ContentScale$Companion;->d:Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "SpotlightHotSpots$lambda$27$3"

    invoke-direct {v3, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-interface {v1, v3, v8}, Landroidx/compose/foundation/layout/BoxScope;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_6

    if-ne v8, v12, :cond_7

    :cond_6
    new-instance v8, Lu30;

    invoke-direct {v8, v0, v15, v14, v9}, Lu30;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v8}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    shr-int/lit8 v0, v4, 0x3

    and-int/2addr v0, v2

    const/16 v1, 0x6038

    or-int v24, v1, v0

    const/16 v25, 0x68

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move-object/from16 v23, v6

    invoke-static/range {v16 .. v25}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    move-object/from16 v23, v6

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    move-object v4, v14

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-object v5, v15

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v13, Landroidx/navigation/NavHostController;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_9

    if-ne v2, v12, :cond_a

    :cond_9
    new-instance v2, Lyj;

    invoke-direct {v2, v13, v3}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_b

    if-ne v2, v12, :cond_c

    :cond_b
    new-instance v2, Lsm0;

    const/16 v0, 0xf

    invoke-direct {v2, v4, v1, v13, v0}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    or-int/lit16 v9, v0, 0x1b0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt;->a(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    check-cast v13, Landroidx/navigation/NavHostController;

    check-cast v15, Lkotlin/jvm/functions/Function0;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v1, v2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_d

    if-ne v2, v12, :cond_e

    :cond_d
    new-instance v2, Lfh0;

    invoke-direct {v2, v0, v13, v11}, Lfh0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v15, v14, v3, v8}, Lcom/vuitton/android/presentation/screen/privacy/components/PiplCbdtComposableKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v16, v15

    check-cast v16, Lkotlin/jvm/functions/Function0;

    check-cast v0, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    move-object v1, v14

    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v2, v13

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, p1

    check-cast v21, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v17, p2

    check-cast v17, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v5

    iget v14, v5, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->u:I

    const v5, 0x7f14036a

    invoke-static {v3, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    shl-int/lit8 v5, v4, 0x9

    const v7, 0xe000

    and-int/2addr v5, v7

    const/high16 v7, 0x180000

    or-int/2addr v5, v7

    shl-int/lit8 v4, v4, 0x18

    const/high16 v7, 0xe000000

    and-int/2addr v4, v7

    or-int v23, v5, v4

    const/16 v24, 0xa1

    const/4 v13, 0x0

    const/16 v18, 0x0

    const-string v19, "personalSelectionsDetail_share_button"

    const/16 v20, 0x0

    move-object/from16 v22, v3

    invoke-static/range {v13 .. v24}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope$ComposeDefaultImpls;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;Landroidx/compose/runtime/Composer;II)V

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v4, :cond_11

    const v4, 0x2cd57a0a

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_f

    if-ne v5, v12, :cond_10

    :cond_f
    new-instance v5, Ltf0;

    invoke-direct {v5, v2, v6}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v20, v5

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/high16 v24, 0x30000

    const/16 v25, 0x11

    const/16 v17, 0x0

    const/16 v21, 0x0

    const-string v22, "personalSelectionsDetail_contactUs_button"

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v23, v3

    invoke-static/range {v17 .. v25}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_11
    const v0, 0x2cdaa72b

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Landroidx/paging/compose/LazyPagingItems;

    check-cast v14, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    check-cast v13, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v3, p2

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v1

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    or-int/2addr v1, v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_12

    if-ne v5, v12, :cond_16

    :cond_12
    if-eqz v14, :cond_15

    iget-boolean v1, v14, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->d:Z

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    iget-boolean v1, v14, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v0

    if-lez v0, :cond_15

    :cond_14
    move v8, v11

    :cond_15
    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x3df06142

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_17

    if-ne v1, v12, :cond_18

    :cond_17
    new-instance v1, Lt3;

    invoke-direct {v1, v13, v15, v2}, Lt3;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lwd0;

    const/16 v1, 0x12

    invoke-direct {v0, v3, v14, v1}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, -0x78977655

    invoke-static {v1, v0, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const/high16 v23, 0x180000

    const/16 v24, 0x3e

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v4

    invoke-static/range {v16 .. v24}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, v22

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_19
    move-object v0, v4

    const v1, 0x3e044b10

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    move-object v2, v15

    check-cast v2, Lkotlin/jvm/functions/Function0;

    check-cast v13, Landroidx/navigation/NavHostController;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1a

    if-ne v3, v12, :cond_1b

    :cond_1a
    new-instance v3, Lsi0;

    invoke-direct {v3, v1, v13, v11}, Lsi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1c

    if-ne v4, v12, :cond_1d

    :cond_1c
    new-instance v4, Ltf0;

    invoke-direct {v4, v14, v7}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListComposableKt;->a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Landroidx/compose/animation/core/Transition;

    check-cast v15, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v13, Ljava/util/Map;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation3/scene/Scene;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v4}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_7

    :cond_1e
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    :goto_7
    invoke-static {v0, v3}, Landroidx/lifecycle/compose/RememberLifecycleOwnerKt;->a(Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v12, :cond_1f

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1f
    move-object v1, v4

    :goto_8
    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget-object v1, Landroidx/navigation3/ui/LocalNavAnimatedContentScopeKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v4, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v4, :cond_20

    check-cast v4, Landroidx/compose/animation/AnimatedContentScope;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    sget-object v4, Landroidx/navigation3/scene/SharedEntryInSceneNavEntryDecoratorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    sget-object v5, Landroidx/navigation3/scene/SceneSetupNavEntryDecoratorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v6, Landroidx/navigation3/ui/AnimatedSceneKey;

    invoke-direct {v6, v2}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    invoke-static {v13, v6}, Lkotlin/collections/MapsKt;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    filled-new-array {v0, v1, v4, v5}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Lw20;

    const/16 v4, 0x14

    invoke-direct {v1, v2, v4}, Lw20;-><init>(Ljava/lang/Object;I)V

    const v2, -0x67691afc

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_20
    const-string v0, "animatedContentScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_6
    check-cast v0, Ljava/lang/String;

    check-cast v15, Ljava/lang/String;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    check-cast v13, Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "AnimatedLVLink$lambda$1"

    invoke-direct {v4, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->i(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v8

    invoke-static {v5, v7, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->j(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/ExitTransition;

    move-result-object v6

    invoke-interface {v1, v4, v8, v6}, Landroidx/compose/animation/AnimatedVisibilityScope;->b(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/components/ExpandableHeaderKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v11, :cond_22

    if-ne v1, v9, :cond_21

    move-object/from16 v17, v15

    goto :goto_9

    :cond_21
    invoke-static {}, Lv40;->g()V

    goto :goto_a

    :cond_22
    move-object/from16 v17, v0

    :goto_9
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_23

    if-ne v1, v12, :cond_24

    :cond_23
    new-instance v1, Ldt;

    const/16 v0, 0xa

    invoke-direct {v1, v14, v13, v0}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function0;

    const/16 v23, 0x0

    const/16 v24, 0x1c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v3

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_a
    return-object v5

    :pswitch_7
    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    move-object v7, v15

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v8, v14

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v9, v13

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairConfirmationComponentKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    move-object v2, v15

    check-cast v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    check-cast v14, Lkotlin/jvm/functions/Function2;

    check-cast v13, Landroidx/navigation/NavHostController;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-class v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;->b:Ljava/lang/String;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_25

    if-ne v6, v12, :cond_26

    :cond_25
    new-instance v6, Lvg;

    invoke-direct {v6, v14, v1, v10}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_27

    if-ne v9, v12, :cond_28

    :cond_27
    new-instance v9, Lok;

    invoke-direct {v9, v1, v13, v7}, Lok;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_28
    move-object v6, v9

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_29

    if-ne v9, v12, :cond_2a

    :cond_29
    new-instance v9, Lok;

    invoke-direct {v9, v1, v13, v4}, Lok;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v7, v9

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt;->a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    move-object v2, v14

    check-cast v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    move-object v3, v15

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v13, Landroidx/navigation/NavHostController;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_2b

    if-ne v4, v12, :cond_2c

    :cond_2b
    new-instance v4, Lvg;

    invoke-direct {v4, v1, v13, v6}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v0, v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_2d

    if-ne v6, v12, :cond_2e

    :cond_2d
    new-instance v6, Lok;

    invoke-direct {v6, v1, v13, v10}, Lok;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    move-object/from16 v26, v6

    move-object v6, v5

    move-object/from16 v5, v26

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;->b(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    move-object v3, v15

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v14

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v13, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6, v0, v2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentConfirmationComponentKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    move-object v2, v15

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    check-cast v13, Landroidx/navigation/NavHostController;

    check-cast v14, Ljava/util/Map;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v0, v3}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/domain/monitoring/address/MonitorActionHolder;->a:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-interface {v2, v0}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->l1(Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2f

    if-ne v3, v12, :cond_30

    :cond_2f
    new-instance v3, Lq;

    const/4 v0, 0x5

    invoke-direct {v3, v2, v13, v14, v0}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v3, Lkotlin/jvm/functions/Function0;

    sget-object v6, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;->PROFILE_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    const/high16 v11, 0x30000

    const/16 v12, 0x1d8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    move-object v2, v15

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v3, v14

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v13, Landroidx/navigation/NavHostController;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6, v0, v4}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_31

    if-ne v4, v12, :cond_32

    :cond_31
    new-instance v4, Ll0;

    invoke-direct {v4, v1, v13, v10}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_32
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
