.class public final synthetic Lp50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/airbnb/lottie/compose/LottieAnimatable;

.field public final synthetic d:Lcom/airbnb/lottie/compose/LottieDynamicProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/compose/LottieDynamicProperties;I)V
    .locals 0

    iput p3, p0, Lp50;->b:I

    iput-object p1, p0, Lp50;->c:Lcom/airbnb/lottie/compose/LottieAnimatable;

    iput-object p2, p0, Lp50;->d:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lp50;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, v0, Lp50;->c:Lcom/airbnb/lottie/compose/LottieAnimatable;

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v5, :cond_0

    move v4, v7

    :cond_0
    and-int/lit8 v5, v8, 0x1

    invoke-interface {v1, v5, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "LVRadioButtonInternal$lambda$8"

    invoke-direct {v4, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-interface {v6}, Lcom/airbnb/lottie/compose/LottieAnimationState;->A()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v8

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1

    if-ne v4, v2, :cond_2

    :cond_1
    new-instance v4, Lam;

    const/4 v2, 0x3

    invoke-direct {v4, v6, v2}, Lam;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;I)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/16 v27, 0x0

    const v28, 0x1fdf8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v0, Lp50;->d:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v26, 0x40000180    # 2.0000916f

    move-object/from16 v17, v0

    move-object/from16 v25, v1

    invoke-static/range {v8 .. v28}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    goto :goto_0

    :cond_3
    move-object/from16 v25, v1

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v5, :cond_4

    move v4, v7

    :cond_4
    and-int/lit8 v5, v8, 0x1

    invoke-interface {v1, v5, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "LVCheckbox$lambda$8"

    invoke-direct {v4, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v6}, Lcom/airbnb/lottie/compose/LottieAnimationState;->A()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_5

    if-ne v8, v2, :cond_6

    :cond_5
    new-instance v8, Lam;

    invoke-direct {v8, v6, v7}, Lam;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;I)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v2, v8

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x0

    const v21, 0x1fdf8

    move-object/from16 v18, v1

    move-object v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lp50;->d:Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v19, 0x40000180    # 2.0000916f

    invoke-static/range {v1 .. v21}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    goto :goto_1

    :cond_7
    move-object/from16 v18, v1

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
