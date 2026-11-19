.class public final Landroidx/compose/ui/spatial/RectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B!\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/spatial/RectManager;",
        "",
        "Landroidx/collection/IntObjectMap;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "layoutNodes",
        "Landroidx/compose/ui/spatial/ExecuteDelayed;",
        "executeDelayed",
        "<init>",
        "(Landroidx/collection/IntObjectMap;Landroidx/compose/ui/spatial/ExecuteDelayed;)V",
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
.field public final a:Landroidx/compose/ui/spatial/ExecuteDelayed;

.field public final b:Landroidx/compose/ui/spatial/RectList;

.field public final c:Landroidx/compose/ui/spatial/ThrottledCallbacks;

.field public final d:Landroidx/collection/MutableObjectList;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/Object;

.field public i:J

.field public final j:Lkotlin/jvm/functions/Function0;

.field public final k:Landroidx/compose/ui/geometry/MutableRect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/compose/ui/spatial/RectManager;-><init>(Landroidx/collection/IntObjectMap;Landroidx/compose/ui/spatial/ExecuteDelayed;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/collection/IntObjectMap;Landroidx/compose/ui/spatial/ExecuteDelayed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/IntObjectMap<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;",
            "Landroidx/compose/ui/spatial/ExecuteDelayed;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/spatial/RectManager;->a:Landroidx/compose/ui/spatial/ExecuteDelayed;

    new-instance p1, Landroidx/compose/ui/spatial/RectList;

    invoke-direct {p1}, Landroidx/compose/ui/spatial/RectList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    new-instance p1, Landroidx/compose/ui/spatial/ThrottledCallbacks;

    invoke-direct {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    new-instance p1, Landroidx/collection/MutableObjectList;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/collection/MutableObjectList;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/compose/ui/spatial/RectManager;->i:J

    new-instance p1, Landroidx/compose/ui/spatial/RectManager$dispatchLambda$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/spatial/RectManager$dispatchLambda$1;-><init>(Landroidx/compose/ui/spatial/RectManager;)V

    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->j:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/ui/geometry/MutableRect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroidx/compose/ui/geometry/MutableRect;-><init>(FFFF)V

    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->k:Landroidx/compose/ui/geometry/MutableRect;

    return-void
.end method

.method public constructor <init>(Landroidx/collection/IntObjectMap;Landroidx/compose/ui/spatial/ExecuteDelayed;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 50
    sget-object p1, Landroidx/collection/IntObjectMapKt;->a:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 51
    sget-object p2, Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;->b:Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;

    .line 52
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/spatial/RectManager;-><init>(Landroidx/collection/IntObjectMap;Landroidx/compose/ui/spatial/ExecuteDelayed;)V

    return-void
.end method

.method public static d(Landroidx/compose/ui/node/LayoutNode;)J
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    const-wide/16 v1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->P:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/unit/IntOffset;->c:J

    return-wide v0

    :cond_0
    iget-wide v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->d(JJ)J

    move-result-wide v1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->u:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static g(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->P:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->d:Z

    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->f:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/spatial/RectManager;->d(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/node/LayoutNode;->e:J

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->f:Z

    :cond_1
    iget-wide v1, p0, Landroidx/compose/ui/node/LayoutNode;->e:J

    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/unit/IntOffset;->c:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->d:I

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, v1, v0

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManager;->g(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->h:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->a:Landroidx/compose/ui/spatial/ExecuteDelayed;

    invoke-interface {v2, v1}, Landroidx/compose/ui/spatial/ExecuteDelayed;->j(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->h:Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->e:Z

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_2

    iget-boolean v3, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v11, v12

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v2

    :goto_1
    const-wide/16 v15, 0x0

    iget-object v3, v0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    move v4, v2

    iget-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    if-eqz v1, :cond_f

    iput-boolean v12, v0, Landroidx/compose/ui/spatial/RectManager;->e:Z

    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/collection/MutableObjectList;

    iget-object v5, v1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v1, v1, Landroidx/collection/ObjectList;->b:I

    move v6, v12

    :goto_2
    if-ge v6, v1, :cond_3

    aget-object v7, v5, v6

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, v3, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v5, v3, Landroidx/compose/ui/spatial/RectList;->c:I

    move v6, v12

    :goto_3
    array-length v7, v1

    add-int/lit8 v7, v7, -0x2

    if-ge v6, v7, :cond_e

    if-ge v6, v5, :cond_e

    add-int/lit8 v7, v6, 0x2

    move v10, v4

    move/from16 v17, v5

    aget-wide v4, v1, v7

    const/16 v7, 0x3c

    move/from16 v19, v10

    move/from16 v18, v11

    shr-long v10, v4, v7

    long-to-int v7, v10

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_d

    aget-wide v10, v1, v6

    add-int/lit8 v7, v6, 0x1

    aget-wide v12, v1, v7

    long-to-int v4, v4

    const v5, 0x1ffffff

    and-int/2addr v4, v5

    iget-object v5, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v5, v4}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    :goto_4
    if-eqz v4, :cond_d

    iget-object v5, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->f:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-object v14, v5

    move v7, v6

    iget-wide v5, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->i:J

    move-wide/from16 v20, v5

    iget-wide v5, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->b:J

    move-wide/from16 v22, v5

    iget-wide v5, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->c:J

    sub-long v24, v8, v20

    cmp-long v24, v24, v22

    if-gez v24, :cond_5

    const-wide/high16 v24, -0x8000000000000000L

    cmp-long v20, v20, v24

    if-nez v20, :cond_4

    goto :goto_5

    :cond_4
    const/16 v20, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    move/from16 v20, v19

    :goto_6
    cmp-long v21, v5, v15

    if-nez v21, :cond_6

    move/from16 v21, v19

    goto :goto_7

    :cond_6
    const/16 v21, 0x0

    :goto_7
    cmp-long v22, v22, v15

    if-nez v22, :cond_7

    move/from16 v22, v19

    goto :goto_8

    :cond_7
    const/16 v22, 0x0

    :goto_8
    iput-wide v10, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->g:J

    iput-wide v12, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->h:J

    if-nez v21, :cond_8

    if-eqz v22, :cond_9

    :cond_8
    if-eqz v21, :cond_a

    :cond_9
    move/from16 v22, v19

    goto :goto_9

    :cond_a
    const/16 v22, 0x0

    :goto_9
    if-eqz v20, :cond_b

    if-eqz v22, :cond_b

    move-wide/from16 v23, v12

    const-wide/16 v12, -0x1

    iput-wide v12, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->j:J

    iput-wide v8, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->i:J

    iget-wide v5, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->d:J

    iget-wide v12, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->e:J

    move-wide/from16 v30, v15

    iget-object v15, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->g:[F

    move-object/from16 v20, v4

    move-wide/from16 v25, v5

    move-wide/from16 v21, v10

    move-wide/from16 v27, v12

    move-object/from16 v29, v15

    invoke-virtual/range {v20 .. v29}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->a(JJJJ[F)V

    goto :goto_a

    :cond_b
    move-wide/from16 v23, v12

    move-wide/from16 v30, v15

    if-nez v21, :cond_c

    iput-wide v8, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->j:J

    iget-wide v12, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    add-long/2addr v5, v8

    cmp-long v4, v12, v30

    if-lez v4, :cond_c

    cmp-long v4, v5, v12

    if-gez v4, :cond_c

    iput-wide v12, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    :cond_c
    :goto_a
    move v6, v7

    move-object v4, v14

    move-wide/from16 v12, v23

    move-wide/from16 v15, v30

    goto/16 :goto_4

    :cond_d
    move v7, v6

    move-wide/from16 v30, v15

    add-int/lit8 v6, v7, 0x3

    move/from16 v5, v17

    move/from16 v11, v18

    move/from16 v4, v19

    move-wide/from16 v15, v30

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_e
    move/from16 v18, v11

    move-wide/from16 v30, v15

    iget-object v1, v3, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v4, v3, Landroidx/compose/ui/spatial/RectList;->c:I

    const/4 v5, 0x0

    :goto_b
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ge v5, v6, :cond_10

    if-ge v5, v4, :cond_10

    add-int/lit8 v6, v5, 0x2

    aget-wide v10, v1, v6

    const-wide v12, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v10, v12

    aput-wide v10, v1, v6

    add-int/lit8 v5, v5, 0x3

    goto :goto_b

    :cond_f
    move/from16 v18, v11

    move-wide/from16 v30, v15

    :cond_10
    iget-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    const/16 v16, 0x7

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    iget-wide v4, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->d:J

    iget-wide v6, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->e:J

    move-wide v9, v8

    iget-object v8, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->g:[F

    iget-object v1, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    const-wide/16 v21, 0x80

    iget-object v12, v1, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/IntObjectMap;->a:[J

    array-length v13, v1

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_14

    move-object/from16 v17, v12

    const/4 v14, 0x0

    const-wide/16 v23, 0xff

    :goto_c
    const/16 v15, 0x8

    aget-wide v11, v1, v14

    move-object/from16 v26, v1

    move-object/from16 v25, v2

    not-long v1, v11

    shl-long v1, v1, v16

    and-long/2addr v1, v11

    and-long v1, v1, v19

    cmp-long v1, v1, v19

    if-eqz v1, :cond_13

    sub-int v1, v14, v13

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v1, v1, 0x8

    move-wide/from16 v27, v11

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v1, :cond_12

    and-long v32, v27, v23

    cmp-long v2, v32, v21

    if-gez v2, :cond_11

    shl-int/lit8 v2, v14, 0x3

    add-int/2addr v2, v11

    aget-object v2, v17, v2

    check-cast v2, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    :goto_e
    if-eqz v2, :cond_11

    move-object v12, v3

    move-object v3, v2

    move-object/from16 v2, v25

    invoke-virtual/range {v2 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    iget-object v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->f:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-object v2, v3

    move-object v3, v12

    goto :goto_e

    :cond_11
    move-object v12, v3

    move-object/from16 v2, v25

    shr-long v27, v27, v15

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v25, v2

    move-object v3, v12

    goto :goto_d

    :cond_12
    move-object v12, v3

    move-object/from16 v2, v25

    if-ne v1, v15, :cond_16

    goto :goto_f

    :cond_13
    move-object v12, v3

    move-object/from16 v2, v25

    :goto_f
    if-eq v14, v13, :cond_16

    add-int/lit8 v14, v14, 0x1

    move-object v3, v12

    move-object/from16 v1, v26

    goto :goto_c

    :cond_14
    move-object v12, v3

    goto :goto_10

    :cond_15
    move-object v12, v3

    move-wide v9, v8

    const-wide/16 v21, 0x80

    :goto_10
    const-wide/16 v23, 0xff

    :cond_16
    if-eqz v18, :cond_17

    iget-wide v4, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->d:J

    iget-wide v6, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->e:J

    iget-object v8, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->g:[F

    iget-object v1, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    if-eqz v1, :cond_17

    move-object v3, v1

    :goto_11
    if-eqz v3, :cond_17

    iget-object v1, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/compose/ui/spatial/RectManager;->b(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v13

    iput-wide v13, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->g:J

    sget-object v11, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    move-object/from16 v17, v12

    const/16 v18, 0x20

    shr-long v11, v13, v18

    long-to-int v11, v11

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget v12, v1, Landroidx/compose/ui/layout/Placeable;->b:I

    add-int/2addr v12, v11

    const-wide v25, 0xffffffffL

    and-long v13, v13, v25

    long-to-int v11, v13

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->c:I

    add-int/2addr v1, v11

    int-to-long v11, v12

    shl-long v11, v11, v18

    int-to-long v13, v1

    and-long v13, v13, v25

    or-long/2addr v11, v13

    iput-wide v11, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->h:J

    invoke-virtual/range {v2 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    move-object v1, v2

    iget-object v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->f:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move-object/from16 v12, v17

    goto :goto_11

    :cond_17
    move-object v1, v2

    move-object/from16 v17, v12

    iget-boolean v2, v0, Landroidx/compose/ui/spatial/RectManager;->g:Z

    const/4 v12, 0x0

    if-eqz v2, :cond_1a

    iput-boolean v12, v0, Landroidx/compose/ui/spatial/RectManager;->g:Z

    move-object/from16 v2, v17

    iget-object v3, v2, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v4, v2, Landroidx/compose/ui/spatial/RectList;->c:I

    iget-object v5, v2, Landroidx/compose/ui/spatial/RectList;->b:[J

    move v6, v12

    move v7, v6

    :goto_12
    array-length v8, v3

    add-int/lit8 v8, v8, -0x2

    if-ge v6, v8, :cond_19

    array-length v8, v5

    add-int/lit8 v8, v8, -0x2

    if-ge v7, v8, :cond_19

    if-ge v6, v4, :cond_19

    add-int/lit8 v8, v6, 0x2

    aget-wide v13, v3, v8

    sget-wide v17, Landroidx/compose/ui/spatial/RectListKt;->c:J

    cmp-long v11, v13, v17

    if-eqz v11, :cond_18

    aget-wide v13, v3, v6

    aput-wide v13, v5, v7

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v3, v13

    aput-wide v13, v5, v11

    add-int/lit8 v11, v7, 0x2

    aget-wide v13, v3, v8

    aput-wide v13, v5, v11

    add-int/lit8 v7, v7, 0x3

    :cond_18
    add-int/lit8 v6, v6, 0x3

    goto :goto_12

    :cond_19
    iput v7, v2, Landroidx/compose/ui/spatial/RectList;->c:I

    iput-object v5, v2, Landroidx/compose/ui/spatial/RectList;->a:[J

    iput-object v3, v2, Landroidx/compose/ui/spatial/RectList;->b:[J

    :cond_1a
    iget-wide v2, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    cmp-long v2, v2, v9

    if-lez v2, :cond_1b

    goto/16 :goto_1a

    :cond_1b
    iget-wide v3, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->d:J

    iget-wide v5, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->e:J

    iget-object v7, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->g:[F

    iget-object v2, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    iget-object v13, v2, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    iget-object v14, v2, Landroidx/collection/IntObjectMap;->a:[J

    array-length v2, v14

    add-int/lit8 v2, v2, -0x2

    const-wide v17, 0x7fffffffffffffffL

    if-ltz v2, :cond_20

    move v8, v12

    move-object/from16 v27, v13

    move-wide/from16 v25, v17

    :goto_13
    aget-wide v12, v14, v8

    move-wide/from16 v28, v3

    move v4, v2

    not-long v2, v12

    shl-long v2, v2, v16

    and-long/2addr v2, v12

    and-long v2, v2, v19

    cmp-long v2, v2, v19

    if-eqz v2, :cond_1e

    sub-int v2, v8, v4

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v2, v2, 0x8

    move-wide/from16 v32, v25

    move-wide/from16 v25, v12

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v2, :cond_1d

    and-long v34, v25, v23

    cmp-long v3, v34, v21

    if-gez v3, :cond_1c

    shl-int/lit8 v3, v8, 0x3

    add-int/2addr v3, v12

    aget-object v3, v27, v3

    check-cast v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    :goto_15
    if-eqz v3, :cond_1c

    move v0, v2

    move-object v2, v3

    move v13, v4

    move-wide/from16 v3, v28

    move/from16 v28, v12

    move v12, v15

    move v15, v8

    move-wide v8, v9

    move-wide/from16 v10, v32

    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJJ)J

    move-result-wide v32

    move-wide v9, v8

    iget-object v2, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->f:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    move v8, v15

    move v15, v12

    move/from16 v12, v28

    move-wide/from16 v28, v3

    move v4, v13

    move-object v3, v2

    move v2, v0

    move-object/from16 v0, p0

    goto :goto_15

    :cond_1c
    move v0, v2

    move v13, v4

    move-wide/from16 v3, v28

    move/from16 v28, v12

    move v12, v15

    move v15, v8

    shr-long v25, v25, v12

    add-int/lit8 v2, v28, 0x1

    move-wide/from16 v28, v3

    move v4, v13

    move v8, v15

    move v15, v12

    move v12, v2

    move v2, v0

    move-object/from16 v0, p0

    goto :goto_14

    :cond_1d
    move v0, v2

    move v13, v4

    move v12, v15

    move-wide/from16 v3, v28

    move v15, v8

    if-ne v0, v12, :cond_21

    move-wide/from16 v25, v32

    goto :goto_16

    :cond_1e
    move v13, v4

    move v15, v8

    move-wide/from16 v3, v28

    const/16 v12, 0x8

    :goto_16
    if-eq v15, v13, :cond_1f

    add-int/lit8 v8, v15, 0x1

    move-object/from16 v0, p0

    move v2, v13

    goto :goto_13

    :cond_1f
    move-wide/from16 v32, v25

    goto :goto_17

    :cond_20
    move-wide/from16 v32, v17

    :cond_21
    :goto_17
    iget-object v0, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    if-eqz v0, :cond_22

    move-object v2, v0

    :goto_18
    if-eqz v2, :cond_22

    move-wide v8, v9

    move-wide/from16 v10, v32

    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJJ)J

    move-result-wide v32

    move-wide v9, v8

    iget-object v2, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->f:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    goto :goto_18

    :cond_22
    cmp-long v0, v32, v17

    if-nez v0, :cond_23

    const-wide/16 v13, -0x1

    goto :goto_19

    :cond_23
    move-wide/from16 v13, v32

    :goto_19
    iput-wide v13, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    :goto_1a
    iget-wide v0, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    cmp-long v0, v0, v30

    if-lez v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/spatial/RectManager;->h()V

    :cond_24
    return-void
.end method

.method public final b(Landroidx/compose/ui/node/LayoutNode;)J
    .locals 8

    iget p1, p1, Landroidx/compose/ui/node/LayoutNode;->c:I

    const v0, 0x1ffffff

    and-int/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    iget-object v1, p0, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget p0, p0, Landroidx/compose/ui/spatial/RectList;->c:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    const-wide v4, 0x7fffffffffffffffL

    if-ge v2, v3, :cond_1

    if-ge v2, p0, :cond_1

    add-int/lit8 v3, v2, 0x2

    aget-wide v6, v1, v3

    long-to-int v3, v6

    and-int/2addr v3, v0

    if-ne v3, p1, :cond_0

    aget-wide p0, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    move-wide p0, v4

    :goto_1
    cmp-long v0, p0, v4

    if-nez v0, :cond_2

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Landroidx/compose/ui/unit/IntOffset;->c:J

    return-wide p0

    :cond_2
    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    long-to-int p0, p0

    int-to-long v1, v1

    shl-long v0, v1, v0

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    return-wide p0
.end method

.method public final c(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->d:Z

    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    iget-object v4, v3, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v5, v1, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->m0()I

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->l0()I

    move-result v5

    int-to-float v6, v6

    int-to-float v5, v5

    iget-object v7, v0, Landroidx/compose/ui/spatial/RectManager;->k:Landroidx/compose/ui/geometry/MutableRect;

    const/4 v8, 0x0

    iput v8, v7, Landroidx/compose/ui/geometry/MutableRect;->a:F

    iput v8, v7, Landroidx/compose/ui/geometry/MutableRect;->b:F

    iput v6, v7, Landroidx/compose/ui/geometry/MutableRect;->c:F

    iput v5, v7, Landroidx/compose/ui/geometry/MutableRect;->d:F

    :goto_0
    const-wide v5, 0xffffffffL

    const/16 v8, 0x20

    if-eqz v4, :cond_2

    iget-object v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->q:Landroidx/compose/ui/node/LayoutNode;

    iget-object v10, v9, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    iget-object v10, v10, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    if-ne v4, v10, :cond_0

    iget-boolean v10, v9, Landroidx/compose/ui/node/LayoutNode;->d:Z

    if-nez v10, :cond_0

    invoke-virtual {v0, v9}, Landroidx/compose/ui/spatial/RectManager;->b(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v9

    sget-object v11, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/unit/IntOffset;->c:J

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)Z

    move-result v11

    if-nez v11, :cond_0

    shr-long v11, v9, v8

    long-to-int v4, v11

    int-to-float v4, v4

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-float v9, v9

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v12, v4

    shl-long v9, v10, v8

    and-long v11, v12, v5

    or-long/2addr v9, v11

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v7, v9, v10}, Landroidx/compose/ui/geometry/MutableRect;->c(J)V

    goto :goto_1

    :cond_0
    iget-object v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->P:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v9, v7}, Landroidx/compose/ui/graphics/Matrix;->c([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_1
    iget-wide v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->D:J

    sget-object v11, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long v11, v9, v8

    long-to-int v11, v11

    int-to-float v11, v11

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-float v9, v9

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v12, v9

    shl-long v8, v10, v8

    and-long/2addr v5, v12

    or-long/2addr v5, v8

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/geometry/MutableRect;->c(J)V

    iget-object v4, v4, Landroidx/compose/ui/node/NodeCoordinator;->u:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_2
    :goto_1
    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->a:F

    float-to-int v11, v4

    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->b:F

    float-to-int v12, v4

    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->c:F

    float-to-int v13, v4

    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->d:F

    float-to-int v14, v4

    iget v10, v1, Landroidx/compose/ui/node/LayoutNode;->c:I

    iget-boolean v4, v1, Landroidx/compose/ui/node/LayoutNode;->h:Z

    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->h:Z

    if-eqz v4, :cond_4

    const v4, 0x1ffffff

    and-int v9, v10, v4

    iget-object v15, v0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    move/from16 v16, v4

    iget-object v4, v15, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v15, v15, Landroidx/compose/ui/spatial/RectList;->c:I

    move-wide/from16 v17, v5

    const/4 v5, 0x0

    :goto_2
    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ge v5, v6, :cond_4

    if-ge v5, v15, :cond_4

    add-int/lit8 v6, v5, 0x2

    move/from16 v19, v8

    aget-wide v7, v4, v6

    move/from16 v20, v2

    long-to-int v2, v7

    and-int v2, v2, v16

    if-ne v2, v9, :cond_3

    int-to-long v2, v11

    shl-long v2, v2, v19

    int-to-long v9, v12

    and-long v9, v9, v17

    or-long/2addr v2, v9

    aput-wide v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v2, v13

    shl-long v2, v2, v19

    int-to-long v9, v14

    and-long v9, v9, v17

    or-long/2addr v2, v9

    aput-wide v2, v4, v5

    const/16 v2, 0x3f

    shr-long v2, v7, v2

    const-wide/16 v9, 0x1

    and-long/2addr v2, v9

    const/16 v5, 0x3c

    shl-long/2addr v2, v5

    or-long/2addr v2, v7

    aput-wide v2, v4, v6

    :goto_3
    const/4 v2, 0x0

    goto :goto_6

    :cond_3
    add-int/lit8 v5, v5, 0x3

    move/from16 v8, v19

    move/from16 v2, v20

    goto :goto_2

    :cond_4
    move/from16 v20, v2

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->O()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v2, v2, Landroidx/compose/ui/node/LayoutNode;->c:I

    :goto_4
    move v15, v2

    goto :goto_5

    :cond_5
    const/4 v2, -0x1

    goto :goto_4

    :goto_5
    const/16 v2, 0x400

    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    move-result v16

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    move-result v17

    iget-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    iget-object v2, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2, v10}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result v18

    const/16 v19, 0x200

    iget-object v9, v0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    invoke-static/range {v9 .. v19}, Landroidx/compose/ui/spatial/RectList;->b(Landroidx/compose/ui/spatial/RectList;IIIIIIZZZI)V

    goto :goto_3

    :goto_6
    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->g:Z

    move/from16 v3, v20

    iput-boolean v3, v0, Landroidx/compose/ui/spatial/RectManager;->e:Z

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->d:I

    move v7, v2

    :goto_7
    if-ge v7, v1, :cond_7

    aget-object v2, v3, v7

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v2}, Landroidx/compose/ui/spatial/RectManager;->c(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method public final e(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->A()Z

    move-result v2

    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    if-eqz v2, :cond_13

    iget-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->g:Z

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->O()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-boolean v5, v2, Landroidx/compose/ui/node/LayoutNode;->d:Z

    if-nez v5, :cond_2

    iget-boolean v5, v2, Landroidx/compose/ui/node/LayoutNode;->f:Z

    if-eqz v5, :cond_1

    iput-boolean v4, v2, Landroidx/compose/ui/node/LayoutNode;->f:Z

    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManager;->d(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/compose/ui/node/LayoutNode;->e:J

    :cond_1
    iget-wide v5, v2, Landroidx/compose/ui/node/LayoutNode;->e:J

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_3
    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Landroidx/compose/ui/unit/IntOffset;->c:J

    :goto_0
    iget-object v7, v3, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    sget-object v8, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/unit/IntOffset;->c:J

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, v7, Landroidx/compose/ui/node/NodeCoordinator;->P:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-boolean v8, v1, Landroidx/compose/ui/node/LayoutNode;->d:Z

    if-nez v8, :cond_11

    iget-wide v7, v7, Landroidx/compose/ui/node/NodeCoordinator;->D:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->d(JJ)J

    move-result-wide v5

    iget-object v7, v1, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v7}, Landroidx/compose/ui/node/MeasurePassDelegate;->m0()I

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/ui/node/MeasurePassDelegate;->l0()I

    move-result v7

    iget v11, v1, Landroidx/compose/ui/node/LayoutNode;->c:I

    iget-boolean v10, v1, Landroidx/compose/ui/node/LayoutNode;->h:Z

    const/16 v15, 0x20

    if-eqz v10, :cond_e

    const-wide/16 v16, 0x1

    const/16 v18, 0x3f

    const/16 v19, 0x19

    iget-object v3, v0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    if-eqz v2, :cond_a

    iget v2, v2, Landroidx/compose/ui/node/LayoutNode;->c:I

    const v20, 0x1ffffff

    const-wide v21, 0xffffffffL

    shr-long v12, v5, v15

    long-to-int v12, v12

    and-long v5, v5, v21

    long-to-int v5, v5

    and-int v6, v11, v20

    iget-object v11, v3, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v13, v3, Landroidx/compose/ui/spatial/RectList;->c:I

    move v14, v4

    const/16 v23, 0x3c

    :goto_1
    array-length v10, v11

    add-int/lit8 v10, v10, -0x2

    if-ge v14, v10, :cond_9

    if-ge v14, v13, :cond_9

    add-int/lit8 v10, v14, 0x2

    move/from16 v24, v5

    aget-wide v4, v11, v10

    long-to-int v4, v4

    and-int v4, v4, v20

    if-ne v4, v2, :cond_8

    aget-wide v4, v11, v14

    shr-long v9, v4, v15

    long-to-int v9, v9

    long-to-int v4, v4

    add-int/2addr v9, v12

    add-int v4, v4, v24

    add-int v5, v9, v8

    add-int v10, v4, v7

    add-int/lit8 v14, v14, 0x3

    move/from16 v25, v15

    :goto_2
    array-length v15, v11

    add-int/lit8 v15, v15, -0x2

    if-ge v14, v15, :cond_7

    if-ge v14, v13, :cond_7

    add-int/lit8 v15, v14, 0x2

    move/from16 v27, v7

    move/from16 v26, v8

    aget-wide v7, v11, v15

    move/from16 v28, v2

    long-to-int v2, v7

    and-int v2, v2, v20

    if-ne v2, v6, :cond_6

    aget-wide v12, v11, v14

    move-wide/from16 v29, v7

    shr-long v6, v12, v25

    long-to-int v2, v6

    long-to-int v6, v12

    sub-int v2, v9, v2

    sub-int v6, v4, v6

    int-to-long v7, v9

    shl-long v7, v7, v25

    int-to-long v12, v4

    and-long v12, v12, v21

    or-long/2addr v7, v12

    aput-wide v7, v11, v14

    add-int/lit8 v4, v14, 0x1

    int-to-long v7, v5

    shl-long v7, v7, v25

    int-to-long v9, v10

    and-long v9, v9, v21

    or-long/2addr v7, v9

    aput-wide v7, v11, v4

    shr-long v4, v29, v18

    and-long v4, v4, v16

    shl-long v4, v4, v23

    or-long v4, v29, v4

    aput-wide v4, v11, v15

    if-nez v2, :cond_5

    if-eqz v6, :cond_9

    :cond_5
    add-int/lit8 v14, v14, 0x3

    sget-wide v4, Landroidx/compose/ui/spatial/RectListKt;->b:J

    and-long v4, v29, v4

    and-int v7, v14, v20

    int-to-long v7, v7

    shl-long v7, v7, v19

    or-long/2addr v4, v7

    invoke-virtual {v3, v2, v6, v4, v5}, Landroidx/compose/ui/spatial/RectList;->d(IIJ)V

    goto :goto_4

    :cond_6
    add-int/lit8 v14, v14, 0x3

    move/from16 v8, v26

    move/from16 v7, v27

    move/from16 v2, v28

    goto :goto_2

    :cond_7
    move/from16 v28, v2

    move/from16 v27, v7

    move/from16 v26, v8

    goto :goto_3

    :cond_8
    move/from16 v28, v2

    move/from16 v27, v7

    move/from16 v26, v8

    move/from16 v25, v15

    :goto_3
    add-int/lit8 v14, v14, 0x3

    move/from16 v5, v24

    move/from16 v15, v25

    move/from16 v8, v26

    move/from16 v7, v27

    move/from16 v2, v28

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_a
    move/from16 v27, v7

    move/from16 v26, v8

    move/from16 v25, v15

    const v20, 0x1ffffff

    const-wide v21, 0xffffffffL

    const/16 v23, 0x3c

    shr-long v7, v5, v25

    long-to-int v2, v7

    and-long v4, v5, v21

    long-to-int v4, v4

    add-int v8, v2, v26

    add-int v7, v4, v27

    and-int v5, v11, v20

    iget-object v6, v3, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v9, v3, Landroidx/compose/ui/spatial/RectList;->c:I

    const/4 v10, 0x0

    :goto_5
    array-length v11, v6

    add-int/lit8 v11, v11, -0x2

    if-ge v10, v11, :cond_9

    if-ge v10, v9, :cond_9

    add-int/lit8 v11, v10, 0x2

    aget-wide v12, v6, v11

    long-to-int v14, v12

    and-int v14, v14, v20

    if-ne v14, v5, :cond_d

    aget-wide v14, v6, v10

    move-object/from16 v24, v6

    int-to-long v5, v2

    shl-long v5, v5, v25

    move-wide/from16 v26, v5

    int-to-long v5, v4

    and-long v5, v5, v21

    or-long v5, v26, v5

    aput-wide v5, v24, v10

    add-int/lit8 v5, v10, 0x1

    int-to-long v8, v8

    shl-long v8, v8, v25

    int-to-long v6, v7

    and-long v6, v6, v21

    or-long/2addr v6, v8

    aput-wide v6, v24, v5

    shr-long v5, v12, v18

    and-long v5, v5, v16

    shl-long v5, v5, v23

    or-long/2addr v5, v12

    aput-wide v5, v24, v11

    shr-long v5, v14, v25

    long-to-int v5, v5

    sub-int/2addr v2, v5

    long-to-int v5, v14

    sub-int/2addr v4, v5

    if-eqz v2, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-eqz v4, :cond_c

    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    add-int/lit8 v10, v10, 0x3

    sget-wide v5, Landroidx/compose/ui/spatial/RectListKt;->b:J

    and-long/2addr v5, v12

    and-int v7, v10, v20

    int-to-long v7, v7

    shl-long v7, v7, v19

    or-long/2addr v5, v7

    invoke-virtual {v3, v2, v4, v5, v6}, Landroidx/compose/ui/spatial/RectList;->d(IIJ)V

    goto :goto_4

    :cond_d
    move-object/from16 v24, v6

    add-int/lit8 v10, v10, 0x3

    goto :goto_5

    :cond_e
    move/from16 v27, v7

    move/from16 v26, v8

    move/from16 v25, v15

    const/4 v4, 0x1

    const v20, 0x1ffffff

    const-wide v21, 0xffffffffL

    iput-boolean v4, v1, Landroidx/compose/ui/node/LayoutNode;->h:Z

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    move-result v17

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    move-result v18

    iget-object v3, v0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    iget-object v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v3, v11}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result v19

    iget-object v10, v0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    if-eqz v2, :cond_10

    iget v2, v2, Landroidx/compose/ui/node/LayoutNode;->c:I

    shr-long v3, v5, v25

    long-to-int v3, v3

    and-long v4, v5, v21

    long-to-int v4, v4

    and-int v29, v11, v20

    iget-object v5, v10, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v6, v10, Landroidx/compose/ui/spatial/RectList;->c:I

    add-int/lit8 v6, v6, -0x3

    move/from16 v38, v6

    :goto_8
    if-ltz v38, :cond_9

    add-int/lit8 v6, v38, 0x2

    aget-wide v6, v5, v6

    long-to-int v6, v6

    and-int v6, v6, v20

    if-ne v6, v2, :cond_f

    aget-wide v5, v5, v38

    shr-long v7, v5, v25

    long-to-int v7, v7

    long-to-int v5, v5

    add-int v30, v7, v3

    add-int v31, v5, v4

    add-int v32, v30, v26

    add-int v33, v31, v27

    move/from16 v34, v2

    move-object/from16 v28, v10

    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v37, v19

    invoke-virtual/range {v28 .. v38}, Landroidx/compose/ui/spatial/RectList;->a(IIIIIIZZZI)V

    goto/16 :goto_4

    :cond_f
    move/from16 v34, v2

    move-object/from16 v28, v10

    add-int/lit8 v38, v38, -0x3

    goto :goto_8

    :cond_10
    move-object/from16 v28, v10

    shr-long v2, v5, v25

    long-to-int v12, v2

    and-long v2, v5, v21

    long-to-int v13, v2

    add-int v14, v12, v26

    add-int v15, v13, v27

    const/16 v16, 0x0

    const/16 v20, 0x220

    invoke-static/range {v10 .. v20}, Landroidx/compose/ui/spatial/RectList;->b(Landroidx/compose/ui/spatial/RectList;IIIIIIZZZI)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->c(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-static {v1}, Landroidx/compose/ui/spatial/RectManager;->g(Landroidx/compose/ui/node/LayoutNode;)V

    goto/16 :goto_4

    :cond_12
    :goto_9
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->c(Landroidx/compose/ui/node/LayoutNode;)V

    goto/16 :goto_4

    :goto_a
    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->g:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/compose/ui/spatial/RectManager;->e:Z

    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->h()V

    :cond_13
    :goto_b
    return-void
.end method

.method public final f(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 10

    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->h:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/compose/ui/node/LayoutNode;->c:I

    const v1, 0x1ffffff

    and-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/spatial/RectList;

    iget-object v3, v2, Landroidx/compose/ui/spatial/RectList;->a:[J

    iget v2, v2, Landroidx/compose/ui/spatial/RectList;->c:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    if-ge v5, v2, :cond_1

    add-int/lit8 v6, v5, 0x2

    aget-wide v8, v3, v6

    long-to-int v8, v8

    and-int/2addr v8, v1

    if-ne v8, v0, :cond_0

    const-wide/16 v0, -0x1

    aput-wide v0, v3, v5

    add-int/2addr v5, v7

    aput-wide v0, v3, v5

    sget-wide v0, Landroidx/compose/ui/spatial/RectListKt;->c:J

    aput-wide v0, v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v4, p1, Landroidx/compose/ui/node/LayoutNode;->h:Z

    iput-boolean v7, p1, Landroidx/compose/ui/node/LayoutNode;->g:Z

    iput-boolean v7, p0, Landroidx/compose/ui/spatial/RectManager;->e:Z

    iput-boolean v7, p0, Landroidx/compose/ui/spatial/RectManager;->g:Z

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    iget-wide v2, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Landroidx/compose/ui/spatial/RectManager;->i:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/spatial/RectManager;->a:Landroidx/compose/ui/spatial/ExecuteDelayed;

    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Landroidx/compose/ui/spatial/ExecuteDelayed;->j(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    add-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/ui/spatial/RectManager;->i:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v2, v3, v0}, Landroidx/compose/ui/spatial/ExecuteDelayed;->H(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->h:Ljava/lang/Object;

    return-void
.end method
