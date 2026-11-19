.class public final synthetic Lwe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lkotlin/Function;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lwe0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwe0;->c:F

    iput-object p2, p0, Lwe0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lwe0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lwe0;->f:Lkotlin/Function;

    iput-object p5, p0, Lwe0;->i:Ljava/lang/Object;

    iput-object p6, p0, Lwe0;->j:Ljava/lang/Object;

    iput-object p7, p0, Lwe0;->g:Ljava/lang/Object;

    iput-object p8, p0, Lwe0;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(FLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lwe0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwe0;->c:F

    iput-object p2, p0, Lwe0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lwe0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lwe0;->f:Lkotlin/Function;

    iput-object p5, p0, Lwe0;->g:Ljava/lang/Object;

    iput-object p6, p0, Lwe0;->h:Ljava/lang/Object;

    iput-object p7, p0, Lwe0;->i:Ljava/lang/Object;

    iput-object p8, p0, Lwe0;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lwe0;->b:I

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/16 v4, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lwe0;->j:Ljava/lang/Object;

    iget-object v8, v0, Lwe0;->i:Ljava/lang/Object;

    iget-object v9, v0, Lwe0;->h:Ljava/lang/Object;

    iget-object v10, v0, Lwe0;->g:Ljava/lang/Object;

    iget-object v11, v0, Lwe0;->f:Lkotlin/Function;

    iget-object v12, v0, Lwe0;->e:Ljava/lang/Object;

    iget-object v13, v0, Lwe0;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    check-cast v12, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    check-cast v11, Lkotlin/jvm/functions/Function4;

    check-cast v10, Landroidx/compose/runtime/MutableIntState;

    check-cast v9, Landroidx/compose/runtime/MutableIntState;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/MutableFloatState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v15, p3

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v15, 0x11

    if-eq v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    and-int/lit8 v4, v15, 0x1

    invoke-interface {v14, v4, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "OrderDetailScreen$lambda$19"

    invoke-direct {v1, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v16, v3

    const/4 v15, 0x0

    iget-wide v2, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    sget-object v5, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v2, v3, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v2, v4}, La;->f(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v16

    if-ne v2, v3, :cond_2

    new-instance v2, Lq1;

    const/16 v5, 0xa

    invoke-direct {v2, v10, v5}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    new-instance v4, Lq1;

    const/16 v5, 0xb

    invoke-direct {v4, v9, v5}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v7}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v18

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4

    if-ne v5, v3, :cond_5

    :cond_4
    new-instance v5, Ljx;

    const/16 v3, 0x18

    invoke-direct {v5, v11, v13, v12, v3}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v21, v5

    check-cast v21, Lkotlin/jvm/functions/Function1;

    const/16 v23, 0x36

    iget v0, v0, Lwe0;->c:F

    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v20, v12

    move-object/from16 v19, v13

    move-object/from16 v22, v14

    move-object v14, v1

    invoke-static/range {v14 .. v23}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_2

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v15

    :cond_7
    move-object/from16 v22, v14

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    const/4 v15, 0x0

    check-cast v13, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    move-object/from16 v20, v12

    check-cast v20, Lkotlin/jvm/functions/Function0;

    move-object/from16 v21, v11

    check-cast v21, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v29, v9

    check-cast v29, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v9, 0x11

    if-eq v1, v4, :cond_8

    move v1, v5

    goto :goto_3

    :cond_8
    move v1, v6

    :goto_3
    and-int/lit8 v4, v9, 0x1

    invoke-interface {v2, v4, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "NativeCartMainView$lambda$2$0$6"

    invoke-direct {v1, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    iget v0, v0, Lwe0;->c:F

    const/4 v11, 0x0

    invoke-static {v1, v0, v11, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v1, v9, v2, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v14

    if-eqz v14, :cond_1c

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_9
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    :goto_4
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v11, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v1, v4, v9}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    iget-object v1, v13, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    if-eqz v0, :cond_b

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move-object/from16 v17, v11

    goto :goto_7

    :cond_b
    :goto_6
    sget-object v11, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    goto :goto_5

    :goto_7
    if-eqz v1, :cond_c

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;

    if-eqz v11, :cond_c

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;->a:Ljava/lang/String;

    move-object/from16 v18, v11

    goto :goto_8

    :cond_c
    move-object/from16 v18, v15

    :goto_8
    iget-object v11, v13, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->p:Ljava/util/List;

    const/16 v23, 0x6

    move-object/from16 v22, v2

    move-object/from16 v19, v11

    invoke-static/range {v16 .. v23}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz v0, :cond_13

    iget-boolean v11, v0, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->a:Z

    if-ne v11, v5, :cond_13

    const v11, -0x6975a30c

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->L(I)V

    if-eqz v1, :cond_d

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;

    goto :goto_9

    :cond_d
    move-object v11, v15

    :goto_9
    invoke-static {v4, v9}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v22

    if-eqz v11, :cond_e

    iget-object v12, v11, Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;->a:Ljava/lang/String;

    goto :goto_a

    :cond_e
    move-object v12, v15

    :goto_a
    if-nez v12, :cond_f

    const v12, -0x6cd36ac

    const v14, 0x7f1404f6

    invoke-static {v2, v12, v14, v2}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v12

    :goto_b
    move-object/from16 v23, v12

    goto :goto_c

    :cond_f
    const v14, -0x6cd387d

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :goto_c
    if-eqz v11, :cond_10

    iget-object v12, v11, Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;->c:Ljava/lang/String;

    move-object/from16 v25, v12

    goto :goto_d

    :cond_10
    move-object/from16 v25, v15

    :goto_d
    if-eqz v11, :cond_11

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;->b:Ljava/lang/String;

    goto :goto_e

    :cond_11
    move-object v11, v15

    :goto_e
    if-nez v11, :cond_12

    const v11, -0x6cd17c6

    const v12, 0x7f1404f5

    invoke-static {v2, v11, v12, v2}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v11

    :goto_f
    move-object/from16 v24, v11

    goto :goto_10

    :cond_12
    const v12, -0x6cd1a51

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_f

    :goto_10
    iget-boolean v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->b:Z

    sget-object v28, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->SHOPPING_BAG:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    const/16 v26, 0x0

    const v31, 0xc00006

    move/from16 v27, v0

    move-object/from16 v30, v2

    invoke-static/range {v22 .. v31}, Lcom/vuitton/android/presentation/compose/components/LVCardKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_11

    :cond_13
    const v0, -0x69698291

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_11
    if-eqz v8, :cond_1b

    const v0, -0x696872b6

    invoke-static {v9, v0, v2, v4}, Lpq0;->h(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_14

    if-ne v4, v3, :cond_15

    :cond_14
    new-instance v4, Lpp;

    const/16 v0, 0x1b

    invoke-direct {v4, v13, v7, v10, v0}, Lpp;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v20, v4

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x1f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v22

    if-eqz v1, :cond_16

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->c:Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;->a:Ljava/lang/String;

    move-object/from16 v23, v0

    goto :goto_12

    :cond_16
    move-object/from16 v23, v15

    :goto_12
    if-eqz v1, :cond_17

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->c:Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;->b:Ljava/lang/String;

    move-object/from16 v24, v0

    goto :goto_13

    :cond_17
    move-object/from16 v24, v15

    :goto_13
    if-eqz v1, :cond_18

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->c:Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;->c:Ljava/lang/String;

    move-object/from16 v25, v0

    goto :goto_14

    :cond_18
    move-object/from16 v25, v15

    :goto_14
    if-eqz v1, :cond_19

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->c:Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;->d:Ljava/lang/String;

    move-object v15, v0

    :cond_19
    if-eqz v15, :cond_1a

    goto :goto_15

    :cond_1a
    move v5, v6

    :goto_15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v27, v2

    invoke-static/range {v22 .. v28}, Lcom/vuitton/android/presentation/screen/cart/components/packaging/SignatureBoxCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_16

    :cond_1b
    const v0, -0x695ac451

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_17

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v15

    :cond_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
