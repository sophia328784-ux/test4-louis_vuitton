.class public abstract Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/PerfumeSamplesCardKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    if-eqz v0, :cond_0

    const-string v1, "PerfumeSamplesCard"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x48e6dc

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int v0, p5, v0

    move-object/from16 v9, p2

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_1

    :cond_2
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x800

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x493

    const/16 v6, 0x492

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v1, v6, :cond_4

    move v1, v11

    goto :goto_3

    :cond_4
    move v1, v12

    :goto_3
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v13, v6, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const v14, 0x7f14110c

    if-eqz v1, :cond_5

    const v0, 0x23ad1e1a

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    const/16 v10, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v13, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f14110b

    invoke-static {v13, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->SAMPLE:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    const/high16 v14, 0x30000

    const/16 v15, 0x48

    const/4 v9, 0x0

    const v10, 0x7f08023f

    move v0, v12

    const/4 v12, 0x0

    move v1, v0

    invoke-static/range {v6 .. v15}, Lcom/vuitton/android/presentation/compose/components/LVCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_7

    :cond_5
    move v1, v12

    const v6, 0x23b2eb13

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    const/16 v10, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v13, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->c:Ljava/lang/String;

    if-nez v14, :cond_6

    const-string v14, ""

    :cond_6
    invoke-direct {v12, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->e:Ljava/lang/String;

    const/4 v14, 0x0

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    move-object v10, v14

    :goto_5
    new-instance v15, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    invoke-direct {v15, v12, v14, v10, v14}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    and-int/lit16 v0, v0, 0x1c00

    if-ne v0, v3, :cond_9

    move v12, v11

    goto :goto_6

    :cond_9
    move v12, v1

    :goto_6
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_a

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v0, :cond_b

    :cond_a
    new-instance v3, Lsq;

    invoke-direct {v3, v4, v2, v11}, Lsq;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/ArrayList;I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v13

    invoke-static/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/SelectableItemsCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_8

    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_d

    new-instance v0, Luv;

    const/16 v6, 0x1a

    move-object/from16 v3, p2

    move-object v1, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method
