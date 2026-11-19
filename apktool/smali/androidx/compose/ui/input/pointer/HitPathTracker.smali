.class public final Landroidx/compose/ui/input/pointer/HitPathTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/HitPathTracker;",
        "",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "rootCoordinates",
        "<init>",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
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
.field public final a:Landroidx/compose/ui/layout/LayoutCoordinates;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Landroidx/collection/MutableObjectList;

.field public final g:Landroidx/compose/ui/input/pointer/NodeParent;

.field public final h:Landroidx/collection/MutableLongObjectMap;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->a:Landroidx/compose/ui/layout/LayoutCoordinates;

    new-instance p1, Landroidx/collection/MutableObjectList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->f:Landroidx/collection/MutableObjectList;

    new-instance p1, Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->g:Landroidx/compose/ui/input/pointer/NodeParent;

    new-instance p1, Landroidx/collection/MutableLongObjectMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->h:Landroidx/collection/MutableLongObjectMap;

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->g:Landroidx/compose/ui/input/pointer/NodeParent;

    const/4 v6, 0x1

    move-object v10, v5

    move v9, v6

    const/4 v8, 0x0

    :goto_0
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->h:Landroidx/collection/MutableLongObjectMap;

    if-ge v8, v4, :cond_9

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    iget-boolean v13, v12, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz v13, :cond_4

    new-instance v13, Landroidx/compose/ui/input/pointer/HitPathTracker$addHitPath$1;

    invoke-direct {v13, v0, v12}, Landroidx/compose/ui/input/pointer/HitPathTracker$addHitPath$1;-><init>(Landroidx/compose/ui/input/pointer/HitPathTracker;Landroidx/compose/ui/Modifier$Node;)V

    iput-object v13, v12, Landroidx/compose/ui/Modifier$Node;->n:Lkotlin/jvm/functions/Function0;

    if-eqz v9, :cond_6

    iget-object v14, v10, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v15, v14, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v14, v14, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_1

    aget-object v17, v15, v7

    move-object/from16 v13, v17

    check-cast v13, Landroidx/compose/ui/input/pointer/Node;

    iget-object v13, v13, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v7, v17

    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    if-eqz v7, :cond_5

    iput-boolean v6, v7, Landroidx/compose/ui/input/pointer/Node;->i:Z

    iget-object v10, v7, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v10, v1, v2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a(J)V

    if-eqz p4, :cond_3

    invoke-virtual {v11, v1, v2}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    new-instance v10, Landroidx/collection/MutableObjectList;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v13, v6, v12}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v1, v2, v10}, Landroidx/collection/MutableLongObjectMap;->g(JLjava/lang/Object;)V

    :cond_2
    check-cast v10, Landroidx/collection/MutableObjectList;

    invoke-virtual {v10, v7}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_3
    move-object v10, v7

    :cond_4
    const/4 v13, 0x0

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :cond_6
    new-instance v7, Landroidx/compose/ui/input/pointer/Node;

    invoke-direct {v7, v12}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/Modifier$Node;)V

    iget-object v12, v7, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v12, v1, v2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a(J)V

    if-eqz p4, :cond_8

    invoke-virtual {v11, v1, v2}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_7

    new-instance v12, Landroidx/collection/MutableObjectList;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v6, v14}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v1, v2, v12}, Landroidx/collection/MutableLongObjectMap;->g(JLjava/lang/Object;)V

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    check-cast v12, Landroidx/collection/MutableObjectList;

    invoke-virtual {v12, v7}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    :goto_4
    iget-object v10, v10, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object v10, v7

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x0

    if-eqz p4, :cond_e

    iget-object v0, v11, Landroidx/collection/LongObjectMap;->b:[J

    iget-object v1, v11, Landroidx/collection/LongObjectMap;->c:[Ljava/lang/Object;

    iget-object v2, v11, Landroidx/collection/LongObjectMap;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_e

    move v4, v13

    :goto_6
    aget-wide v6, v2, v4

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v14

    cmp-long v8, v8, v14

    if-eqz v8, :cond_d

    sub-int v8, v4, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v13

    :goto_7
    if-ge v10, v8, :cond_c

    const-wide/16 v14, 0xff

    and-long/2addr v14, v6

    const-wide/16 v16, 0x80

    cmp-long v12, v14, v16

    if-gez v12, :cond_a

    shl-int/lit8 v12, v4, 0x3

    add-int/2addr v12, v10

    aget-wide v14, v0, v12

    aget-object v12, v1, v12

    check-cast v12, Landroidx/collection/MutableObjectList;

    iget-object v13, v5, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    move/from16 p0, v9

    iget-object v9, v13, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v13, v13, Landroidx/compose/runtime/collection/MutableVector;->d:I

    move-object/from16 v17, v0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v13, :cond_b

    aget-object v18, v9, v0

    move/from16 p1, v0

    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v0, v14, v15, v12}, Landroidx/compose/ui/input/pointer/Node;->f(JLandroidx/collection/MutableObjectList;)V

    add-int/lit8 v0, p1, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v17, v0

    move/from16 p0, v9

    :cond_b
    shr-long v6, v6, p0

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p0

    move-object/from16 v0, v17

    const/4 v13, 0x0

    goto :goto_7

    :cond_c
    move-object/from16 v17, v0

    move v0, v9

    if-ne v8, v0, :cond_e

    goto :goto_9

    :cond_d
    move-object/from16 v17, v0

    :goto_9
    if-eq v4, v3, :cond_e

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v17

    const/4 v13, 0x0

    goto :goto_6

    :cond_e
    invoke-virtual {v11}, Landroidx/collection/MutableLongObjectMap;->c()V

    return-void
.end method

.method public final b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 9

    iget-object v0, p1, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a:Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->a:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->g:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->a(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v0

    iget-object v1, v2, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->b:Z

    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v5, v1, Landroidx/compose/runtime/collection/MutableVector;->d:I

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    check-cast v8, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v8, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, v1, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->d:I

    move v4, v3

    move v5, v4

    :goto_3
    if-ge v4, v1, :cond_6

    aget-object v6, p2, v4

    check-cast v6, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v6, p1}, Landroidx/compose/ui/input/pointer/Node;->d(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v5, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v0

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    if-nez v5, :cond_8

    if-eqz v7, :cond_7

    goto :goto_6

    :cond_7
    move v0, v3

    :cond_8
    :goto_6
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->b:Z

    iget-boolean p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->e:Z

    if-eqz p1, :cond_a

    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->e:Z

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->f:Landroidx/collection/MutableObjectList;

    iget p2, p1, Landroidx/collection/ObjectList;->b:I

    move v1, v3

    :goto_7
    if-ge v1, p2, :cond_9

    invoke-virtual {p1, v1}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p0, v4}, Landroidx/compose/ui/input/pointer/HitPathTracker;->d(Landroidx/compose/ui/Modifier$Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->k()V

    :cond_a
    iget-boolean p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->c:Z

    if-eqz p1, :cond_b

    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->c:Z

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->c()V

    :cond_b
    iget-boolean p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    if-eqz p1, :cond_c

    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    iget-object p0, v2, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->j()V

    :cond_c
    return v0
.end method

.method public final c()V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->c:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->g:Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object v2, v0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v3, v4

    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/Node;->c()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    return-void

    :cond_2
    iget-object p0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->j()V

    return-void
.end method

.method public final d(Landroidx/compose/ui/Modifier$Node;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->e:Z

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->f:Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->g:Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->b:Landroidx/collection/MutableObjectList;

    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->k()V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->e()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v0, Landroidx/collection/ObjectList;->b:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/pointer/NodeParent;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget v4, v3, Landroidx/compose/runtime/collection/MutableVector;->d:I

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    iget-object v4, v3, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/Node;->c()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
