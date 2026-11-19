.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/Node;",
        "Landroidx/compose/ui/input/pointer/NodeParent;",
        "Landroidx/compose/ui/Modifier$Node;",
        "modifierNode",
        "<init>",
        "(Landroidx/compose/ui/Modifier$Node;)V",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Landroidx/compose/ui/Modifier$Node;

.field public final d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

.field public final e:Landroidx/collection/LongSparseArray;

.field public f:Landroidx/compose/ui/node/NodeCoordinator;

.field public g:Landroidx/compose/ui/input/pointer/PointerEvent;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    new-instance p1, Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    new-instance p1, Landroidx/collection/LongSparseArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->a(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v4

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v6, v5, Landroidx/compose/ui/Modifier$Node;->o:Z

    const/4 v7, 0x1

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-eqz v5, :cond_8

    instance-of v10, v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/16 v11, 0x10

    if-eqz v10, :cond_1

    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-static {v5, v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->d(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_3

    :cond_1
    iget v10, v5, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    instance-of v10, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_7

    move-object v10, v5

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move v12, v9

    :goto_1
    if-eqz v10, :cond_6

    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v13, v11

    if-eqz v13, :cond_5

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v7, :cond_2

    move-object v5, v10

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v13, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_6
    if-ne v12, v7, :cond_7

    goto :goto_0

    :cond_7
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_0

    :cond_8
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    if-nez v5, :cond_9

    :goto_4
    return v7

    :cond_9
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->g()I

    move-result v5

    move v8, v9

    :goto_5
    iget-object v10, v0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    if-ge v8, v5, :cond_12

    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->d(I)J

    move-result-wide v12

    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->h(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v10, v12, v13}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b(J)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->g:J

    iget-object v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->m:Ljava/util/List;

    move/from16 v17, v8

    iget-wide v7, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    const-wide v18, 0x7fffffff7fffffffL

    and-long v20, v9, v18

    const-wide v22, 0x7fffff007fffffL

    add-long v20, v20, v22

    const-wide v24, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long v20, v20, v24

    const-wide/16 v26, 0x0

    cmp-long v20, v20, v26

    if-nez v20, :cond_10

    and-long v20, v7, v18

    add-long v20, v20, v22

    and-long v20, v20, v24

    cmp-long v20, v20, v26

    if-nez v20, :cond_10

    new-instance v15, Ljava/util/ArrayList;

    if-nez v6, :cond_a

    sget-object v21, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_6
    move/from16 v53, v4

    goto :goto_7

    :cond_a
    move-object/from16 v21, v6

    goto :goto_6

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v6, :cond_b

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_b
    move-object v4, v6

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v21, v5

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_d

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move/from16 v29, v4

    move-object/from16 v4, v28

    check-cast v4, Landroidx/compose/ui/input/pointer/HistoricalChange;

    move/from16 v30, v5

    move-object/from16 v28, v6

    iget-wide v5, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->b:J

    and-long v31, v5, v18

    add-long v31, v31, v22

    and-long v31, v31, v24

    cmp-long v31, v31, v26

    if-nez v31, :cond_c

    new-instance v32, Landroidx/compose/ui/input/pointer/HistoricalChange;

    move-object/from16 v54, v11

    move-wide/from16 v55, v12

    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->a:J

    iget-object v13, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v33, v11

    const/4 v11, 0x1

    invoke-virtual {v13, v2, v5, v6, v11}, Landroidx/compose/ui/node/NodeCoordinator;->u(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v35

    iget v5, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->c:F

    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->d:J

    move/from16 v37, v5

    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->e:J

    const/16 v42, 0x0

    move-wide/from16 v40, v4

    move-wide/from16 v38, v11

    invoke-direct/range {v32 .. v42}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v32

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    move-object/from16 v54, v11

    move-wide/from16 v55, v12

    :goto_9
    add-int/lit8 v5, v30, 0x1

    move-object/from16 v6, v28

    move/from16 v4, v29

    move-object/from16 v11, v54

    move-wide/from16 v12, v55

    goto :goto_8

    :cond_d
    move-object/from16 v54, v11

    move-wide/from16 v55, v12

    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x1

    invoke-virtual {v4, v2, v9, v10, v11}, Landroidx/compose/ui/node/NodeCoordinator;->u(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v39

    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2, v7, v8, v11}, Landroidx/compose/ui/node/NodeCoordinator;->u(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v33

    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    iget-boolean v8, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->f:J

    iget-boolean v11, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->h:Z

    iget v12, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    move-wide/from16 v29, v4

    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->j:J

    iget v13, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->e:F

    new-instance v28, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget v2, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->k:F

    move-wide/from16 v45, v4

    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->l:J

    move-wide/from16 v48, v4

    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->n:J

    const/16 v52, 0x0

    const/16 v42, 0x0

    move/from16 v47, v2

    move-wide/from16 v50, v4

    move-wide/from16 v31, v6

    move/from16 v35, v8

    move-wide/from16 v37, v9

    move/from16 v41, v11

    move/from16 v43, v12

    move/from16 v36, v13

    move-object/from16 v44, v15

    invoke-direct/range {v28 .. v52}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZILjava/util/List;JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v28

    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v4, :cond_e

    move-object v4, v14

    :cond_e
    iput-object v4, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v4, :cond_f

    goto :goto_a

    :cond_f
    move-object v14, v4

    :goto_a
    iput-object v14, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v6, v54

    move-wide/from16 v4, v55

    invoke-virtual {v6, v4, v5, v2}, Landroidx/collection/LongSparseArray;->e(JLjava/lang/Object;)V

    goto :goto_b

    :cond_10
    move/from16 v53, v4

    move/from16 v21, v5

    goto :goto_b

    :cond_11
    move/from16 v53, v4

    move/from16 v21, v5

    move/from16 v17, v8

    :goto_b
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v2, p2

    move/from16 v5, v21

    move/from16 v4, v53

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_12
    move/from16 v53, v4

    move-object v6, v11

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->g()I

    move-result v2

    if-nez v2, :cond_13

    const/4 v15, 0x0

    iput v15, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->j()V

    const/16 v16, 0x1

    return v16

    :cond_13
    const/16 v16, 0x1

    iget v2, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    add-int/lit8 v2, v2, -0x1

    :goto_c
    const/4 v4, -0x1

    if-ge v4, v2, :cond_17

    iget-object v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    aget-wide v7, v5, v2

    invoke-virtual {v1, v7, v8}, Landroidx/collection/LongSparseArray;->c(J)I

    move-result v5

    if-ltz v5, :cond_14

    goto :goto_e

    :cond_14
    iget v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    if-ge v2, v5, :cond_16

    add-int/lit8 v5, v5, -0x1

    move v7, v2

    :goto_d
    if-ge v7, v5, :cond_15

    iget-object v8, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    add-int/lit8 v9, v7, 0x1

    aget-wide v11, v8, v9

    aput-wide v11, v8, v7

    move v7, v9

    goto :goto_d

    :cond_15
    iget v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    add-int/2addr v5, v4

    iput v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    :cond_16
    :goto_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->g()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->g()I

    move-result v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_18

    invoke-virtual {v6, v4}, Landroidx/collection/LongSparseArray;->h(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_18
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    iget-object v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1a

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-virtual {v3, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a(J)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_11

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    const/4 v6, 0x0

    :goto_11
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v6, :cond_27

    iget-boolean v3, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-nez p4, :cond_1c

    const/4 v15, 0x0

    iput-boolean v15, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    :cond_1b
    const/16 v16, 0x1

    goto :goto_16

    :cond_1c
    const/4 v15, 0x0

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    if-nez v4, :cond_1b

    if-nez v3, :cond_1d

    iget-boolean v4, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->h:Z

    if-eqz v4, :cond_1b

    :cond_1d
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v4, Landroidx/compose/ui/layout/Placeable;->d:J

    iget-wide v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    const/16 v8, 0x20

    shr-long v9, v6, v8

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    shr-long v7, v4, v8

    long-to-int v7, v7

    and-long/2addr v4, v10

    long-to-int v4, v4

    const/4 v5, 0x0

    cmpg-float v8, v9, v5

    if-gez v8, :cond_1e

    const/16 v20, 0x1

    goto :goto_12

    :cond_1e
    move/from16 v20, v15

    :goto_12
    int-to-float v7, v7

    cmpl-float v7, v9, v7

    if-lez v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_13

    :cond_1f
    move v7, v15

    :goto_13
    or-int v7, v20, v7

    cmpg-float v5, v6, v5

    if-gez v5, :cond_20

    const/16 v20, 0x1

    goto :goto_14

    :cond_20
    move/from16 v20, v15

    :goto_14
    or-int v5, v7, v20

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_21

    const/16 v20, 0x1

    goto :goto_15

    :cond_21
    move/from16 v20, v15

    :goto_15
    or-int v4, v5, v20

    const/16 v16, 0x1

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    :goto_16
    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->h:Z

    if-eq v4, v5, :cond_25

    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/input/pointer/PointerEventType;->d:I

    if-ne v4, v5, :cond_22

    goto :goto_17

    :cond_22
    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget v5, Landroidx/compose/ui/input/pointer/PointerEventType;->e:I

    if-ne v4, v5, :cond_23

    goto :goto_17

    :cond_23
    sget v5, Landroidx/compose/ui/input/pointer/PointerEventType;->f:I

    if-ne v4, v5, :cond_25

    :goto_17
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    if-eqz v3, :cond_24

    sget v3, Landroidx/compose/ui/input/pointer/PointerEventType;->e:I

    goto :goto_18

    :cond_24
    sget v3, Landroidx/compose/ui/input/pointer/PointerEventType;->f:I

    :goto_18
    iput v3, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    goto :goto_19

    :cond_25
    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/input/pointer/PointerEventType;->e:I

    if-ne v4, v5, :cond_26

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->h:Z

    if-eqz v4, :cond_26

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->j:Z

    if-nez v4, :cond_26

    sget v3, Landroidx/compose/ui/input/pointer/PointerEventType;->d:I

    iput v3, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    goto :goto_19

    :cond_26
    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget v5, Landroidx/compose/ui/input/pointer/PointerEventType;->f:I

    if-ne v4, v5, :cond_28

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    if-eqz v4, :cond_28

    if-eqz v3, :cond_28

    sget v3, Landroidx/compose/ui/input/pointer/PointerEventType;->d:I

    iput v3, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    goto :goto_19

    :cond_27
    const/4 v15, 0x0

    const/16 v16, 0x1

    :cond_28
    :goto_19
    if-nez v53, :cond_2c

    iget v3, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/input/pointer/PointerEventType;->d:I

    if-ne v3, v4, :cond_2c

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-eqz v3, :cond_2c

    iget-object v3, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_29

    goto :goto_1b

    :cond_29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v5, v15

    :goto_1a
    if-ge v5, v4, :cond_2b

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v8, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    iget-wide v6, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_1b

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_2b
    move v7, v15

    goto :goto_1c

    :cond_2c
    :goto_1b
    move/from16 v7, v16

    :goto_1c
    iput-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    return v7
.end method

.method public final b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->h:Z

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v6, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    iget-wide v7, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-virtual {p1, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a(J)Z

    move-result v5

    iget-boolean v9, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-nez v6, :cond_3

    if-nez v9, :cond_3

    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v5, v7, v8}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->c(J)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    iget p1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->f:I

    if-ne p1, v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->j:Z

    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/Node;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_8

    instance-of v3, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v3, :cond_1

    check-cast p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {p0}, Landroidx/compose/ui/node/PointerInputModifierNode;->f1()V

    goto :goto_4

    :cond_1
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->d:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    instance-of v3, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_7

    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move v5, v2

    :goto_2
    const/4 v6, 0x1

    if-eqz v3, :cond_6

    iget v7, v3, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_2

    move-object p0, v3

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v6, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v6, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object p0, v0

    :cond_4
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_6
    if-ne v5, v6, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final d(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 14

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->g()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v4, v1, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, v1, Landroidx/compose/ui/Modifier$Node;->i:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroidx/compose/ui/node/NodeCoordinator;->q:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-nez v4, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v5, Landroidx/compose/ui/layout/Placeable;->d:J

    move-object v7, v1

    move-object v8, v2

    :goto_1
    const/4 v9, 0x1

    if-eqz v7, :cond_b

    instance-of v10, v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v10, :cond_4

    check-cast v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v7, v4, v9, v5, v6}, Landroidx/compose/ui/node/PointerInputModifierNode;->f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_4

    :cond_4
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->d:I

    const/16 v11, 0x10

    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    instance-of v10, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_a

    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move v12, v3

    :goto_2
    if-eqz v10, :cond_9

    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v13, v11

    if-eqz v13, :cond_8

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v9, :cond_5

    move-object v7, v10

    goto :goto_3

    :cond_5
    if-nez v8, :cond_6

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v13, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object v7, v2

    :cond_7
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_9
    if-ne v12, v9, :cond_a

    goto :goto_1

    :cond_a
    :goto_4
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    :cond_b
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->d:I

    :goto_5
    if-ge v3, v1, :cond_c

    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v5, p1}, Landroidx/compose/ui/input/pointer/Node;->d(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    move v3, v9

    :goto_6
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->a()V

    iput-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    return v3
.end method

.method public final e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->g()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/Modifier$Node;->i:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/compose/ui/node/NodeCoordinator;->q:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    :goto_1
    return v1

    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v3, Landroidx/compose/ui/layout/Placeable;->d:J

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v5

    :goto_2
    const/16 v8, 0x10

    const/4 v9, 0x1

    if-eqz v6, :cond_b

    instance-of v10, v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v10, :cond_4

    check-cast v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v6, v2, v8, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_5

    :cond_4
    iget v10, v6, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_a

    instance-of v10, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_a

    move-object v10, v6

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move v11, v1

    :goto_3
    if-eqz v10, :cond_9

    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v12, v8

    if-eqz v12, :cond_8

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v9, :cond_5

    move-object v6, v10

    goto :goto_4

    :cond_5
    if-nez v7, :cond_6

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v12, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object v6, v5

    :cond_7
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_4
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_9
    if-ne v11, v9, :cond_a

    goto :goto_2

    :cond_a
    :goto_5
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_2

    :cond_b
    iget-boolean v6, v0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v7, v6, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->d:I

    move v10, v1

    :goto_6
    if-ge v10, v6, :cond_c

    aget-object v11, v7, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/Node;

    iget-object v12, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    iget-boolean p0, v0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz p0, :cond_14

    move-object p0, v5

    :goto_7
    if-eqz v0, :cond_14

    instance-of p1, v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz p1, :cond_d

    check-cast v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v0, v2, p1, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_a

    :cond_d
    iget p1, v0, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr p1, v8

    if-eqz p1, :cond_13

    instance-of p1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz p1, :cond_13

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/node/DelegatingNode;

    iget-object p1, p1, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move p2, v1

    :goto_8
    if-eqz p1, :cond_12

    iget v6, p1, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_11

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v9, :cond_e

    move-object v0, p1

    goto :goto_9

    :cond_e
    if-nez p0, :cond_f

    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v6, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {p0, v6, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object v0, v5

    :cond_10
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_11
    :goto_9
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_8

    :cond_12
    if-ne p2, v9, :cond_13

    goto :goto_7

    :cond_13
    :goto_a
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_7

    :cond_14
    return v9
.end method

.method public final f(JLandroidx/collection/MutableObjectList;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, p0}, Landroidx/collection/ObjectList;->c(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->c(J)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->f(J)V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v2, p1, p2, p3}, Landroidx/compose/ui/input/pointer/Node;->f(JLandroidx/collection/MutableObjectList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node(modifierNode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pointerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
