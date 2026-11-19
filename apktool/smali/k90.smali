.class public final synthetic Lk90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ZJLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk90;->b:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lk90;->c:Z

    iput-wide p3, p0, Lk90;->d:J

    iput-object p5, p0, Lk90;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Lk90;->b:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_10

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget-object v7, v0, Lk90;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v7

    iget-boolean v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->d:Z

    iget v9, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->o:I

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "position() should be called first"

    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v9, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->c:Ljava/util/List;

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_f

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    iget v13, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->p:I

    if-eqz v8, :cond_1

    iget v14, v12, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_3

    :cond_1
    iget v14, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_3
    sub-int/2addr v13, v14

    iget v14, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->q:I

    move v15, v5

    iget-wide v4, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->t:J

    move-object/from16 v16, v2

    iget-object v2, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move/from16 v17, v3

    iget-object v3, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->b:Ljava/lang/Object;

    invoke-virtual {v2, v11, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz v7, :cond_2

    iput-wide v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->r:J

    move v3, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v10

    goto :goto_5

    :cond_2
    move v3, v7

    move/from16 v18, v8

    iget-wide v7, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->r:J

    sget-object v19, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v9

    move/from16 v20, v10

    sget-wide v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->t:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)Z

    move-result v7

    if-nez v7, :cond_3

    iget-wide v7, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->r:J

    goto :goto_4

    :cond_3
    move-wide v7, v4

    :goto_4
    iget-object v9, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->q:Landroidx/compose/runtime/MutableState;

    check-cast v9, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v9, v9, Landroidx/compose/ui/unit/IntOffset;->a:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->d(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->i(J)I

    move-result v9

    if-gt v9, v13, :cond_4

    invoke-virtual {v6, v7, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->i(J)I

    move-result v9

    if-le v9, v13, :cond_5

    :cond_4
    invoke-virtual {v6, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->i(J)I

    move-result v4

    if-lt v4, v14, :cond_6

    invoke-virtual {v6, v7, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->i(J)I

    move-result v4

    if-lt v4, v14, :cond_6

    :cond_5
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->b()V

    :cond_6
    move-wide v4, v7

    :goto_5
    iget-object v7, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->n:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_6

    :cond_7
    move v3, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v10

    const/4 v7, 0x0

    :goto_6
    iget-boolean v8, v0, Lk90;->c:Z

    if-eqz v8, :cond_c

    const/16 v8, 0x20

    sget-object v9, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    if-eqz v18, :cond_8

    shr-long v9, v4, v8

    long-to-int v9, v9

    goto :goto_8

    :cond_8
    shr-long v9, v4, v8

    long-to-int v9, v9

    iget v10, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->o:I

    sub-int/2addr v10, v9

    if-eqz v18, :cond_9

    iget v9, v12, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_7

    :cond_9
    iget v9, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_7
    sub-int v9, v10, v9

    :goto_8
    const-wide v13, 0xffffffffL

    if-eqz v18, :cond_b

    and-long/2addr v4, v13

    long-to-int v4, v4

    iget v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->o:I

    sub-int/2addr v5, v4

    if-eqz v18, :cond_a

    iget v4, v12, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_9

    :cond_a
    iget v4, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_9
    sub-int/2addr v5, v4

    goto :goto_a

    :cond_b
    and-long/2addr v4, v13

    long-to-int v5, v4

    :goto_a
    int-to-long v9, v9

    shl-long v8, v9, v8

    int-to-long v4, v5

    and-long/2addr v4, v13

    or-long/2addr v4, v8

    :cond_c
    iget-wide v8, v0, Lk90;->d:J

    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->d(JJ)J

    move-result-wide v4

    if-nez v3, :cond_d

    if-eqz v2, :cond_d

    iput-wide v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->m:J

    :cond_d
    if-eqz v7, :cond_e

    invoke-static {v1, v12, v4, v5, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->C(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_b

    :cond_e
    invoke-static {v1, v12, v4, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->B(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move v7, v3

    move v5, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v8, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    goto/16 :goto_2

    :cond_f
    move-object/from16 v16, v2

    move/from16 v17, v3

    move v15, v5

    add-int/lit8 v5, v15, 0x1

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
