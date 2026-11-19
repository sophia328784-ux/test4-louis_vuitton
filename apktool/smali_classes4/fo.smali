.class public final synthetic Lfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget v0, v0, Lfo;->b:I

    const/16 v3, 0x11

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/16 v10, 0xf

    const/16 v11, 0xd

    const/16 v12, 0xe

    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    const/4 v14, 0x6

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 p0, 0x63

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v10, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v10, v3, 0x3

    if-eq v10, v7, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v1

    :goto_0
    and-int/2addr v3, v9

    invoke-interface {v0, v3, v10}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v15, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v16, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v28, 0x7ff

    const/16 v29, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v16 .. v29}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v25, 0x1f4

    const/16 v26, 0x0

    const/16 v17, 0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v16

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v26}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    new-instance v3, Lio;

    const/16 v10, 0x1d

    invoke-direct {v3, v10}, Lio;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x5

    if-ne v10, v2, :cond_2

    new-instance v10, Llo;

    invoke-direct {v10, v11}, Llo;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x4

    if-ne v12, v2, :cond_3

    new-instance v12, Lmo;

    invoke-direct {v12, v13}, Lmo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_4

    new-instance v7, Llo;

    invoke-direct {v7, v14}, Llo;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_5

    new-instance v9, Lmo;

    invoke-direct {v9, v11}, Lmo;-><init>(I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_6

    new-instance v11, Lmo;

    invoke-direct {v11, v14}, Lmo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v2, :cond_7

    new-instance v14, Lno;

    invoke-direct {v14, v8}, Lno;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v8, v14

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v2, :cond_8

    new-instance v14, Lmo;

    invoke-direct {v14, v6}, Lmo;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_9

    new-instance v6, Lmo;

    invoke-direct {v6, v5}, Lmo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_a

    new-instance v5, Lmo;

    invoke-direct {v5, v4}, Lmo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_b

    new-instance v4, Llo;

    invoke-direct {v4, v13}, Llo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_c

    new-instance v13, Lno;

    invoke-direct {v13, v1}, Lno;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_d

    new-instance v1, Lno;

    move-object/from16 p0, v3

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lno;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_1

    :cond_d
    move-object/from16 p0, v3

    :goto_1
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_e

    new-instance v3, Lno;

    const/4 v2, 0x2

    invoke-direct {v3, v2}, Lno;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object v2, v14

    move-object v14, v1

    move-object v1, v15

    move-object v15, v3

    move-object v3, v10

    move-object v10, v6

    move-object v6, v9

    move-object v9, v2

    move-object v2, v12

    move-object v12, v4

    move-object v4, v2

    move-object v2, v11

    move-object v11, v5

    move-object v5, v7

    move-object v7, v2

    move-object/from16 v2, p0

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_f
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;

    and-int/lit8 v4, v0, 0x3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_10

    const/4 v1, 0x1

    :cond_10
    const/16 v21, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "lambda_1708047358$lambda$0"

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    sget-object v5, Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;->DARK:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_11

    new-instance v6, Lio;

    invoke-direct {v6, v3}, Lio;-><init>(I)V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const v13, 0x6036036

    const/16 v14, 0x6c0

    move-object v2, v5

    move-object v5, v6

    const/high16 v6, 0x3f100000    # 0.5625f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v4

    move-object v4, v0

    invoke-static/range {v1 .. v14}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;FZZZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_13

    const/4 v3, 0x1

    :goto_4
    const/16 v21, 0x1

    goto :goto_5

    :cond_13
    move v3, v1

    goto :goto_4

    :goto_5
    and-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "lambda__1431927403$lambda$0"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v2, v3, v4, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_15

    const/4 v3, 0x1

    :goto_7
    const/16 v21, 0x1

    goto :goto_8

    :cond_15
    move v3, v1

    goto :goto_7

    :goto_8
    and-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "lambda__973291884$lambda$0"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v2, v3, v4, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_9

    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_17

    const/4 v3, 0x1

    :goto_a
    const/16 v21, 0x1

    goto :goto_b

    :cond_17
    move v3, v1

    goto :goto_a

    :goto_b
    and-int/lit8 v0, v0, 0x1

    invoke-interface {v10, v0, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_19

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v1, "lambda_1359566195$lambda$0"

    invoke-static {v1, v15}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1a

    new-instance v3, Lio;

    invoke-direct {v3, v12}, Lio;-><init>(I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_1b

    new-instance v6, Lj6;

    const/16 v7, 0x12

    invoke-direct {v6, v7, v0}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v8, v6

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_1c

    new-instance v6, Lko;

    const/4 v2, 0x2

    invoke-direct {v6, v4, v0, v2}, Lko;-><init>(ILandroidx/compose/runtime/MutableState;I)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const v11, 0x6db0db6

    const/4 v2, 0x1

    const-string v6, "01"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_c

    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    and-int/lit8 v4, v0, 0x3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1e

    const/4 v4, 0x1

    :goto_d
    const/16 v21, 0x1

    goto :goto_e

    :cond_1e
    move v4, v1

    goto :goto_d

    :goto_e
    and-int/lit8 v0, v0, 0x1

    invoke-interface {v10, v0, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v1, "lambda_1989112283$lambda$0"

    invoke-static {v1, v15}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_21

    new-instance v6, Lio;

    invoke-direct {v6, v11}, Lio;-><init>(I)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_22

    new-instance v7, Lj6;

    invoke-direct {v7, v3, v0}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_23

    new-instance v3, Lko;

    const/4 v2, 0x1

    invoke-direct {v3, v4, v0, v2}, Lko;-><init>(ILandroidx/compose/runtime/MutableState;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const v11, 0x6db0db6

    const/4 v2, 0x1

    move-object v3, v6

    const-string v6, "01"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_f

    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_25

    const/4 v3, 0x1

    :goto_10
    const/16 v21, 0x1

    goto :goto_11

    :cond_25
    move v3, v1

    goto :goto_10

    :goto_11
    and-int/lit8 v0, v0, 0x1

    invoke-interface {v10, v0, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_27

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v3, "lambda__394006331$lambda$0"

    invoke-static {v3, v15}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_28

    new-instance v6, Lio;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Lio;-><init>(I)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_29

    new-instance v7, Lj6;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v0}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_29
    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_2a

    new-instance v7, Lko;

    invoke-direct {v7, v4, v0, v1}, Lko;-><init>(ILandroidx/compose/runtime/MutableState;I)V

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const v11, 0x6db0db6

    const/4 v2, 0x1

    move-object v1, v3

    move-object v3, v6

    const-string v6, "01"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_12

    :cond_2b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2c

    const/4 v4, 0x1

    :goto_13
    const/16 v21, 0x1

    goto :goto_14

    :cond_2c
    move v4, v1

    goto :goto_13

    :goto_14
    and-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_32

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_2e

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v1, "lambda_208818428$lambda$0"

    invoke-static {v1, v15}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_2f

    new-instance v6, Lio;

    invoke-direct {v6, v10}, Lio;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2f
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_30

    new-instance v7, Lj6;

    const/16 v9, 0x13

    invoke-direct {v7, v9, v3}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_31

    new-instance v9, Lko;

    invoke-direct {v9, v4, v3, v8}, Lko;-><init>(ILandroidx/compose/runtime/MutableState;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const v11, 0x6db0db6

    const/4 v2, 0x1

    move-object v3, v6

    const-string v6, "01"

    move-object v8, v7

    const/4 v7, 0x0

    move-object v10, v0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_15

    :cond_32
    move-object v10, v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_33

    const/4 v3, 0x1

    :goto_16
    const/16 v21, 0x1

    goto :goto_17

    :cond_33
    move v3, v1

    goto :goto_16

    :goto_17
    and-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "lambda_1184405959$lambda$0"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->c:J

    invoke-static {v2, v3, v4, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const-string v3, "01"

    const/16 v4, 0x36

    invoke-static {v4, v1, v0, v2, v3}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->c(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    goto :goto_18

    :cond_34
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_35

    const/4 v1, 0x1

    :cond_35
    const/4 v3, 0x1

    and-int/2addr v2, v3

    invoke-interface {v0, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "lambda__1573741747$lambda$0"

    invoke-static {v1, v15}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v4, 0x1b6

    invoke-static {v1, v3, v2, v0, v4}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_19

    :cond_36
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    and-int/lit8 v2, v0, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_37

    const/4 v2, 0x1

    :goto_1a
    const/16 v21, 0x1

    goto :goto_1b

    :cond_37
    move v2, v1

    goto :goto_1a

    :goto_1b
    and-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "lambda_1366430518$lambda$0"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v4, v5, v3, v1}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-eqz v7, :cond_39

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    :cond_38
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1c
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v5, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v2, v15}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v1, 0x186

    const/16 v2, 0x3f8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "Title"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_1d

    :cond_39
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_3a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/options/settings/components/ComposableSingletons$SettingsComposableKt;->a:Lcom/vuitton/android/presentation/screen/options/settings/components/ComposableSingletons$SettingsComposableKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    const/16 v21, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    const/16 v34, 0x1fff

    const/16 v35, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v35}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;-><init>(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v22, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v21, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->GDPR:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    new-instance v20, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    const/16 v27, 0x3c

    const/16 v28, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v28}, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v3}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3c

    new-instance v0, Ljo;

    invoke-direct {v0, v4}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3c
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3d

    new-instance v0, Ljo;

    const/16 v5, 0xa

    invoke-direct {v0, v5}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3d
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3e

    new-instance v0, Ljo;

    const/16 v6, 0xb

    invoke-direct {v0, v6}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3e
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3f

    new-instance v0, Ljo;

    const/16 v7, 0xc

    invoke-direct {v0, v7}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3f
    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_40

    new-instance v0, Ljo;

    invoke-direct {v0, v11}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_40
    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_41

    new-instance v0, Ljo;

    invoke-direct {v0, v12}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_41
    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_42

    new-instance v0, Ljo;

    invoke-direct {v0, v10}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_42
    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_43

    new-instance v0, Ljo;

    invoke-direct {v0, v14}, Ljo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_43
    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_44

    new-instance v0, Lio;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lio;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_44
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const v14, 0x36db6c00

    const/16 v15, 0x36

    move-object/from16 v2, v20

    invoke-static/range {v1 .. v15}, Lcom/vuitton/android/presentation/screen/options/settings/components/SettingsComposableKt;->f(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1e

    :cond_45
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/options/settings/components/ComposableSingletons$SettingsComposableKt;->a:Lcom/vuitton/android/presentation/screen/options/settings/components/ComposableSingletons$SettingsComposableKt;

    and-int/lit8 v4, v3, 0x3

    const/4 v7, 0x2

    if-eq v4, v7, :cond_46

    const/4 v1, 0x1

    :cond_46
    const/16 v21, 0x1

    and-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_47

    new-instance v3, Ljo;

    invoke-direct {v3, v6}, Ljo;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_47
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_48

    new-instance v4, Ljo;

    invoke-direct {v4, v5}, Ljo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_48
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_49

    new-instance v5, Lio;

    const/16 v7, 0xc

    invoke-direct {v5, v7}, Lio;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_49
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x6db6

    const/4 v2, 0x0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/options/settings/components/SettingsComposableKt;->b(Ljava/lang/Boolean;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1f

    :cond_4a
    move-object v6, v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/settings/components/ComposableSingletons$SettingsComposableKt;->a:Lcom/vuitton/android/presentation/screen/options/settings/components/ComposableSingletons$SettingsComposableKt;

    and-int/lit8 v2, v0, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4b

    const/4 v2, 0x1

    :goto_20
    const/16 v21, 0x1

    goto :goto_21

    :cond_4b
    move v2, v1

    goto :goto_20

    :goto_21
    and-int/lit8 v0, v0, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->w:I

    invoke-static {v0, v6, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    const v0, 0x7f140325

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "lambda_1365627305$lambda$0"

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v7, 0x8

    const/16 v8, 0x8

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_22

    :cond_4c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_22
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/ComposableSingletons$SelectableItemsCardKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/ComposableSingletons$SelectableItemsCardKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    const/16 v21, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-interface {v5, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    const-string v3, "Tonnerre infini"

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    const-string v6, "Bonheur enivr\u00e9"

    invoke-direct {v4, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_4e

    new-instance v0, Lio;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lio;-><init>(I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4e
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v6, 0xc30

    const/4 v7, 0x1

    const/4 v1, 0x0

    const-string v2, "Samples"

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/SelectableItemsCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_23

    :cond_4f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_23
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/ComposableSingletons$SelectableItemsCardKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/ComposableSingletons$SelectableItemsCardKt;

    and-int/lit8 v2, v0, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_50

    const/4 v2, 0x1

    :goto_24
    const/16 v21, 0x1

    goto :goto_25

    :cond_50
    move v2, v1

    goto :goto_24

    :goto_25
    and-int/lit8 v0, v0, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "lambda_1799572764$lambda$0"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v2}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-static {v0, v6, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    const v0, 0x7f14035c

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x8

    const/16 v8, 0x8

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_26

    :cond_51
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_26
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListLoadingScreenKt;

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_52

    const/4 v1, 0x1

    :cond_52
    const/16 v21, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListLoadingScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v0, v14}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListLoadingScreenKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_27

    :cond_53
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_27
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListLoadingScreenKt;

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_54

    const/4 v1, 0x1

    :cond_54
    const/16 v21, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_55

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_28

    :cond_55
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_28
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/components/ComposableSingletons$RepairDetailAddressBookComposableKt;->a:Lcom/vuitton/android/presentation/screen/repairs/components/ComposableSingletons$RepairDetailAddressBookComposableKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_56

    const/4 v1, 0x1

    :cond_56
    const/16 v21, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-interface {v7, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    sget-object v14, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const v31, 0x1fffe

    const/16 v32, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v13 .. v32}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_57

    new-instance v0, Leo;

    invoke-direct {v0, v11}, Leo;-><init>(I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_57
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_58

    new-instance v0, Leo;

    invoke-direct {v0, v12}, Leo;-><init>(I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_58
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_59

    new-instance v0, Leo;

    invoke-direct {v0, v10}, Leo;-><init>(I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_59
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5a

    new-instance v0, Lgo;

    invoke-direct {v0, v8}, Lgo;-><init>(I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5a
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const v8, 0x36db0

    const/4 v2, 0x0

    move-object v1, v13

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/repairs/components/RepairDetailAddressBookComposableKt;->c(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_29

    :cond_5b
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_29
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$QuickFilterButtonKt;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ComposableSingletons$QuickFilterButtonKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5c

    const/4 v1, 0x1

    :cond_5c
    const/16 v21, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-interface {v8, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->p:I

    sget-object v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->InitialAnimation:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5d

    new-instance v1, Lgo;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Lgo;-><init>(I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5d
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const v9, 0x30c00

    const/16 v10, 0x55

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, v0

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2a

    :cond_5e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/ComposableSingletons$PodcastTrackSliderKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/ComposableSingletons$PodcastTrackSliderKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5f

    const/4 v1, 0x1

    :cond_5f
    const/16 v21, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-interface {v8, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_60

    new-instance v0, Leo;

    const/16 v6, 0xb

    invoke-direct {v0, v6}, Leo;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_60
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_61

    new-instance v0, Lgo;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lgo;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_61
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_62

    new-instance v0, Leo;

    const/16 v7, 0xc

    invoke-direct {v0, v7}, Leo;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_62
    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const v9, 0x1b6db0

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->a(Landroidx/compose/ui/Modifier;FFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2b

    :cond_63
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt;

    and-int/lit8 v2, v0, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_64

    const/4 v2, 0x1

    :goto_2c
    const/16 v21, 0x1

    goto :goto_2d

    :cond_64
    move v2, v1

    goto :goto_2c

    :goto_2d
    and-int/lit8 v0, v0, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "lambda_770797152$lambda$0"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->n:F

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->O:I

    invoke-static {v0, v6, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    const v0, 0x7f140334

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_2e

    :cond_65
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/components/ComposableSingletons$PdpLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/pdp/components/ComposableSingletons$PdpLoadingScreenKt;

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_66

    const/4 v4, 0x1

    :goto_2f
    const/16 v21, 0x1

    goto :goto_30

    :cond_66
    move v4, v1

    goto :goto_2f

    :goto_30
    and-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_68

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_67

    new-instance v3, Lgo;

    invoke-direct {v3, v1}, Lgo;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_67
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v0, v14}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpLoadingScreenKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_31

    :cond_68
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_31
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ComposableSingletons$PdpCareAndSustainabilityKt;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ComposableSingletons$PdpCareAndSustainabilityKt;

    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_69

    const/4 v1, 0x1

    :cond_69
    const/16 v21, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;

    const/16 v11, 0x19

    const/4 v12, 0x0

    const/4 v6, 0x0

    const-string v7, "Description"

    const-string v8, "Title"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;

    const/16 v12, 0x19

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "Description"

    const-string v9, "Title"

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v5, v6}, [Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6a

    new-instance v1, Leo;

    const/16 v5, 0xa

    invoke-direct {v1, v5}, Leo;-><init>(I)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6a
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v5, 0x180

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCareAndSustainabilityKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_32

    :cond_6b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_32
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
