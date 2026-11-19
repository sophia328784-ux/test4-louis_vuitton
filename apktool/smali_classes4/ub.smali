.class public final synthetic Lub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lub;->b:I

    iput-object p1, p0, Lub;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lub;->b:I

    iget-object v0, v0, Lub;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p4

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v5, 0x30

    if-nez v1, :cond_1

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr v1, v5

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    and-int/lit16 v5, v5, 0x180

    if-nez v5, :cond_3

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v1, v5

    :cond_3
    and-int/lit16 v5, v1, 0x491

    const/16 v6, 0x490

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/2addr v1, v7

    invoke-interface {v4, v1, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "SuccessContent$lambda$0$0$1"

    invoke-direct {v1, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v5, "thankYou_timelineStep_text"

    invoke-static {v1, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x0

    move-object/from16 p0, v1

    move/from16 p2, v5

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v8

    move/from16 p1, v9

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    if-ne v3, v2, :cond_5

    const v3, 0x6cd91d91

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_5
    const v3, 0x6cdabc12

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/TextAlign;->g:I

    new-instance v14, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v14, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v25, 0x0

    const v26, 0x1fbf8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v1

    move-object/from16 v23, v4

    move-object v4, v0

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_5

    :cond_6
    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v4, p2

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    move-object/from16 v1, p3

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v11, p5

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v2, v14

    check-cast v2, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    if-eqz v1, :cond_8

    new-instance v15, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-wide v6, v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->a:J

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-object/from16 p1, v2

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->d:Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;->e:Ljava/lang/String;

    move-object/from16 v21, v2

    move-object/from16 v19, v5

    move-wide/from16 v16, v6

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v21}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;-><init>(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v15

    goto :goto_6

    :cond_8
    move-object/from16 p1, v2

    const/4 v5, 0x0

    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v2, v9, v6

    move-wide v15, v6

    if-lez v2, :cond_9

    move-wide v6, v9

    :cond_9
    cmp-long v2, v12, v15

    if-lez v2, :cond_a

    move-object v8, v11

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;-><init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;)V

    invoke-interface {v0, v14, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
