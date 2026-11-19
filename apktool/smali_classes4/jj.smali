.class public final synthetic Ljj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/Function;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Ljj;->c:Z

    iput-object p3, p0, Ljj;->d:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Z)V
    .locals 1

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Ljj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj;->d:Lkotlin/Function;

    iput-object p2, p0, Ljj;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Ljj;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Ljj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljj;->c:Z

    iput-object p2, p0, Ljj;->e:Ljava/lang/Object;

    iput-object p3, p0, Ljj;->d:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Ljj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljj;->c:Z

    iput-object p2, p0, Ljj;->d:Lkotlin/Function;

    iput-object p3, p0, Ljj;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Ljj;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v5, v0, Ljj;->e:Ljava/lang/Object;

    iget-object v6, v0, Ljj;->d:Lkotlin/Function;

    packed-switch v1, :pswitch_data_0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v6, :cond_2

    const v1, 0x597dc8aa

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    if-ne v2, v4, :cond_1

    :cond_0
    new-instance v2, Lee0;

    const/16 v1, 0x11

    invoke-direct {v2, v6, v1}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lfy;

    iget-boolean v0, v0, Ljj;->c:Z

    invoke-direct {v1, v5, v0}, Lfy;-><init>(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Z)V

    const v0, 0x721b5e7b

    invoke-static {v0, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const/high16 v14, 0x180000

    const/16 v15, 0x3e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v15}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_2
    const v0, 0x598d9760

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-object/from16 v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v9, v8, 0x6

    const/4 v10, 0x4

    if-nez v9, :cond_4

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_1

    :cond_3
    const/4 v9, 0x2

    :goto_1
    or-int/2addr v9, v8

    goto :goto_2

    :cond_4
    move v9, v8

    :goto_2
    and-int/lit8 v8, v8, 0x30

    const/16 v11, 0x20

    if-nez v8, :cond_6

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v11

    goto :goto_3

    :cond_5
    const/16 v8, 0x10

    :goto_3
    or-int/2addr v9, v8

    :cond_6
    and-int/lit16 v8, v9, 0x93

    const/16 v12, 0x92

    const/4 v13, 0x1

    if-eq v8, v12, :cond_7

    move v8, v13

    goto :goto_4

    :cond_7
    move v8, v3

    :goto_4
    and-int/lit8 v12, v9, 0x1

    invoke-interface {v7, v12, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v12, "CarouselS_uYRUAWA$lambda$5$0$1"

    invoke-direct {v8, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_8

    new-instance v12, Ljh;

    const/16 v14, 0x9

    invoke-direct {v12, v14}, Ljh;-><init>(I)V

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v3, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    and-int/lit8 v14, v9, 0x70

    if-ne v14, v11, :cond_9

    move v11, v13

    goto :goto_5

    :cond_9
    move v11, v3

    :goto_5
    or-int/2addr v11, v12

    and-int/lit8 v9, v9, 0xe

    if-ne v9, v10, :cond_a

    move v3, v13

    :cond_a
    or-int/2addr v3, v11

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_b

    if-ne v9, v4, :cond_c

    :cond_b
    new-instance v9, Lzd;

    invoke-direct {v9, v6, v2, v1, v13}, Lzd;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-boolean v3, v0, Ljj;->c:Z

    move-object v4, v5

    move-object v6, v7

    move-object v1, v8

    move-object v5, v9

    move v7, v14

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_d
    move-object v6, v7

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v8, v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v10

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_e

    if-ne v2, v4, :cond_f

    :cond_e
    new-instance v2, Llj;

    const/4 v1, 0x3

    invoke-direct {v2, v6, v5, v1}, Llj;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;I)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/16 v14, 0x180

    const/4 v15, 0x1

    const/4 v7, 0x0

    const v9, 0x3f2aaaab

    iget-boolean v11, v0, Ljj;->c:Z

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/common/editorial/components/CarouselAssetKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLandroidx/compose/ui/graphics/Shape;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "CarouselLMultiple$lambda$1$1"

    invoke-direct {v6, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_10

    if-ne v8, v4, :cond_11

    :cond_10
    new-instance v8, Lc1;

    const/16 v4, 0x1b

    invoke-direct {v8, v1, v4}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v3, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object v4, v3

    iget-object v3, v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v6, v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const/4 v7, 0x0

    if-eqz v6, :cond_12

    iget-object v8, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->a:Ljava/lang/String;

    goto :goto_7

    :cond_12
    move-object v8, v7

    :goto_7
    if-eqz v6, :cond_13

    iget-object v7, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->b:Ljava/lang/String;

    :cond_13
    iget-object v6, v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    const/4 v11, 0x0

    iget-boolean v0, v0, Ljj;->c:Z

    move-object v2, v5

    move-object v5, v7

    move-object v7, v1

    move-object v1, v4

    move-object v4, v8

    move v8, v0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLMultipleKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroidx/compose/foundation/shape/RoundedCornerShape;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
