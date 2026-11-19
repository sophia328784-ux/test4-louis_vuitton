.class public final synthetic Llc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/MutableState;)V
    .locals 0

    iput p1, p0, Llc;->b:I

    iput-object p2, p0, Llc;->c:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Llc;->b:I

    const/16 v2, 0xf

    const/16 v3, 0x12

    const/4 v4, 0x4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x1

    const/4 v8, 0x2

    iget-object v0, v0, Llc;->c:Landroidx/compose/runtime/MutableState;

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/MeasureScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v3, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    iget v4, v3, Landroidx/compose/ui/text/MultiParagraph;->f:I

    if-nez v4, :cond_0

    iget v0, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    new-instance v4, La2;

    const/16 v5, 0xd

    invoke-direct {v4, v2, v5}, La2;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-static {v1, v0, v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v7

    goto/16 :goto_3

    :cond_0
    invoke-static {v9, v4}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v6, v5, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v6, :cond_4

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/TextLayoutResult;->f(I)F

    move-result v6

    :goto_0
    iget-boolean v10, v5, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/compose/ui/text/TextLayoutResult;->f(I)F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_0

    :cond_1
    iget v3, v3, Landroidx/compose/ui/text/MultiParagraph;->f:I

    invoke-static {v9, v3}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v5, v4, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v5, :cond_3

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/compose/ui/text/TextLayoutResult;->g(I)F

    move-result v5

    :goto_1
    iget-boolean v7, v4, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/compose/ui/text/TextLayoutResult;->g(I)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_1

    :cond_2
    sub-float/2addr v5, v6

    float-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-int v0, v0

    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    new-instance v4, Lqb;

    invoke-direct {v4, v2, v6, v8}, Lqb;-><init>(Ljava/lang/Object;FI)V

    invoke-static {v1, v0, v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v7

    goto :goto_3

    :cond_3
    invoke-static {}, Lb21;->x()V

    :goto_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    invoke-static {}, Lb21;->x()V

    goto :goto_2

    :goto_3
    return-object v7

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p3

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v12, v11, 0x6

    if-nez v12, :cond_6

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    move v4, v8

    :goto_4
    or-int/2addr v11, v4

    :cond_6
    and-int/lit8 v4, v11, 0x13

    if-eq v4, v3, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v9

    :goto_5
    and-int/lit8 v4, v11, 0x1

    invoke-interface {v10, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v3, "OsaKisaComposable$lambda$6"

    invoke-static {v3, v1}, Lo60;->e(Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v11, v12, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v6, 0x0

    invoke-static {v1, v4, v6, v8}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v4, v6, v10, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v10, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_8
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->o()V

    :goto_6
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v12, v3}, La;->f(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v15, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v17, 0x0

    const/16 v18, 0xd

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v13, 0x7f140b21

    invoke-static {v10, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v15

    iget-object v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 p0, v8

    const/16 v33, 0x0

    iget-wide v7, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v31, 0x0

    const v32, 0x1fff8

    move-object/from16 v28, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v29, v11

    move-object v11, v1

    move-object/from16 v1, v29

    move-object/from16 v29, v10

    move-object v10, v13

    move-wide/from16 v34, v7

    move-object v7, v12

    move-wide/from16 v12, v34

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v29

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v12, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/4 v14, 0x0

    const/16 v15, 0xd

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v13, 0x30

    invoke-static {v12, v11, v8, v13}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v8, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->o()V

    :goto_7
    invoke-static {v8, v11, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v13, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, p0

    invoke-static {v12, v8, v1, v8, v6}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v8, v10, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_a

    new-instance v1, Lc30;

    invoke-direct {v1, v2, v0}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/high16 v17, 0x30000

    const/16 v18, 0x1b

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v8

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v10, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const v0, 0x7f140b1f

    invoke-static {v8, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->k:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v31, 0x0

    const v32, 0x1fff8

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v8

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_8

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v33

    :cond_c
    const/16 v33, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v33

    :cond_d
    move-object/from16 v29, v10

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/FlowRowScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v3, 0x11

    const/16 v4, 0x10

    if-eq v1, v4, :cond_e

    move v9, v6

    :cond_e
    and-int/lit8 v1, v3, 0x1

    invoke-interface {v2, v1, v9}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_f

    if-ne v6, v5, :cond_10

    :cond_f
    new-instance v6, Ltf;

    const/4 v4, 0x5

    invoke-direct {v6, v0, v3, v4}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v18, v6

    check-cast v18, Lkotlin/jvm/functions/Function0;

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->b:Ljava/lang/String;

    iget-boolean v4, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->d:Z

    if-eqz v4, :cond_11

    sget-object v3, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->DISABLED:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    :goto_a
    move-object v13, v3

    goto :goto_b

    :cond_11
    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->c:Z

    if-eqz v3, :cond_12

    sget-object v3, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE_DELETABLE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    goto :goto_a

    :cond_12
    sget-object v3, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ENABLED:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    goto :goto_a

    :goto_b
    const/16 v20, 0x0

    const/16 v21, 0xf5

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v2

    invoke-static/range {v10 .. v21}, Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/TagFilterType;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_13
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_c

    :cond_14
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation3/runtime/NavEntry;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p3

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/lit8 v11, v10, 0x6

    if-nez v11, :cond_16

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    move v8, v4

    :cond_15
    or-int/2addr v10, v8

    :cond_16
    and-int/lit8 v8, v10, 0x13

    if-eq v8, v3, :cond_17

    move v3, v6

    goto :goto_d

    :cond_17
    move v3, v9

    :goto_d
    and-int/lit8 v8, v10, 0x1

    invoke-interface {v7, v8, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    and-int/lit8 v3, v10, 0xe

    if-ne v3, v4, :cond_18

    goto :goto_e

    :cond_18
    move v6, v9

    :goto_e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v6, :cond_19

    if-ne v3, v5, :cond_1a

    :cond_19
    new-instance v3, Lc1;

    invoke-direct {v3, v1, v2}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v3, Lkotlin/jvm/functions/Function1;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1c

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v4, v9

    :goto_f
    if-ge v4, v2, :cond_1f

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_10

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1c
    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1d

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    :goto_10
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_12

    :cond_1f
    :goto_11
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    :goto_12
    invoke-static {v0, v7}, Landroidx/lifecycle/compose/RememberLifecycleOwnerKt;->a(Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v2, Lmc;

    invoke-direct {v2, v1, v9}, Lmc;-><init>(Landroidx/navigation3/runtime/NavEntry;I)V

    const v1, -0x6624bf14

    invoke-static {v1, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, v7, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_13

    :cond_20
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_13
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
