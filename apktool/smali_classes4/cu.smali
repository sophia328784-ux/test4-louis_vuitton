.class public final synthetic Lcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcu;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lcu;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Lcu;->b:I

    iput-object p1, p0, Lcu;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lcu;->c:Z

    iput-object p3, p0, Lcu;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lcu;->b:I

    iput-boolean p1, p0, Lcu;->c:Z

    iput-object p2, p0, Lcu;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcu;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcu;->b:I

    const/16 v2, 0x12

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, v0, Lcu;->e:Ljava/lang/Object;

    iget-boolean v9, v0, Lcu;->c:Z

    iget-object v0, v0, Lcu;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iget-object v1, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/runtime/MutableState;

    check-cast v8, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p3

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v11, "textFieldScrollable$lambda$1"

    invoke-direct {v10, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v10}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    :cond_0
    const v2, -0x7f685f60

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v2, v10, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    move-object v10, v1

    check-cast v10, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/gestures/Orientation;

    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v10, v11, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v7

    :goto_2
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_4

    if-ne v11, v3, :cond_5

    :cond_4
    new-instance v11, Lp11;

    invoke-direct {v11, v0, v5}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v11}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_6

    if-ne v11, v3, :cond_7

    :cond_6
    new-instance v11, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    invoke-direct {v11, v5, v0}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v11, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/gestures/Orientation;

    if-eqz v9, :cond_9

    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v6, v7

    :cond_9
    :goto_3
    invoke-static {v11, v1, v6, v2, v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->b(Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_0
    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v8, Landroidx/compose/ui/focus/FocusManager;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p3

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v0, :cond_a

    const-string v12, "StoreModeSearchScreenComposable$lambda$15"

    invoke-static {v0, v12}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v12, v11, 0x6

    if-nez v12, :cond_c

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v4, v5

    :cond_b
    or-int/2addr v11, v4

    :cond_c
    and-int/lit8 v4, v11, 0x13

    if-eq v4, v2, :cond_d

    move v2, v7

    goto :goto_4

    :cond_d
    move v2, v6

    :goto_4
    and-int/lit8 v4, v11, 0x1

    invoke-interface {v10, v4, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    if-eqz v9, :cond_e

    const/high16 v4, 0x3f400000    # 0.75f

    goto :goto_5

    :cond_e
    const v4, 0x3f666666    # 0.9f

    :goto_5
    invoke-static {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_f

    if-ne v1, v3, :cond_10

    :cond_f
    new-instance v1, Lr11;

    invoke-direct {v1, v8, v7}, Lr11;-><init>(Landroidx/compose/ui/focus/FocusManager;I)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x1b

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v10, v6}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/foundation/layout/RowScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v11, v3, 0x6

    if-nez v11, :cond_13

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    move v4, v5

    :cond_12
    or-int/2addr v3, v4

    :cond_13
    and-int/lit8 v4, v3, 0x13

    if-eq v4, v2, :cond_14

    goto :goto_7

    :cond_14
    move v7, v6

    :goto_7
    and-int/lit8 v2, v3, 0x1

    invoke-interface {v1, v2, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->i(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardContentConfigs;

    move-result-object v2

    iget-object v11, v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardContentConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;

    const v2, 0x7f080357

    invoke-static {v2, v1, v6}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v12

    const v2, 0x7f1409a2

    invoke-static {v1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$OutOfStock;

    if-eqz v0, :cond_15

    const v0, 0x426c5c0d

    const v2, 0x7f140995

    :goto_8
    invoke-static {v1, v0, v2, v1}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object v15, v0

    goto :goto_a

    :cond_15
    instance-of v0, v8, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;

    if-eqz v0, :cond_16

    const v0, 0x426c7635

    const v2, 0x7f1409a4

    goto :goto_8

    :cond_16
    if-eqz v9, :cond_17

    const v0, 0x426c8608

    const v2, 0x7f1409a3

    goto :goto_8

    :cond_17
    instance-of v0, v8, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;

    if-eqz v0, :cond_18

    const v0, 0x426c9bff

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast v8, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;

    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_9

    :cond_18
    const v0, 0x426ca397

    const v2, 0x7f14098c

    goto :goto_8

    :goto_a
    and-int/lit8 v0, v3, 0xe

    or-int/lit16 v0, v0, 0x200

    const/16 v19, 0x24

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v18, v0

    move-object/from16 v17, v1

    invoke-static/range {v10 .. v19}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardKt;->b(Landroidx/compose/foundation/layout/RowScope;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_19
    move-object/from16 v17, v1

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Landroidx/compose/runtime/MutableIntState;

    check-cast v8, Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/MeasureScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    iget-wide v6, v3, Landroidx/compose/ui/unit/Constraints;->a:J

    sget v4, Landroidx/compose/material3/ExposedDropdownMenuKt;->a:I

    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    invoke-static {v0, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v0

    iget-wide v6, v3, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-interface {v8}, Landroidx/compose/runtime/IntState;->f()I

    move-result v4

    invoke-static {v4, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v15

    if-eqz v9, :cond_1a

    move v12, v0

    goto :goto_c

    :cond_1a
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v4

    move v12, v4

    :goto_c
    if-eqz v9, :cond_1b

    :goto_d
    move v13, v0

    goto :goto_e

    :cond_1b
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v0

    goto :goto_d

    :goto_e
    iget-wide v10, v3, Landroidx/compose/ui/unit/Constraints;->a:J

    const/4 v14, 0x0

    const/16 v16, 0x4

    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->b:I

    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->c:I

    new-instance v4, La2;

    invoke-direct {v4, v0, v5}, La2;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x0

    if-eqz v9, :cond_1c

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v0, v3, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v3, v1

    goto :goto_f

    :cond_1c
    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    :cond_1d
    :goto_f
    if-eqz v9, :cond_21

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, v5, v1, v6, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v1, v7, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v4, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_20

    invoke-static {v10}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_10

    :cond_1e
    if-eqz v11, :cond_20

    invoke-static {v11}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-static {v12}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_11

    :cond_20
    :goto_10
    move-object v9, v1

    goto :goto_11

    :cond_21
    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    :goto_11
    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v0, :cond_22

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    :cond_22
    invoke-static {v1, v3, v9, v2, v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairContactComponentKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
