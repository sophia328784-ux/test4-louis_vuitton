.class public final synthetic Lki0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;I)V
    .locals 0

    iput p2, p0, Lki0;->b:I

    iput-object p1, p0, Lki0;->c:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    iget v1, v0, Lki0;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, v0, Lki0;->c:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v9, v8, 0x6

    if-nez v9, :cond_1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x4

    :cond_0
    or-int/2addr v8, v3

    :cond_1
    and-int/lit8 v3, v8, 0x13

    const/16 v9, 0x12

    if-eq v3, v9, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    and-int/2addr v8, v5

    invoke-interface {v11, v8, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v3, "OrderReturnSummaryScreen$lambda$3"

    invoke-static {v3, v1}, Lo60;->e(Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v11, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v12

    if-eqz v12, :cond_1b

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_3
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v1, v12, v3}, La;->f(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v13, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v13}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    move-object/from16 v16, v12

    const/16 v12, 0x6006

    move-object/from16 v17, v10

    move v10, v13

    const/4 v13, 0x3

    move-object/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 p0, v8

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move-object/from16 v2, v18

    const/16 p0, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormToolBox;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;FLandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v9, v10, v11, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v11, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-eqz v13, :cond_1a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    invoke-static {v11, v9, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v12, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v11, v7, v11, v2}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v11, v8, v5, v3}, La;->f(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const v1, 0x7f141103

    invoke-static {v11, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f141101

    invoke-static {v11, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v8, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/4 v5, 0x1

    invoke-static {v1, v6, v2, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v1, 0x7f14099a

    invoke-static {v11, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v29, 0x0

    const v30, 0x1fff8

    move-object/from16 v27, v11

    move-wide v10, v12

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v1

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v27

    const v1, -0x62e409ae

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->f:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v16, ""

    sget-object v15, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v32, v5, 0x1

    if-ltz v5, :cond_f

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-lez v5, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    const v5, -0x2a0c9f9c

    invoke-static {v5, v11, v3}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v9, 0x1

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v27, v11

    move-wide v10, v9

    const/4 v9, 0x0

    move-object/from16 v12, v27

    invoke-static/range {v8 .. v14}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v11, v12

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_5
    const v5, -0x2a088845

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    const v5, -0x62e3d722

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v5, v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    sget-object v8, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    check-cast v8, Ljava/util/Collection;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v12, v8

    goto :goto_7

    :cond_7
    :goto_5
    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    :goto_7
    const/16 v14, 0xc00

    move-object v8, v15

    const/4 v15, 0x1

    move-object v13, v8

    const/4 v8, 0x0

    move-object/from16 v27, v11

    const/high16 v11, 0x42c00000    # 96.0f

    move-object v6, v13

    move-object/from16 v13, v27

    invoke-static/range {v8 .. v15}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->f(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Landroidx/compose/runtime/Composer;II)V

    move-object v11, v13

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v11, v8}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v8}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v8

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v8, v10, v11, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v11, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->o()V

    :goto_8
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v12, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v8, 0x7f141102

    invoke-static {v11, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;->c:Ljava/lang/String;

    goto :goto_9

    :cond_b
    move-object/from16 v7, p0

    :goto_9
    if-nez v7, :cond_c

    move-object/from16 v9, v16

    goto :goto_a

    :cond_c
    move-object v9, v7

    :goto_a
    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->l(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    const v7, 0x7f140fd7

    invoke-static {v11, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->l(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->i:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->d:Z

    if-eqz v5, :cond_d

    const v5, 0x30d461c7

    invoke-static {v5, v11, v3}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v6, v5, v7}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v5, 0x7f140a7a

    invoke-static {v11, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v29, 0x0

    const v30, 0x1fff8

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v5

    move-object/from16 v27, v11

    move-wide v10, v6

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v27

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_d
    const v5, 0x30da7005

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    move/from16 v5, v32

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw p0

    :cond_10
    move-object v6, v15

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v22, 0x5

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move/from16 v19, v4

    move/from16 v21, v5

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v9, 0x0

    move-object v12, v11

    move-wide v10, v4

    invoke-static/range {v8 .. v14}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v11, v12

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_11

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v2, :cond_18

    :cond_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_17

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->d:Ljava/lang/String;

    if-nez v4, :cond_13

    goto :goto_c

    :cond_12
    move-object/from16 v4, p0

    :cond_13
    if-eqz v4, :cond_16

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v7, 0x0

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-wide v9, v2, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->b:D

    add-double/2addr v7, v9

    goto :goto_d

    :cond_14
    invoke-static {v0, v4, v7, v8}, Lcom/vuitton/android/presentation/utils/PriceHelper;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v16

    :cond_15
    move-object/from16 v0, v16

    goto :goto_e

    :cond_16
    const-string v0, "No element of the collection was transformed to a non-null value."

    invoke-static {v0}, Lzy0;->c(Ljava/lang/String;)V

    move-object/from16 v7, p0

    goto :goto_11

    :cond_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_15

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    :goto_e
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :cond_18
    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x69538a9

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    const v0, 0x7f141104

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v10, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->k:Landroidx/compose/ui/text/TextStyle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->l(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_f

    :cond_19
    const v0, 0x699cfa2

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_f
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-virtual {v6, v0, v1, v5}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_10

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_1b
    const/16 p0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_11
    return-object v7

    :pswitch_0
    const/16 p0, 0x0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    const/16 v5, 0x10

    if-eq v1, v5, :cond_1d

    const/4 v4, 0x1

    :cond_1d
    const/16 v31, 0x1

    and-int/lit8 v1, v2, 0x1

    invoke-interface {v10, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f1409ad

    invoke-static {v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "OrderExchangeVariantSelectionScreen$lambda$3$0$0$0"

    invoke-direct {v11, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v15, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v16, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object/from16 v24, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object v6, v2

    move-object/from16 v23, v4

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v24

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->l:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v0, :cond_1e

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    goto :goto_12

    :cond_1e
    move-object/from16 v7, p0

    :goto_12
    if-nez v7, :cond_1f

    const v0, -0x234950cf

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_16

    :cond_1f
    const v0, -0x234950ce

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v10, v1}, Lpq0;->h(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v15, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v16, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v6, 0x0

    invoke-static {v0, v1, v6, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v6, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_13

    :cond_20
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v9, v1

    goto :goto_15

    :cond_21
    :goto_13
    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_23
    move-object v9, v2

    :goto_15
    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->f(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v24, v10

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->F()V

    :goto_16
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_17

    :cond_24
    move-object/from16 v24, v10

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->D()V

    :goto_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
