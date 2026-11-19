.class public abstract Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftCardKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    if-eqz v0, :cond_0

    const-string v1, "GiftCard"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v7, v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7740fa4f

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int v0, p7, v0

    move-object/from16 v3, p2

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_1

    :cond_2
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v4, p3

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_2

    :cond_3
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v11, p4

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_3

    :cond_4
    const/16 v1, 0x2000

    :goto_3
    or-int/2addr v0, v1

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v5, 0x20000

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_4

    :cond_5
    const/high16 v1, 0x10000

    :goto_4
    or-int/2addr v0, v1

    const v1, 0x12493

    and-int/2addr v1, v0

    const v8, 0x12492

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v1, v8, :cond_6

    move v1, v13

    goto :goto_5

    :cond_6
    move v1, v14

    :goto_5
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v15, v8, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v1, v2, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    const v8, 0x7f140503

    if-eqz v1, :cond_7

    const v1, -0x4d735685

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v10, 0x0

    const/16 v12, 0x1f

    move v1, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v15, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f1404ff

    invoke-static {v15, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->GIFT_MESSAGE:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x1c00

    const/high16 v1, 0x30000

    or-int v16, v0, v1

    const/16 v17, 0x40

    const v12, 0x7f08017a

    move v0, v14

    const/4 v14, 0x0

    move-object v11, v3

    move v3, v0

    invoke-static/range {v8 .. v17}, Lcom/vuitton/android/presentation/compose/components/LVCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_7
    move v1, v8

    move v3, v14

    const v8, -0x4d6d0bda

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v10, 0x0

    const/16 v12, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p4

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v15, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const/high16 v1, 0x70000

    and-int/2addr v1, v0

    if-ne v1, v5, :cond_8

    goto :goto_6

    :cond_8
    move v13, v3

    :goto_6
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v13, :cond_9

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v5, :cond_a

    :cond_9
    new-instance v1, Ly2;

    const/16 v5, 0xe

    invoke-direct {v1, v6, v5}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v0, 0x3

    and-int/lit16 v13, v0, 0x380

    const/4 v14, 0x0

    move-object v10, v4

    move-object v12, v15

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/SelectableItemsCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_c

    new-instance v0, Lu1;

    const/16 v8, 0xd

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v1, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
