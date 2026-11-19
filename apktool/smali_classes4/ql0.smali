.class public final synthetic Lql0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p2, p0, Lql0;->b:I

    iput-object p1, p0, Lql0;->c:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    iget v1, v0, Lql0;->b:I

    const/16 v2, 0x12

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, v0, Lql0;->c:Landroidx/compose/runtime/State;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/material3/SliderState;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v9, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->a:F

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v9, v7, 0x6

    if-nez v9, :cond_2

    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    :cond_0
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    :goto_0
    if-eqz v9, :cond_1

    move v3, v4

    :cond_1
    or-int/2addr v7, v3

    :cond_2
    and-int/lit8 v3, v7, 0x13

    if-eq v3, v2, :cond_3

    move v5, v6

    :cond_3
    and-int/lit8 v2, v7, 0x1

    invoke-interface {v1, v2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v2, v7

    sget-object v7, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "PodcastTrackSlider$lambda$10"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVShape;->d:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->i:J

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material3/SliderDefaults;->f(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    const-wide/16 v12, 0x10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_4

    move-wide/from16 v16, v10

    move-wide/from16 p0, v12

    goto :goto_1

    :cond_4
    move-wide/from16 p0, v12

    iget-wide v12, v0, Landroidx/compose/material3/SliderColors;->a:J

    move-wide/from16 v16, v12

    :goto_1
    cmp-long v12, v3, p0

    if-eqz v12, :cond_5

    :goto_2
    move-wide/from16 v18, v3

    goto :goto_3

    :cond_5
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->b:J

    goto :goto_2

    :goto_3
    if-eqz v14, :cond_6

    move-wide/from16 v20, v10

    goto :goto_4

    :cond_6
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->c:J

    move-wide/from16 v20, v3

    :goto_4
    cmp-long v3, v5, p0

    if-eqz v3, :cond_7

    :goto_5
    move-wide/from16 v22, v5

    goto :goto_6

    :cond_7
    iget-wide v5, v0, Landroidx/compose/material3/SliderColors;->d:J

    goto :goto_5

    :goto_6
    if-eqz v14, :cond_8

    move-wide/from16 v24, v10

    goto :goto_7

    :cond_8
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->e:J

    move-wide/from16 v24, v3

    :goto_7
    if-eqz v14, :cond_9

    move-wide/from16 v26, v10

    goto :goto_8

    :cond_9
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->f:J

    move-wide/from16 v26, v3

    :goto_8
    if-eqz v14, :cond_a

    move-wide/from16 v28, v10

    goto :goto_9

    :cond_a
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->g:J

    move-wide/from16 v28, v3

    :goto_9
    if-eqz v14, :cond_b

    move-wide/from16 v30, v10

    goto :goto_a

    :cond_b
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->h:J

    move-wide/from16 v30, v3

    :goto_a
    if-eqz v14, :cond_c

    move-wide/from16 v32, v10

    goto :goto_b

    :cond_c
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->i:J

    move-wide/from16 v32, v3

    :goto_b
    if-eqz v14, :cond_d

    :goto_c
    move-wide/from16 v34, v10

    goto :goto_d

    :cond_d
    iget-wide v10, v0, Landroidx/compose/material3/SliderColors;->j:J

    goto :goto_c

    :goto_d
    new-instance v15, Landroidx/compose/material3/SliderColors;

    const/16 v36, 0x0

    invoke-direct/range {v15 .. v36}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v3, :cond_e

    new-instance v0, Laj0;

    const/16 v3, 0x15

    invoke-direct {v0, v3}, Laj0;-><init>(I)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const v0, 0x6d86000

    sget v3, Landroidx/compose/material3/SliderState;->t:I

    or-int/2addr v0, v3

    and-int/lit8 v2, v2, 0xe

    or-int v17, v0, v2

    const/16 v18, 0x24

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v15

    move v15, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v7 .. v18}, Landroidx/compose/material3/SliderDefaults;->b(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V

    goto :goto_e

    :cond_f
    move-object/from16 v16, v1

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v9, v8, 0x6

    if-nez v9, :cond_11

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    move v3, v4

    :cond_10
    or-int/2addr v8, v3

    :cond_11
    and-int/lit8 v3, v8, 0x13

    if-eq v3, v2, :cond_12

    move v2, v6

    goto :goto_f

    :cond_12
    move v2, v5

    :goto_f
    and-int/lit8 v3, v8, 0x1

    invoke-interface {v7, v3, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    if-nez v0, :cond_13

    const v0, -0xbb495fd

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_10

    :cond_13
    const v2, -0xbb495fc

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "PackagingComposable$lambda$2$1"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v0, v7, v5}, Lcom/vuitton/android/presentation/screen/cart/components/packaging/PackagingScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_10

    :cond_14
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
