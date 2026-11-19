.class public abstract Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u000c\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0008\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\t\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000b\u001a\u0004\u0018\u00010\n8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "handlePxHeight",
        "timelineHeight",
        "highestTimelineTextHeight",
        "",
        "timelineAlpha",
        "Landroidx/compose/ui/unit/Dp;",
        "topDetailsHeight",
        "maxWidth",
        "shortcutWidth",
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;Ljava/util/List;)V
    .locals 8

    const v0, 0x547bd0d1

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    or-int/2addr p1, p0

    and-int/lit8 v1, p1, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    and-int/2addr p1, v2

    invoke-virtual {v5, p1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;

    if-eqz v1, :cond_2

    const v1, -0x53ef5cec

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;->c:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->PERSONALIZATION:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    const/16 v3, 0x180

    invoke-static {v1, v0, v2, v5, v3}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->n(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;

    if-eqz v1, :cond_4

    const v1, -0x53e9f6a3

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    if-nez v2, :cond_3

    const v0, -0x53e9f6a4

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;->b:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->PERSONALIZATION:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    const/16 v6, 0x180

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->o(Ljava/lang/String;JLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2

    :cond_4
    const p0, 0x68a5ab2c

    invoke-static {v5, p0, v7}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_5
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lai0;

    invoke-direct {v0, p2, p0, v7}, Lai0;-><init>(Ljava/util/List;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final b(ZLandroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const-string v1, "OrderDetailBottomSheetContent-jIwJxvA"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const v0, -0x1826a0ac

    move-object/from16 v5, p7

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    iget-object v0, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    move/from16 v8, p0

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    const/4 v9, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v5, v9

    :goto_0
    or-int v5, p8, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_1

    :cond_2
    const/16 v10, 0x10

    :goto_1
    or-int/2addr v5, v10

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x100

    goto :goto_2

    :cond_3
    const/16 v10, 0x80

    :goto_2
    or-int/2addr v5, v10

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x800

    goto :goto_3

    :cond_4
    const/16 v10, 0x400

    :goto_3
    or-int/2addr v5, v10

    move-object/from16 v10, p4

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x4000

    goto :goto_4

    :cond_5
    const/16 v12, 0x2000

    :goto_4
    or-int/2addr v5, v12

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/high16 v12, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v12, 0x10000

    :goto_5
    or-int/2addr v5, v12

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/high16 v12, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v12, 0x80000

    :goto_6
    or-int/2addr v5, v12

    const v12, 0x92493

    and-int/2addr v12, v5

    const v15, 0x92492

    if-eq v12, v15, :cond_8

    const/4 v12, 0x1

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    and-int/lit8 v15, v5, 0x1

    invoke-virtual {v11, v15, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_1b

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, v4, v4}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v13, 0x0

    invoke-static {v12, v15, v13, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v12}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v11}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v15

    const/16 v9, 0xe

    const/4 v13, 0x0

    invoke-static {v12, v15, v13, v9}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v0

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v15, v0, v11, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    move-object/from16 v21, v15

    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v11, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v31, 0x0

    if-eqz v19, :cond_1a

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_9

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v15, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v14, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v23, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v12, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-object/from16 v24, v5

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    if-nez v12, :cond_a

    const v0, -0x1c2d63d

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v13, 0x1

    goto/16 :goto_14

    :cond_a
    const/16 v16, 0x0

    const v8, -0x1c2d63c

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v8, v9

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->l:Ljava/util/Set;

    const/high16 v25, 0x70000

    move-object/from16 v26, v8

    and-int v8, v23, v25

    move-object/from16 v25, v9

    const/high16 v9, 0x20000

    if-ne v8, v9, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    move/from16 v8, v16

    :goto_9
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 p7, v15

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v8, :cond_d

    if-ne v9, v15, :cond_c

    goto :goto_a

    :cond_c
    const/4 v8, 0x5

    goto :goto_b

    :cond_d
    :goto_a
    new-instance v9, Lrh0;

    const/4 v8, 0x5

    invoke-direct {v9, v6, v3, v8}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/high16 v27, 0x380000

    and-int v8, v23, v27

    const/high16 v6, 0x100000

    if-ne v8, v6, :cond_e

    const/4 v6, 0x1

    goto :goto_c

    :cond_e
    move/from16 v6, v16

    :goto_c
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_f

    if-ne v8, v15, :cond_10

    :cond_f
    new-instance v8, Lxg0;

    const/4 v6, 0x2

    invoke-direct {v8, v7, v3, v6}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v8, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v6, v23, 0xe

    shr-int/lit8 v15, v23, 0x6

    move/from16 p1, v6

    and-int/lit16 v6, v15, 0x380

    or-int v6, p1, v6

    move/from16 p1, v15

    move/from16 v7, v16

    const/16 v20, 0xe

    const/16 v27, 0x5

    move-object v15, v12

    move-object/from16 v16, v14

    move v14, v6

    move-object v12, v8

    move-object v6, v13

    move/from16 v8, p0

    move-object v13, v11

    move-object v11, v9

    move-object/from16 v9, v25

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->e(ZLjava/util/Set;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v13

    if-eqz v5, :cond_11

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    if-eqz v8, :cond_11

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedChannelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_d

    :cond_11
    move-object/from16 v8, v31

    :goto_d
    if-nez v8, :cond_12

    const v8, 0x16dddb1

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_12
    const v9, 0x16dddb2

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const-string v9, "MyOrder_OrderingMethodName_text"

    invoke-static {v2, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v11, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/16 v13, 0x1a

    move-object v8, v9

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    if-eqz v5, :cond_13

    iget-boolean v8, v5, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    const/4 v13, 0x1

    if-ne v8, v13, :cond_13

    const v5, 0x1723cb9

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v5, p1, 0xe

    invoke-static {v3, v15, v11, v5}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->j(Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_13
    const v8, 0x174d0ce

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v8, 0x7f140d8d

    invoke-static {v11, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_14

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->a:Ljava/lang/String;

    move-object v9, v5

    goto :goto_f

    :cond_14
    move-object/from16 v9, v31

    :goto_f
    sget-object v10, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->ORDER_DATE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const/16 v12, 0x180

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v5, v12, v10, v13}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object v12, v11

    move-wide v10, v8

    const/4 v9, 0x0

    move-object v8, v5

    invoke-static/range {v8 .. v14}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v11, v12

    const-string v5, "MyOrder_ProductDetailsItem_view"

    invoke-static {v1, v5}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v8, v21

    invoke-static {v8, v0, v11, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget-wide v8, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v11, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v19, :cond_19

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_15

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    invoke-static {v11, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v26

    invoke-static {v11, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, p7

    move-object/from16 v4, v16

    invoke-static {v8, v11, v0, v11, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "MyOrder_ProductDetailsText_text"

    move-object/from16 v4, v24

    invoke-static {v11, v5, v4, v1, v0}, Ln00;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v0, 0x7f140ce6

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v29, 0x0

    const v30, 0x1fff8

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v6, v15

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

    move-object/from16 v26, v0

    move/from16 v0, v27

    move-object/from16 v27, v11

    move-wide v10, v4

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v27

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    if-eqz v4, :cond_16

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->f:Ljava/lang/String;

    goto :goto_12

    :cond_16
    move-object/from16 v4, v31

    :cond_17
    :goto_12
    if-nez v4, :cond_18

    const v0, 0x86f7054

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_18
    const v5, 0x86f7055

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v5, 0x7f140ce5

    invoke-static {v11, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lwd0;

    invoke-direct {v8, v4, v3, v0}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, -0x4b3e3e47    # -3.6090003E-7f

    invoke-static {v0, v8, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v4, 0x30

    invoke-static {v5, v0, v11, v4}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->m(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    const v0, 0x7f140d98

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->REFERENCE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    const/16 v8, 0x180

    invoke-static {v0, v4, v5, v11, v8}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->n(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x7f140ccd

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->SIZE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    invoke-static {v0, v4, v5, v11, v8}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->n(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x7f140cc6

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->COLOR:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    invoke-static {v0, v4, v5, v11, v8}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->n(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v31

    :cond_1b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v0, Ldi0;

    move/from16 v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Ldi0;-><init>(ZLandroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move-object/from16 v2, p1

    move/from16 v0, p4

    const v1, 0x759cbbe4

    move-object/from16 v3, p3

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_2

    or-int/lit16 v4, v4, 0x180

    goto :goto_4

    :cond_2
    and-int/lit16 v6, v0, 0x180

    if-nez v6, :cond_5

    if-nez p2, :cond_3

    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    :goto_2
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v4, v6

    :cond_5
    :goto_4
    and-int/lit16 v6, v4, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_6

    move v6, v8

    goto :goto_5

    :cond_6
    move v6, v9

    :goto_5
    and-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v26, 0x0

    if-eqz v5, :cond_7

    move-object/from16 v27, v26

    goto :goto_6

    :cond_7
    move-object/from16 v27, p2

    :goto_6
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move-object v0, v1

    goto/16 :goto_a

    :cond_9
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "OrderDetailRow"

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v27, :cond_a

    invoke-virtual/range {v27 .. v27}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->c()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_a
    move-object/from16 v7, v26

    :goto_7
    if-eqz v7, :cond_b

    invoke-static {v5, v7}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    :cond_b
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v7, v10, v1, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget-wide v9, v1, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v1, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v1, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_f

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_c

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v10, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v7, v6}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v9

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v11, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v13, 0x0

    const/16 v14, 0xd

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v27, :cond_d

    invoke-virtual/range {v27 .. v27}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_d
    move-object/from16 v7, v26

    :goto_9
    invoke-static {v5, v7}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->f(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    and-int/lit8 v23, v4, 0xe

    const/16 v24, 0x0

    const v25, 0x1fff8

    move-object/from16 v21, v7

    move v11, v8

    const-wide/16 v7, 0x0

    move-object v12, v6

    move-wide/from16 v30, v9

    move v10, v4

    move-object v4, v5

    move-wide/from16 v5, v30

    const/4 v9, 0x0

    move v13, v10

    move v14, v11

    const-wide/16 v10, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v17, v14

    move-object/from16 v18, v15

    const-wide/16 v14, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v22, v18

    const/16 v18, 0x0

    move/from16 v28, v19

    const/16 v19, 0x0

    move/from16 v29, v20

    const/16 v20, 0x0

    move-object/from16 v30, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v30

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v19, v22

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v5, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v27, :cond_e

    invoke-virtual/range {v27 .. v27}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->b()Ljava/lang/String;

    move-result-object v26

    :cond_e
    move-object/from16 v3, v26

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->f(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    shr-int/lit8 v6, v28, 0x3

    and-int/lit8 v20, v6, 0xe

    const/16 v21, 0x0

    const v22, 0x1fff8

    move-object/from16 v18, v3

    move-wide v2, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v19

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v3, v27

    goto :goto_c

    :cond_f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v0, Lfi0;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v3, v27

    invoke-direct/range {v0 .. v6}, Lfi0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;III)V

    :goto_b
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_10
    move-object v0, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v0, Lfi0;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lfi0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;III)V

    goto :goto_b

    :cond_11
    return-void
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x27418f86

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v0, v14, 0x6

    const/4 v2, 0x2

    if-nez v0, :cond_1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int/2addr v0, v14

    goto :goto_1

    :cond_1
    move v0, v14

    :goto_1
    and-int/lit8 v3, v14, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v14, 0x180

    if-nez v3, :cond_5

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v14, 0xc00

    move-object/from16 v4, p3

    if-nez v3, :cond_7

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    goto :goto_4

    :cond_6
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v0, v3

    :cond_7
    and-int/lit16 v3, v14, 0x6000

    move-object/from16 v8, p4

    if-nez v3, :cond_9

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_5

    :cond_8
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v0, v3

    :cond_9
    const/high16 v3, 0x30000

    and-int/2addr v3, v14

    move-object/from16 v9, p5

    if-nez v3, :cond_b

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v3, 0x10000

    :goto_6
    or-int/2addr v0, v3

    :cond_b
    const/high16 v3, 0x180000

    and-int/2addr v3, v14

    if-nez v3, :cond_d

    move-object/from16 v3, p6

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/high16 v5, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v5, 0x80000

    :goto_7
    or-int/2addr v0, v5

    goto :goto_8

    :cond_d
    move-object/from16 v3, p6

    :goto_8
    const v5, 0x92493

    and-int/2addr v5, v0

    const v6, 0x92492

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-eq v5, v6, :cond_e

    move v5, v7

    goto :goto_9

    :cond_e
    move v5, v10

    :goto_9
    and-int/2addr v0, v7

    invoke-virtual {v15, v0, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const/4 v11, 0x0

    if-eqz v6, :cond_f

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    goto :goto_a

    :cond_f
    move-object v6, v11

    :goto_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v11, v15, v2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion;->a(Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    move-result-object v5

    sget-object v6, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    const/16 v11, 0x186

    invoke-static {v6, v15, v11, v2}, Landroidx/compose/material3/BottomSheetScaffoldKt;->e(Landroidx/compose/material3/SheetValue;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v6

    invoke-static {v6, v15, v2}, Landroidx/compose/material3/BottomSheetScaffoldKt;->d(Landroidx/compose/material3/SheetState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/BottomSheetScaffoldState;

    move-result-object v17

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v11, :cond_10

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v6, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_11

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v2, 0x42980000    # 76.0f

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_12

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v19, v2

    check-cast v19, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    const/16 v20, 0x0

    if-ne v2, v11, :cond_13

    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v2, Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    const/high16 v7, 0x43200000    # 160.0f

    if-ne v10, v11, :cond_14

    new-instance v10, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v10, v7}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/MutableState;

    if-eqz v5, :cond_15

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->d:Ljava/util/List;

    goto :goto_b

    :cond_15
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_16

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    if-eqz v10, :cond_16

    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    move/from16 p7, v7

    const/4 v7, 0x1

    if-ne v10, v7, :cond_17

    const/4 v7, 0x1

    goto :goto_c

    :cond_16
    move/from16 p7, v7

    :cond_17
    const/4 v7, 0x0

    :goto_c
    sget-object v10, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    if-eqz v7, :cond_18

    const v10, -0x5d1ae47e

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/IntState;->f()I

    move-result v10

    invoke-static {v15, v10}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v10

    move/from16 v23, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_18
    move/from16 v23, v0

    const/4 v0, 0x0

    const v10, -0x5d1ae284

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v10, v20

    :goto_d
    const/high16 v0, 0x42400000    # 48.0f

    add-float/2addr v0, v10

    invoke-static {v15}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v10

    invoke-static {v10, v15}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v10

    sget v24, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    add-float v10, v10, v24

    add-float v10, v10, p7

    if-eqz v7, :cond_19

    const v7, -0x5d1abe1f

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/IntState;->f()I

    move-result v7

    invoke-static {v15, v7}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v7

    add-float v20, v7, v23

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 p7, v0

    goto :goto_e

    :cond_19
    move/from16 p7, v0

    const/4 v7, 0x0

    const v0, -0x5d1ab844

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    add-float v10, v10, v20

    invoke-static {v15}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v0

    invoke-static {v0, v15}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v0

    const/4 v7, 0x1

    invoke-static {v15, v7}, Lcom/vuitton/android/designkit/components/ScreenDimensionsKt;->a(Landroidx/compose/runtime/Composer;I)F

    move-result v7

    sub-float/2addr v7, v0

    sub-float v20, v7, v10

    add-float v0, v20, p7

    invoke-interface {v6}, Landroidx/compose/runtime/IntState;->f()I

    move-result v7

    invoke-static {v15, v7}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v10}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v3

    sub-float v10, v10, p7

    invoke-static {v10}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v7

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move/from16 p7, v0

    const-string v0, "OrderDetailScreen"

    invoke-direct {v10, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v10, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v30, Landroidx/compose/ui/graphics/Color;->h:J

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    new-instance v0, Lbi0;

    move-object v10, v2

    move-object/from16 v2, v17

    move-wide/from16 v16, v12

    const/4 v13, 0x2

    move-object v12, v6

    move-object v6, v4

    move v4, v7

    move-object v7, v5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v11}, Lbi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Landroidx/compose/material3/BottomSheetScaffoldState;FFFLkotlin/jvm/functions/Function4;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V

    move-wide/from16 v39, v16

    move-object/from16 v16, v21

    move-wide/from16 v21, v39

    move-object/from16 v17, v2

    move-object v8, v10

    const v2, 0x4af5518b    # 8038597.5f

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    new-instance v0, Lw20;

    const/16 v2, 0x18

    invoke-direct {v0, v12, v2}, Lw20;-><init>(Ljava/lang/Object;I)V

    const v2, -0x519d02ee

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v26

    new-instance v0, Lwd0;

    const/4 v2, 0x6

    move-object/from16 v10, p2

    invoke-direct {v0, v1, v10, v2}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x4fba446c

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v28

    new-instance v0, Lu4;

    move-object/from16 v12, p1

    invoke-direct {v0, v12, v13}, Lu4;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v2, -0x250b685d

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v29

    new-instance v0, Lwe0;

    move-object/from16 v4, p6

    move-object v2, v1

    move-object v3, v7

    move-object v7, v11

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v1, v23

    invoke-direct/range {v0 .. v8}, Lwe0;-><init>(FLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;)V

    const v1, -0x6982898b

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v34

    const v37, 0x186d86

    const v38, 0x8bb0

    const/16 v19, 0x0

    move/from16 v18, v20

    const/16 v20, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v32, 0x0

    const/16 v36, 0x6

    move-object/from16 v35, v15

    move-object v15, v9

    invoke-static/range {v15 .. v38}, Landroidx/compose/material3/BottomSheetScaffoldKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    goto :goto_f

    :cond_1a
    move-object v10, v13

    move-object/from16 v35, v15

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1b

    new-instance v0, Lw3;

    const/16 v9, 0x8

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v3, v10

    move-object v2, v12

    move v8, v14

    invoke-direct/range {v0 .. v9}, Lw3;-><init>(Ljava/lang/Object;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/Function;Lkotlin/Function;Lkotlin/Function;Lkotlin/Function;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final e(ZLjava/util/Set;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p6

    const v0, -0xdac5d99

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    move/from16 v1, p0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v6

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v30, 0x20

    if-eqz v4, :cond_1

    move/from16 v4, v30

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    and-int/lit16 v4, v6, 0x180

    if-nez v4, :cond_3

    move-object/from16 v4, p2

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v0, v7

    :goto_3
    move-object/from16 v7, p3

    goto :goto_4

    :cond_3
    move-object/from16 v4, p2

    goto :goto_3

    :goto_4
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x800

    goto :goto_5

    :cond_4
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v0, v8

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x4000

    goto :goto_6

    :cond_5
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v0, v8

    and-int/lit16 v8, v0, 0x2493

    const/16 v10, 0x2492

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v8, v10, :cond_6

    move v8, v11

    goto :goto_7

    :cond_6
    move v8, v12

    :goto_7
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v13, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c

    const v8, -0x2d599583

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v8, 0x7f140cd1

    invoke-static {v13, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-string v9, "order_shortcutTitle_text"

    const-string v3, "OrderDetailShortcuts"

    invoke-static {v3, v9}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/16 v28, 0x0

    const v29, 0x1fff8

    move/from16 v16, v11

    move/from16 v17, v12

    const-wide/16 v11, 0x0

    move-object/from16 v26, v13

    const/4 v13, 0x0

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v25, v10

    move-wide v9, v14

    const-wide/16 v14, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    move/from16 v21, v19

    const-wide/16 v18, 0x0

    move/from16 v22, v20

    const/16 v20, 0x0

    move/from16 v23, v21

    const/16 v21, 0x0

    move/from16 v24, v22

    const/16 v22, 0x0

    move/from16 v27, v23

    const/16 v23, 0x0

    move/from16 v31, v24

    const/16 v24, 0x0

    move/from16 v32, v27

    const/16 v27, 0x0

    move/from16 v1, v31

    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v13, v26

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v8, :cond_7

    invoke-static/range {v32 .. v32}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v7, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-ne v9, v8, :cond_8

    new-instance v9, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v9, v10}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v11

    invoke-interface {v7}, Landroidx/compose/runtime/IntState;->f()I

    move-result v12

    invoke-static {v13, v12}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v12

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/unit/Dp;

    iget v14, v14, Landroidx/compose/ui/unit/Dp;->b:F

    int-to-float v15, v11

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    sub-int/2addr v11, v1

    if-ge v11, v1, :cond_9

    move v11, v1

    :cond_9
    int-to-float v11, v11

    div-float/2addr v12, v11

    new-instance v11, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v11, v12}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    new-instance v14, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v14, v12}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v11, v14}, Landroidx/compose/ui/unit/Dp;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_a

    move-object v11, v14

    :cond_a
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v3, v12}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v18, 0x0

    const/16 v19, 0xd

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v12

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_b

    new-instance v14, Lq1;

    const/16 v15, 0x9

    invoke-direct {v14, v7, v15}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v14}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    iget v11, v11, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v11}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    move/from16 v14, v32

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v1, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v13, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_1b

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_c

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v1, v3}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    iget v7, v7, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v1, v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->t(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v1, 0x3ec79027

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0x3ec784bf

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->a()I

    move-result v11

    invoke-static {v13, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, " "

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x6

    invoke-static {v11, v12, v14, v15}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_a

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v13}, Landroidx/compose/ui/text/TextMeasurerHelperKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextMeasurer;

    move-result-object v17

    const-wide/16 v20, 0x0

    const/16 v22, 0x3fc

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v22}, Landroidx/compose/ui/text/TextMeasurer;->a(Landroidx/compose/ui/text/TextMeasurer;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JI)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    iget-wide v11, v2, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    shr-long v11, v11, v30

    long-to-int v2, v11

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/unit/Density;

    invoke-interface {v11, v2}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v2

    const/high16 v11, 0x42600000    # 56.0f

    const/high16 v12, 0x42fc0000    # 126.0f

    invoke-static {v2, v11, v12}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/unit/Dp;

    iget v11, v11, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v11, v2}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result v11

    if-gez v11, :cond_f

    new-instance v11, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v11, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v9, v11}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_b

    :cond_10
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->REQUEST_RETURN:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    const v17, 0xe000

    if-eqz v9, :cond_14

    const v9, -0x65cee0b2

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->B:I

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->a()I

    move-result v1

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    and-int v11, v0, v17

    const/16 v12, 0x4000

    if-ne v11, v12, :cond_11

    const/4 v11, 0x1

    goto :goto_c

    :cond_11
    move v11, v14

    :goto_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v11, :cond_12

    if-ne v15, v8, :cond_13

    :cond_12
    new-instance v15, Ltf0;

    const/4 v11, 0x1

    invoke-direct {v15, v5, v11}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v15, Lkotlin/jvm/functions/Function0;

    move/from16 v33, v12

    sget-object v12, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->RETURN:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    move/from16 v32, v14

    const/high16 v14, 0x30000

    move v11, v10

    move-object v10, v15

    const/16 v15, 0x10

    move/from16 v18, v11

    const/4 v11, 0x0

    move v4, v9

    move-object v9, v1

    move-object v1, v8

    move v8, v4

    move/from16 v4, v32

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->p(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_14
    move-object v1, v8

    move v4, v14

    const v8, -0x65c821e6

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    sget-object v8, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->REQUEST_RETURN_OR_EXCHANGE:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const v9, -0x65c66f6a

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->p0:I

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->a()I

    move-result v8

    invoke-static {v13, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    and-int v10, v0, v17

    const/16 v12, 0x4000

    if-ne v10, v12, :cond_15

    const/4 v11, 0x1

    goto :goto_e

    :cond_15
    move v11, v4

    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v11, :cond_16

    if-ne v10, v1, :cond_17

    :cond_16
    new-instance v10, Ltf0;

    const/4 v1, 0x2

    invoke-direct {v10, v5, v1}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v10, Lkotlin/jvm/functions/Function0;

    sget-object v12, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->RETURN_OR_EXCHANGE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    const/high16 v14, 0x30000

    const/16 v15, 0x10

    const/4 v11, 0x0

    move/from16 v34, v9

    move-object v9, v8

    move/from16 v8, v34

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->p(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_18
    const v1, -0x65bf5686

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->TRACK_ORDER:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v19, 0x30000

    if-eqz v8, :cond_19

    const v8, -0x65bde4d3

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->E0:I

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->a()I

    move-result v1

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->TRACK_ORDER:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    shl-int/lit8 v1, v0, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int v14, v1, v19

    const/16 v15, 0x10

    const/4 v11, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->p(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_19
    const v1, -0x65b81286

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->DOWNLOAD_INVOICE:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const v8, -0x65b685d2

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->t:I

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->a()I

    move-result v1

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->DOWNLOAD_INVOICE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    and-int/lit16 v1, v0, 0x1c00

    or-int v1, v1, v19

    shl-int/lit8 v0, v0, 0xc

    and-int v0, v0, v17

    or-int v14, v1, v0

    const/4 v15, 0x0

    move/from16 v11, p0

    move-object/from16 v10, p3

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->p(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    const/4 v11, 0x1

    goto :goto_12

    :cond_1a
    const v0, -0x65afc706

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :goto_12
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v11}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v26, v13

    const/4 v13, 0x2

    const/4 v8, 0x0

    move-object/from16 v11, v26

    invoke-static/range {v7 .. v13}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v13, v11

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_1c
    move v4, v12

    const v0, -0x2d1e7d45

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_14

    :cond_1d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_1e

    new-instance v0, Lj8;

    move/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lj8;-><init>(ZLjava/util/Set;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method

.method public static final f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    move-object/from16 v6, p5

    if-eqz p0, :cond_0

    const-string v0, "OrderDetailTopContent-aC-nel8"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v0, p0

    const p0, -0x35e23bc3

    move-object/from16 v1, p8

    invoke-interface {v1, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x100

    goto :goto_0

    :cond_1
    const/16 p0, 0x80

    :goto_0
    or-int p0, p9, p0

    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x800

    goto :goto_1

    :cond_2
    const/16 v1, 0x400

    :goto_1
    or-int/2addr p0, v1

    move/from16 v4, p4

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4000

    goto :goto_2

    :cond_3
    const/16 v1, 0x2000

    :goto_2
    or-int/2addr p0, v1

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x20000

    goto :goto_3

    :cond_4
    const/high16 v1, 0x10000

    :goto_3
    or-int/2addr p0, v1

    move-object/from16 v7, p6

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x100000

    goto :goto_4

    :cond_5
    const/high16 v1, 0x80000

    :goto_4
    or-int/2addr p0, v1

    move-object/from16 v8, p7

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x800000

    goto :goto_5

    :cond_6
    const/high16 v1, 0x400000

    :goto_5
    or-int/2addr p0, v1

    const v1, 0x492493

    and-int/2addr v1, p0

    const v3, 0x492492

    const/4 v11, 0x0

    if-eq v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v11

    :goto_6
    and-int/lit8 v3, p0, 0x1

    invoke-virtual {v9, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    if-eqz v1, :cond_9

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v1, :cond_9

    const v1, 0x7dfdd852

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    if-eqz v1, :cond_8

    const v1, 0x7dfe6b35

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v5, v6

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const v1, 0x7fffe

    and-int/2addr v1, p0

    shl-int/lit8 p0, p0, 0x3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, p0

    or-int/2addr v1, v3

    const/high16 v3, 0xe000000

    and-int/2addr p0, v3

    or-int v10, v1, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v7, v0

    move-object v0, v5

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_8
    move-object v7, v0

    move-object v0, v6

    const v1, 0x7e05e83e

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    shr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x7e

    shr-int/lit8 p0, p0, 0xc

    and-int/lit16 p0, p0, 0x1c00

    or-int v6, v1, p0

    move v1, p2

    move v2, p3

    move-object/from16 v4, p7

    move-object v5, v9

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->g(FFLcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_9
    move-object v7, v0

    move-object v0, v6

    const p0, 0x7e09dac5

    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_a
    move-object v7, v0

    move-object v0, v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance v0, Lei0;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object v1, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lei0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final g(FFLcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const v0, -0x71640a0

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 p4, p5, 0x6

    if-nez p4, :cond_1

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    :goto_0
    or-int/2addr p4, p5

    goto :goto_1

    :cond_1
    move p4, p5

    :goto_1
    and-int/lit8 v0, p5, 0x30

    if-nez v0, :cond_3

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    goto :goto_2

    :cond_2
    const/16 v0, 0x10

    :goto_2
    or-int/2addr p4, v0

    :cond_3
    and-int/lit16 v0, p5, 0x180

    if-nez v0, :cond_5

    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x100

    goto :goto_3

    :cond_4
    const/16 v0, 0x80

    :goto_3
    or-int/2addr p4, v0

    :cond_5
    and-int/lit16 v0, p5, 0xc00

    if-nez v0, :cond_7

    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x800

    goto :goto_4

    :cond_6
    const/16 v0, 0x400

    :goto_4
    or-int/2addr p4, v0

    :cond_7
    and-int/lit16 v0, p4, 0x493

    const/16 v1, 0x492

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    and-int/lit8 v1, p4, 0x1

    invoke-virtual {v7, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_9

    new-instance v1, Lcom/vuitton/android/presentation/utils/UrlFactory;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/utils/UrlFactory;

    new-instance v0, Lw20;

    const/16 v1, 0x17

    invoke-direct {v0, p2, v1}, Lw20;-><init>(Ljava/lang/Object;I)V

    const v1, -0x1b008c35

    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    shr-int/lit8 v0, p4, 0x3

    and-int/lit8 v0, v0, 0xe

    const v1, 0x30180

    or-int/2addr v0, v1

    shl-int/lit8 p4, p4, 0x3

    and-int/lit8 v1, p4, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr p4, v1

    or-int v8, v0, p4

    move v2, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->i(FFLcom/vuitton/android/presentation/utils/UrlFactory;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move p2, v1

    move p1, v2

    move-object p3, v4

    move-object p4, v5

    goto :goto_6

    :cond_a
    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move p1, p0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance p0, Lxh0;

    invoke-direct/range {p0 .. p5}, Lxh0;-><init>(FFLcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;I)V

    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final h(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v1, p7

    const-string v2, "OrderDetailTopOnGoingContent-tw_glAc"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, 0xf0f1f22

    move-object/from16 v4, p9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    move/from16 v8, p2

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x100

    goto :goto_0

    :cond_1
    const/16 v3, 0x80

    :goto_0
    or-int v3, p10, v3

    move/from16 v4, p3

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x800

    goto :goto_1

    :cond_2
    const/16 v9, 0x400

    :goto_1
    or-int/2addr v3, v9

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x4000

    goto :goto_2

    :cond_3
    const/16 v9, 0x2000

    :goto_2
    or-int/2addr v3, v9

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/high16 v9, 0x20000

    goto :goto_3

    :cond_4
    const/high16 v9, 0x10000

    :goto_3
    or-int/2addr v3, v9

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/high16 v9, 0x100000

    goto :goto_4

    :cond_5
    const/high16 v9, 0x80000

    :goto_4
    or-int/2addr v3, v9

    const/high16 v9, 0xc00000

    and-int v9, p10, v9

    if-nez v9, :cond_7

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x800000

    goto :goto_5

    :cond_6
    const/high16 v9, 0x400000

    :goto_5
    or-int/2addr v3, v9

    :cond_7
    const/high16 v9, 0x6000000

    and-int v9, p10, v9

    if-nez v9, :cond_9

    move-object/from16 v9, p8

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/high16 v10, 0x4000000

    goto :goto_6

    :cond_8
    const/high16 v10, 0x2000000

    :goto_6
    or-int/2addr v3, v10

    goto :goto_7

    :cond_9
    move-object/from16 v9, p8

    :goto_7
    const v10, 0x2492493

    and-int/2addr v10, v3

    const v11, 0x2492492

    const/4 v15, 0x0

    if-eq v10, v11, :cond_a

    const/4 v10, 0x1

    goto :goto_8

    :cond_a
    move v10, v15

    :goto_8
    and-int/lit8 v11, v3, 0x1

    invoke-virtual {v13, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_10

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-static {v10}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v10

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v14, :cond_b

    new-instance v11, Lcom/vuitton/android/presentation/utils/UrlFactory;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v11, Lcom/vuitton/android/presentation/utils/UrlFactory;

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v14, v13, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    move/from16 p0, v3

    iget-wide v3, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v13, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v12, :cond_f

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_c

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lgi0;

    invoke-direct {v2, v1, v7, v6, v15}, Lgi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v3, -0x37b75f3d

    invoke-static {v3, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    shr-int/lit8 v2, p0, 0x9

    and-int/lit8 v3, v2, 0xe

    const v4, 0x30180

    or-int/2addr v3, v4

    shr-int/lit8 v4, p0, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v2, v3

    shr-int/lit8 v3, p0, 0xc

    const v4, 0xe000

    and-int/2addr v3, v4

    or-int v14, v2, v3

    move-object v2, v11

    move-object v11, v9

    move-object v9, v2

    move-object v10, v7

    const/4 v2, 0x1

    move/from16 v7, p3

    invoke-static/range {v7 .. v14}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->i(FFLcom/vuitton/android/presentation/utils/UrlFactory;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    if-eqz v1, :cond_d

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->d:Ljava/util/List;

    move-object/from16 v16, v3

    :cond_d
    if-eqz v16, :cond_e

    const v3, 0x7b2f24bd

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v9, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v3, v7

    const-string v4, "MyOrder_OrderDeliveryStatus_view"

    invoke-static {v0, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v9, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->c:I

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-instance v0, Lhi0;

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v5, v1}, Lhi0;-><init>(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;)V

    const v8, -0x3e18e71

    invoke-static {v8, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const/high16 v0, 0x70000

    shl-int/lit8 v8, p0, 0x9

    and-int/2addr v0, v8

    or-int/lit16 v0, v0, 0x180

    const/16 v23, 0x7c2

    const/4 v8, 0x0

    move-object/from16 v21, v13

    const-wide/16 v12, 0x0

    move v11, v15

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v22, v0

    move v0, v11

    move/from16 v11, p2

    invoke-static/range {v7 .. v23}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;IIFJJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, v21

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_e
    move-object/from16 v4, p1

    move-object v3, v0

    move v0, v15

    const v7, 0x7b43a9aa

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_10
    move-object/from16 v4, p1

    move-object v3, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_11

    new-instance v0, Lwh0;

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p10

    move-object v8, v1

    move-object v1, v3

    move-object v2, v4

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v10}, Lwh0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

.method public static final i(FFLcom/vuitton/android/presentation/utils/UrlFactory;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    const v0, 0x4853d476

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v8, v7, 0x6

    if-nez v8, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    and-int/lit8 v9, v7, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v8, v9

    :cond_3
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_3

    :cond_4
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v8, v10

    goto :goto_4

    :cond_5
    move-object/from16 v9, p2

    :goto_4
    and-int/lit16 v10, v7, 0xc00

    if-nez v10, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_5

    :cond_6
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v8, v10

    :cond_7
    and-int/lit16 v10, v7, 0x6000

    if-nez v10, :cond_9

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x4000

    goto :goto_6

    :cond_8
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v8, v10

    :cond_9
    const/high16 v10, 0x30000

    and-int/2addr v10, v7

    if-nez v10, :cond_b

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v10, 0x10000

    :goto_7
    or-int/2addr v8, v10

    :cond_b
    move/from16 v21, v8

    const v8, 0x12493

    and-int v8, v21, v8

    const v10, 0x12492

    if-eq v8, v10, :cond_c

    const/4 v8, 0x1

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    :goto_8
    and-int/lit8 v10, v21, 0x1

    invoke-virtual {v0, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_14

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v10, "OrderHeader-cmh-DWc"

    invoke-direct {v8, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v8, v14}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v8, v1}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const-string v15, "MyOrder_ProductDeliveryDateItem_view"

    invoke-static {v8, v15}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v15, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v13, 0x30

    invoke-static {v11, v15, v0, v13}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v12

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v22, 0x0

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_d

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v11, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v13, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v17, v11

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v13, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v19, v11

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v8, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v14, 0x70

    sget-object v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;

    invoke-static {v8, v14, v1}, Lcom/vuitton/android/presentation/utils/UrlFactory;->d(Ljava/lang/String;ILcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v8, v14}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v18, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    invoke-static {v8, v1, v14}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    const v1, 0x7f080088

    const/4 v8, 0x0

    invoke-static {v1, v0, v8}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v24

    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v26, Landroidx/compose/ui/layout/ContentScale$Companion;->e:Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;

    const/16 v28, 0x0

    const/16 v29, 0x36

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v30

    const v1, 0xe000

    and-int v1, v21, v1

    const/16 v8, 0x4000

    if-ne v1, v8, :cond_e

    move v1, v14

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_10

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v1, :cond_f

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    new-instance v8, Lyh0;

    const/4 v1, 0x0

    invoke-direct {v8, v5, v4, v1}, Lyh0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    move-object/from16 v34, v8

    check-cast v34, Lkotlin/jvm/functions/Function0;

    const/16 v35, 0x1f

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const-string v1, "MyOrder_ProductDeliveryImageItem_image"

    invoke-static {v8, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v1, v19

    const/16 v19, 0x0

    const/16 v20, 0x7fc

    move-object/from16 v23, v10

    const/4 v10, 0x0

    move-object/from16 v24, v11

    const/4 v11, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move-object/from16 v26, v13

    const/4 v13, 0x0

    move/from16 v27, v14

    const/4 v14, 0x0

    move-object/from16 v28, v15

    const/4 v15, 0x0

    const/16 v29, 0x0

    const/16 v16, 0x0

    move-object/from16 v30, v17

    const/16 v17, 0x0

    move-object/from16 v9, v18

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v26

    move/from16 v6, v29

    move-object/from16 v2, v30

    move-object/from16 v18, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v25

    move-object v3, v1

    move-object/from16 v1, v28

    invoke-static/range {v8 .. v20}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v8, v18

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v10, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v9}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v9, v10, v8, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v8, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v23, :cond_12

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_11

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_11
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_d
    invoke-static {v8, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v8, v3, v8, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v8, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v21, 0xf

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p5

    invoke-virtual {v6, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_13
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_14
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v0, Lzh0;

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lzh0;-><init>(FFLcom/vuitton/android/presentation/utils/UrlFactory;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final j(Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x4ab5a8e1    # 5952624.5f

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, v2, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v4, v5, :cond_4

    move v4, v14

    goto :goto_3

    :cond_4
    move v4, v15

    :goto_3
    and-int/2addr v3, v14

    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const/4 v11, 0x0

    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    goto :goto_4

    :cond_5
    move-object v4, v11

    :goto_4
    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;->CLICK_COLLECT:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    if-ne v4, v5, :cond_6

    move v12, v14

    goto :goto_5

    :cond_6
    move v12, v15

    :goto_5
    const-string v4, " - "

    if-eqz v3, :cond_8

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;->a:Ljava/lang/String;

    if-eqz v5, :cond_8

    invoke-static {v5}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;->e:Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    move-object v13, v4

    goto :goto_7

    :cond_8
    if-eqz v12, :cond_9

    const v5, 0x9f989c0

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v5, 0x7f140ccc

    invoke-static {v7, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f140cc8

    invoke-static {v7, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_9
    const v4, 0x9fc0730

    const v5, 0x7f140ccb

    invoke-static {v7, v4, v5, v7, v15}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :goto_7
    const v4, 0x7f140ce7

    invoke-static {v7, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    move-object v8, v6

    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->PRODUCT_NAME:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    move-object v9, v8

    const/16 v8, 0x180

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move/from16 p2, v12

    move-object/from16 v12, v16

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    if-nez p2, :cond_b

    const v4, 0xa00f461

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v4, 0x7f140d96

    invoke-static {v7, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_a

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    if-eqz v5, :cond_a

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;->f:Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-static {v5}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_a
    move-object v5, v11

    :goto_8
    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->SHIPPING_ADDRESS:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const/16 v8, 0x180

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_b
    const v4, 0xa052d81

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    const v4, 0x7f140d97

    invoke-static {v7, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->SHIPPING_METHOD:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const/16 v8, 0x180

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    const v4, 0x7f140cf1

    invoke-static {v7, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;->c:Ljava/lang/String;

    move-object v5, v3

    goto :goto_a

    :cond_c
    move-object v5, v11

    :goto_a
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    const v3, 0x7f140d8d

    invoke-static {v7, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->a:Ljava/lang/String;

    move-object v5, v3

    goto :goto_b

    :cond_d
    move-object v5, v11

    :goto_b
    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->ORDER_DATE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const/16 v8, 0x180

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "OrderOngoingDetails"

    if-eqz v12, :cond_11

    move-object v6, v12

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v14

    if-ne v5, v14, :cond_11

    const v5, 0xa0fcdff

    invoke-static {v7, v5, v4, v3}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v3

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v10, :cond_e

    iget-object v5, v10, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    goto :goto_c

    :cond_e
    move-object v5, v11

    :goto_c
    if-nez v5, :cond_f

    const v5, 0xa129e61

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    :goto_d
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_f
    const v6, 0x73f015a0

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    :goto_e
    if-nez v11, :cond_10

    const v5, 0x73f01c26

    const v6, 0x7f140cd7

    invoke-static {v7, v5, v6, v7, v15}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v11

    :goto_f
    move-object v5, v11

    move-object/from16 v16, v12

    goto :goto_10

    :cond_10
    const v5, 0x73f011bc

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :goto_10
    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v6, 0x0

    move-object v11, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v15, v4

    move-object v4, v3

    move-object/from16 v3, v16

    invoke-static/range {v4 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v11

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v9, 0x0

    invoke-static {v6, v9, v8, v14}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-wide/from16 v27, v4

    move-object v4, v6

    move-wide/from16 v6, v27

    const/4 v5, 0x0

    move-object v8, v11

    invoke-static/range {v4 .. v10}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v7, v8

    const v4, 0x7f140cde

    invoke-static {v7, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-string v6, "myOrders_personalizationTitle_text"

    invoke-static {v15, v6}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/16 v25, 0x0

    const v26, 0x1fff8

    move-object/from16 v22, v5

    move-object v5, v6

    move-object v11, v7

    move-wide v6, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v23, v11

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/4 v0, 0x0

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v7, v23

    invoke-static {v0, v7, v3}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->a(ILandroidx/compose/runtime/Composer;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_11
    move v0, v15

    move-object v15, v4

    if-eqz v10, :cond_12

    iget-object v4, v10, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    if-eqz v4, :cond_12

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->b(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)Z

    move-result v5

    xor-int/2addr v5, v14

    if-ne v5, v14, :cond_12

    const v5, 0xa1ea3bd

    invoke-static {v7, v5, v15, v3}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v10, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v12, 0x0

    const/16 v13, 0xd

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v6, 0x0

    move-object v11, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v11

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_12
    const v3, 0xa2273c1

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_13
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_11
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v3, Lg2;

    const/16 v4, 0x16

    move-object/from16 v5, p0

    invoke-direct {v3, v5, v1, v2, v4}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public static final k(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move/from16 v4, p4

    const v0, -0x6b437c39

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_2

    or-int/lit16 v2, v2, 0x180

    goto :goto_4

    :cond_2
    and-int/lit16 v6, v4, 0x180

    if-nez v6, :cond_5

    if-nez p2, :cond_3

    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    :goto_2
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v2, v6

    :cond_5
    :goto_4
    and-int/lit16 v6, v2, 0x93

    const/16 v7, 0x92

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v28, 0x0

    if-eqz v5, :cond_7

    move-object/from16 v29, v28

    goto :goto_6

    :cond_7
    move-object/from16 v29, p2

    :goto_6
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->n:J

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v9, "OrderStandardHeader"

    invoke-direct {v6, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v29, :cond_8

    invoke-virtual/range {v29 .. v29}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->a()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_8
    move-object/from16 v10, v28

    :goto_7
    if-eqz v10, :cond_9

    invoke-static {v6, v10}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    :cond_9
    and-int/lit8 v25, v2, 0xe

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object v11, v9

    const-wide/16 v9, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const-wide/16 v16, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x0

    move-object/from16 v22, v21

    const/16 v21, 0x0

    move-object/from16 v23, v22

    const/16 v22, 0x0

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v23, v5

    move-object v5, v1

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    sget-object v5, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v18, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v29, :cond_a

    invoke-virtual/range {v29 .. v29}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->b()Ljava/lang/String;

    move-result-object v28

    :cond_a
    move-object/from16 v0, v28

    if-eqz v0, :cond_b

    invoke-static {v5, v0}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    :cond_b
    move-object v6, v5

    shr-int/lit8 v0, v2, 0x3

    and-int/lit8 v25, v0, 0xe

    const/16 v26, 0x6180

    const v27, 0x1aff8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v1

    move-object v5, v3

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v29

    goto :goto_8

    :cond_c
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    :goto_8
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_d

    new-instance v0, Lh;

    const/4 v6, 0x7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final l(Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V
    .locals 31

    move-wide/from16 v3, p2

    const v0, -0x42b92836

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p5, v2

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v2, v6

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v2, v6

    and-int/lit16 v6, v2, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_3

    move v6, v8

    goto :goto_3

    :cond_3
    move v6, v9

    :goto_3
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    sget-object v7, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v18, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    and-int/lit8 v25, v2, 0xe

    const/16 v26, 0x6180

    const v27, 0x1affa

    move-object/from16 v23, v6

    const/4 v6, 0x0

    move-wide/from16 v29, v10

    move v11, v8

    move-wide/from16 v7, v29

    move v12, v9

    const-wide/16 v9, 0x0

    move v13, v11

    const/4 v11, 0x0

    move v15, v12

    move v14, v13

    const-wide/16 v12, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v19, v16

    move/from16 v20, v17

    const-wide/16 v16, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v22, v20

    const/16 v20, 0x1

    move/from16 v24, v21

    const/16 v21, 0x0

    move/from16 v28, v22

    const/16 v22, 0x0

    move/from16 v5, v24

    move-object/from16 v24, v0

    move v0, v5

    move-object v5, v1

    move/from16 v1, v28

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v24

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "OrderStatusHeader-XO-JAsU"

    invoke-direct {v7, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v10, 0x30

    invoke-static {v9, v6, v5, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    iget-wide v9, v5, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v5, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v5, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_4

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v6, v8}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v9

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v12, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v13, 0x0

    const/16 v14, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    invoke-static {v6, v3, v4, v7}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v5, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 v25, v2, 0xe

    const/16 v26, 0x6180

    const v27, 0x1affa

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v24

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_7

    new-instance v0, Lp5;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lp5;-><init>(Ljava/lang/Object;Ljava/lang/Object;JII)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final m(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    const v1, 0x44e52c0

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    and-int/lit8 v4, v2, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    and-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v4, "ProductDetailRow"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v10, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v12, 0x0

    const/16 v13, 0xd

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v9, v10, v1, v7}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v7

    iget-wide v9, v1, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v1, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v1, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_2

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v10, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v8, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    sget-object v10, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-static {v4, v10, v5, v6}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->PRICE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    and-int/lit8 v20, v2, 0xe

    const/16 v21, 0x0

    const v22, 0x1fff8

    move-object/from16 v19, v1

    move-object v1, v4

    const-wide/16 v4, 0x0

    move v2, v6

    const/4 v6, 0x0

    move v10, v2

    move-object/from16 v18, v7

    move-wide/from16 v25, v8

    move v9, v3

    move-wide/from16 v2, v25

    const-wide/16 v7, 0x0

    move v11, v9

    const/4 v9, 0x0

    move v12, v10

    const/4 v10, 0x0

    move v13, v11

    move v14, v12

    const-wide/16 v11, 0x0

    move v15, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v23, v16

    const/16 v16, 0x0

    move/from16 v24, v17

    const/16 v17, 0x0

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v19

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    move-object/from16 v3, p1

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Lwd0;

    move/from16 v4, p3

    const/4 v13, 0x4

    invoke-direct {v2, v0, v3, v4, v13}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p1

    const v1, 0x10a7dbc4

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p4, v3

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    and-int/lit16 v4, v3, 0x93

    const/16 v5, 0x92

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object v0, v1

    move v12, v7

    goto/16 :goto_5

    :cond_4
    const v4, 0x3de22a22

    const-string v5, "ProductDetailRow"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v5, v8}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v11, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v13, 0x0

    const/16 v14, 0xd

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v9, v10, v1, v7}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v9

    iget-wide v10, v1, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v1, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v13, v1, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v25, 0x0

    if-eqz v13, :cond_9

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_5

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v9, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-static {v5, v4, v8, v6}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object/from16 v8, v25

    :goto_4
    invoke-static {v4, v8}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->f(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    and-int/lit8 v22, v3, 0xe

    const/16 v23, 0x0

    const v24, 0x1fff8

    move v11, v6

    move v12, v7

    const-wide/16 v6, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move v13, v3

    move-object v3, v4

    move-object v14, v5

    move-wide v4, v9

    const-wide/16 v9, 0x0

    move v15, v11

    const/4 v11, 0x0

    move/from16 v16, v12

    const/4 v12, 0x0

    move/from16 v17, v13

    move-object/from16 v18, v14

    const-wide/16 v13, 0x0

    move/from16 v19, v15

    const/4 v15, 0x0

    move/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v26, v17

    const/16 v17, 0x0

    move-object/from16 v27, v18

    const/16 v18, 0x0

    move/from16 v28, v19

    const/16 v19, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, v27

    invoke-static/range {v2 .. v24}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v19, v21

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->b()Ljava/lang/String;

    move-result-object v25

    :cond_7
    move-object/from16 v1, v25

    if-eqz v1, :cond_8

    invoke-static {v2, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_8
    move-object v1, v2

    invoke-static/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    shr-int/lit8 v5, v26, 0x3

    and-int/lit8 v20, v5, 0xe

    const/16 v21, 0x0

    const v22, 0x1fff8

    move-object/from16 v18, v2

    move-wide v2, v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v19

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v25

    :goto_5
    const v1, 0x3ded5e1e

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_a
    move-object v0, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v0, Lrv;

    const/16 v2, 0x1d

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lrv;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final o(Ljava/lang/String;JLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-wide/from16 v2, p1

    const v0, -0x19b2aa78

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    move-object/from16 v4, p0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p5, v5

    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    and-int/lit16 v6, v5, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    move v6, v9

    :goto_2
    and-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v6, "ProductDetailRow-3IgeMak"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v12, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v14, 0x0

    const/16 v15, 0xd

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v11, v12, v0, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v11

    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v0, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v27, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_3

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v11, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v13, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v12}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v10, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v23, v0

    move-object/from16 v28, v1

    iget-wide v0, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    sget-object v7, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-wide/from16 v17, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v0, v8}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object/from16 v1, v27

    :goto_4
    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->f(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v24, v5, 0xe

    const/16 v25, 0x0

    const v26, 0x1fff8

    move v5, v8

    move-object v1, v9

    const-wide/16 v8, 0x0

    move-object/from16 v22, v10

    const/4 v10, 0x0

    move-object v7, v11

    move-object/from16 v16, v12

    const-wide/16 v11, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x0

    move-object/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v21, v15

    move-object/from16 v29, v16

    const-wide/16 v15, 0x0

    move-object/from16 v30, v6

    move-wide/from16 v37, v17

    move-object/from16 v18, v7

    move-wide/from16 v6, v37

    const/16 v17, 0x0

    move-object/from16 v31, v18

    const/16 v18, 0x0

    move-object/from16 v32, v19

    const/16 v19, 0x0

    move-object/from16 v33, v20

    const/16 v20, 0x0

    move-object/from16 v34, v21

    const/16 v21, 0x0

    move-object v5, v0

    move-object/from16 v36, v1

    move-object/from16 v35, v29

    move-object/from16 v3, v30

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    const/4 v2, 0x0

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v4, v23

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->p:J

    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/BorderStrokeKt;->a(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v6

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iget v8, v6, Landroidx/compose/foundation/BorderStroke;->a:F

    iget-object v6, v6, Landroidx/compose/foundation/BorderStroke;->b:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v5, v8, v6, v7}, Landroidx/compose/foundation/BorderKt;->b(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object/from16 v6, v27

    :goto_5
    invoke-static {v5, v6}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->f(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget-wide v7, v4, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v4, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v28, :cond_7

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_6

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    invoke-static {v4, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v31

    invoke-static {v4, v8, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-static {v7, v4, v0, v4, v1}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, v36

    invoke-static {v4, v5, v1, v3}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVShape;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    move-wide/from16 v5, p1

    invoke-static {v0, v5, v6, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v4, v2}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v27

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v27

    :cond_9
    move-object v4, v0

    move-wide v5, v2

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_a

    new-instance v0, Lp5;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-wide v2, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lp5;-><init>(Ljava/lang/String;JLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final p(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move/from16 v4, p7

    const-string v5, "ShortcutItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, 0x2637af2

    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v6, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v7, v4, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v4

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    and-int/lit8 v9, v4, 0x30

    if-nez v9, :cond_4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    :cond_4
    and-int/lit16 v9, v4, 0x180

    const/16 v10, 0x100

    if-nez v9, :cond_6

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    goto :goto_3

    :cond_5
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v7, v9

    :cond_6
    and-int/lit16 v9, v4, 0xc00

    const/16 v11, 0x800

    if-nez v9, :cond_8

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v11

    goto :goto_4

    :cond_7
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v7, v9

    :cond_8
    and-int/lit8 v9, p8, 0x10

    const/16 v13, 0x4000

    if-eqz v9, :cond_a

    or-int/lit16 v7, v7, 0x6000

    :cond_9
    move/from16 v14, p4

    goto :goto_6

    :cond_a
    and-int/lit16 v14, v4, 0x6000

    if-nez v14, :cond_9

    move/from16 v14, p4

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_b

    move v15, v13

    goto :goto_5

    :cond_b
    const/16 v15, 0x2000

    :goto_5
    or-int/2addr v7, v15

    :goto_6
    const/high16 v15, 0x30000

    and-int/2addr v15, v4

    if-nez v15, :cond_d

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_c

    const/high16 v15, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v15, 0x10000

    :goto_7
    or-int/2addr v7, v15

    :cond_d
    const v15, 0x12493

    and-int/2addr v15, v7

    const v8, 0x12492

    move/from16 p6, v9

    const/4 v9, 0x1

    if-eq v15, v8, :cond_e

    move v8, v9

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    :goto_8
    and-int/lit8 v15, v7, 0x1

    invoke-virtual {v12, v15, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_1d

    if-eqz p6, :cond_f

    const/4 v8, 0x0

    goto :goto_9

    :cond_f
    move/from16 v8, p4

    :goto_9
    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v15, v14, :cond_10

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v18, v15

    check-cast v18, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    and-int/lit16 v15, v7, 0x380

    if-ne v15, v10, :cond_11

    move v10, v9

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v10, :cond_12

    if-ne v15, v14, :cond_13

    :cond_12
    new-instance v15, Llt;

    const/16 v10, 0x1a

    invoke-direct {v15, v3, v10}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v9, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const v10, 0xe000

    and-int/2addr v10, v7

    if-ne v10, v13, :cond_14

    move v10, v9

    goto :goto_b

    :cond_14
    const/4 v10, 0x0

    :goto_b
    and-int/lit16 v13, v7, 0x1c00

    if-ne v13, v11, :cond_15

    move v11, v9

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    :goto_c
    or-int/2addr v10, v11

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_17

    if-ne v11, v14, :cond_16

    goto :goto_d

    :cond_16
    const/4 v10, 0x2

    goto :goto_e

    :cond_17
    :goto_d
    new-instance v11, Lgq;

    const/4 v10, 0x2

    invoke-direct {v11, v8, v1, v10}, Lgq;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_e
    move-object/from16 v20, v11

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x13

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-virtual/range {p5 .. p5}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v15, 0x30

    invoke-static {v14, v13, v12, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    iget-wide v14, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v12, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v6, :cond_1c

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_18

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_18
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v13, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v15, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v26, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v11, v0, v5}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v11

    sget-object v17, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v11, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v11}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v17, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    move-object/from16 v17, v6

    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v3, v4, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->o:J

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6, v3, v4, v11}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    move v4, v7

    iget-wide v6, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v12, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v17, :cond_1b

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_19

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_19
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    invoke-static {v12, v3, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v7, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v12, v15, v12, v14}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v12, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v0, 0x41c00000    # 24.0f

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz v8, :cond_1a

    const v3, 0x6ea48be7

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    const/4 v6, 0x0

    invoke-static {v3, v12, v6}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v3

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v1, v0, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v7

    const/4 v14, 0x0

    const v15, 0x3fffbc

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/high16 v13, 0x180000

    move v1, v6

    move/from16 v27, v8

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v8, v0

    const/4 v0, 0x1

    invoke-static/range {v7 .. v15}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->a(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;ZILcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/runtime/Composer;III)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v15, v0

    goto :goto_11

    :cond_1a
    move/from16 v27, v8

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v15, 0x1

    const v8, 0x6eac4cdf

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v1, v0, v8}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v2, v12, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v13, 0x38

    const/4 v14, 0x0

    const/4 v8, 0x0

    move v1, v7

    move-object v7, v0

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-static {v12, v15, v5}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x42880000    # 68.0f

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->u(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    invoke-static {v0, v1, v3, v5}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    sget-object v3, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v13, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v13, v3}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    shr-int/lit8 v3, v4, 0x6

    and-int/lit8 v23, v3, 0xe

    const/16 v24, 0x0

    const v25, 0x1fbf8

    move-wide v5, v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v22, v12

    const/4 v12, 0x0

    move v3, v15

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v0

    move-object/from16 v21, v1

    move v0, v3

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v22

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v5, v27

    goto :goto_12

    :cond_1b
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_1c
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_1d
    move-object/from16 v26, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    :goto_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v0, Lh2;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v1, v26

    invoke-direct/range {v0 .. v8}, Lh2;-><init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
