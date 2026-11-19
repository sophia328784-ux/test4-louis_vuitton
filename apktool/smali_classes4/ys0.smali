.class public final synthetic Lys0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lys0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lys0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lys0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lys0;->f:Ljava/lang/Object;

    iput-object p4, p0, Lys0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Lys0;->b:I

    iput-object p1, p0, Lys0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lys0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lys0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lys0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;II)V
    .locals 0

    .line 17
    iput p6, p0, Lys0;->b:I

    iput-object p1, p0, Lys0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lys0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lys0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lys0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lys0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lys0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lys0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lys0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lys0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lys0;->b:I

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v7, v0, Lys0;->f:Ljava/lang/Object;

    iget-object v8, v0, Lys0;->e:Ljava/lang/Object;

    iget-object v9, v0, Lys0;->d:Ljava/lang/Object;

    iget-object v0, v0, Lys0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment$Companion;

    and-int/lit8 v11, v10, 0x3

    if-eq v11, v5, :cond_0

    move v4, v6

    :cond_0
    and-int/lit8 v5, v10, 0x1

    invoke-interface {v1, v5, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;

    invoke-direct {v4, v0, v9, v8, v7}, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x4aec2c5

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->O:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;

    and-int/lit8 v11, v10, 0x3

    if-eq v11, v5, :cond_2

    move v4, v6

    :cond_2
    and-int/lit8 v5, v10, 0x1

    invoke-interface {v1, v5, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;

    invoke-direct {v4, v0, v9, v8, v7}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x39f81234

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/TransferCertificateConfirmationComposableKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-object v13, v8

    check-cast v13, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v19, v7

    check-cast v19, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v7, v2, 0x3

    if-eq v7, v5, :cond_4

    move v4, v6

    :cond_4
    and-int/2addr v2, v6

    invoke-interface {v1, v2, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    instance-of v4, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_9

    const v2, 0xa6e9317

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    iget-object v12, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-object v11, v13

    iget-object v13, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    iget-object v4, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    if-eqz v4, :cond_5

    iget-object v6, v4, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->a:Ljava/lang/String;

    move-object v14, v6

    goto :goto_2

    :cond_5
    move-object v14, v3

    :goto_2
    if-eqz v4, :cond_6

    iget-object v3, v4, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->b:Ljava/lang/String;

    :cond_6
    move-object v15, v3

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->g:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_7

    if-ne v4, v5, :cond_8

    :cond_7
    new-instance v4, Lqx;

    invoke-direct {v4, v0, v9}, Lqx;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v20, v4

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/high16 v25, 0xc00000

    const/16 v26, 0x3901

    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v1

    move-object/from16 v16, v2

    invoke-static/range {v10 .. v26}, Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_9
    move-object v11, v13

    move-object/from16 v7, v19

    instance-of v3, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    if-eqz v3, :cond_e

    const v3, 0xa6ede3e

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    move-object v13, v11

    iget-object v11, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;->b:Ljava/lang/String;

    iget-object v12, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;->c:Ljava/util/List;

    iget-boolean v14, v7, Lcom/vuitton/android/presentation/model/common/A11ySettings;->a:Z

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_a

    if-ne v4, v5, :cond_b

    :cond_a
    new-instance v4, Lr31;

    const/4 v3, 0x5

    invoke-direct {v4, v2, v0, v9, v3}, Lr31;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_c

    if-ne v4, v5, :cond_d

    :cond_c
    new-instance v4, Lp01;

    const/16 v3, 0x12

    invoke-direct {v4, v2, v0, v3}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v17, v4

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/high16 v19, 0x30000

    const/16 v20, 0x1

    const/4 v10, 0x0

    const/4 v15, 0x1

    move-object/from16 v18, v1

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/common/editorial/components/carouselm/CarouselMKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_e
    const v0, 0x437670f3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function3;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleNavHostKt;->a(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Landroidx/compose/material3/TopAppBarScrollBehavior;

    move v1, v4

    move-object v4, v9

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    if-eq v2, v5, :cond_10

    move v1, v6

    :cond_10
    and-int/2addr v0, v6

    invoke-interface {v9, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v10, 0x0

    const/16 v11, 0x63

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v5, v8

    move-object v8, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_11
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouFeedbackBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v9

    check-cast v2, Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move v1, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v7, Landroidx/compose/runtime/State;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v5, :cond_12

    move v4, v6

    goto :goto_5

    :cond_12
    move v4, v1

    :goto_5
    and-int/lit8 v1, v2, 0x1

    invoke-interface {v12, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f140e6c

    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ls8;

    invoke-direct {v1, v8, v9, v7}, Ls8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    const v2, -0x7fc85d37

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/4 v14, 0x0

    const/16 v15, 0xf37

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0xc00000

    move-object v7, v0

    invoke-static/range {v1 .. v15}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_6

    :cond_13
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/services/components/ServicesScreenKt;->a(Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    check-cast v9, Landroid/content/Context;

    check-cast v8, Landroidx/compose/runtime/State;

    move-object v10, v7

    check-cast v10, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-object/from16 v12, p1

    check-cast v12, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnKeywordCardEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    invoke-static {v9}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v11

    if-eqz v11, :cond_14

    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListItemKt;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
