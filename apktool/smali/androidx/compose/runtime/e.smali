.class public final synthetic Landroidx/compose/runtime/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/SnapshotFlowManagerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/SnapshotFlowManagerImpl;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/runtime/e;->b:I

    iput-object p1, p0, Landroidx/compose/runtime/e;->c:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/e;->b:I

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/compose/runtime/e;->c:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    check-cast v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Set;

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object v11, v0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v12, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    if-nez v12, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    iget-object v13, v12, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v12, v12, Landroidx/collection/ScatterSet;->a:[J

    array-length v14, v12

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_5

    move v15, v8

    const-wide/16 v16, 0x80

    :goto_0
    aget-wide v2, v12, v15

    const-wide/16 v18, 0xff

    not-long v4, v2

    shl-long/2addr v4, v6

    and-long/2addr v4, v2

    and-long/2addr v4, v9

    cmp-long v4, v4, v9

    if-eqz v4, :cond_4

    sub-int v4, v15, v14

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_3

    and-long v20, v2, v18

    cmp-long v20, v20, v16

    if-gez v20, :cond_1

    shl-int/lit8 v20, v15, 0x3

    add-int v20, v20, v5

    move/from16 v21, v6

    aget-object v6, v13, v20

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    move/from16 v21, v6

    :cond_2
    shr-long/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v21

    goto :goto_1

    :cond_3
    move/from16 v21, v6

    if-ne v4, v7, :cond_5

    goto :goto_2

    :cond_4
    move/from16 v21, v6

    :goto_2
    if-eq v15, v14, :cond_5

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v21

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_3
    monitor-exit v11

    if-eqz v0, :cond_6

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->b:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_4
    monitor-exit v11

    throw v0

    :pswitch_0
    move/from16 v21, v6

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    iget-object v0, v0, Landroidx/compose/runtime/e;->c:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Set;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    iget-object v2, v0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b:Landroidx/collection/MutableScatterMap;

    new-instance v4, Landroidx/compose/runtime/d;

    invoke-direct {v4, v1, v0}, Landroidx/compose/runtime/d;-><init>(Ljava/util/Set;Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;)V

    const/4 v1, 0x1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    iget-object v1, v3, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/ScatterMap;->a:[J

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_a

    move v6, v8

    :goto_5
    aget-wide v11, v3, v6

    not-long v13, v11

    shl-long v13, v13, v21

    and-long/2addr v13, v11

    and-long/2addr v13, v9

    cmp-long v13, v13, v9

    if-eqz v13, :cond_9

    sub-int v13, v6, v5

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    move v14, v8

    :goto_6
    if-ge v14, v13, :cond_8

    and-long v22, v11, v18

    cmp-long v15, v22, v16

    if-gez v15, :cond_7

    shl-int/lit8 v15, v6, 0x3

    add-int/2addr v15, v14

    aget-object v15, v1, v15

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    shr-long/2addr v11, v7

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_8
    if-ne v13, v7, :cond_a

    :cond_9
    if-eq v6, v5, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iget-object v1, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_e

    move v5, v8

    :goto_7
    aget-wide v11, v1, v5

    not-long v13, v11

    shl-long v13, v13, v21

    and-long/2addr v13, v11

    and-long/2addr v13, v9

    cmp-long v6, v13, v9

    if-eqz v6, :cond_d

    sub-int v6, v5, v4

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    move v13, v8

    :goto_8
    if-ge v13, v6, :cond_c

    and-long v14, v11, v18

    cmp-long v14, v14, v16

    if-gez v14, :cond_b

    shl-int/lit8 v14, v5, 0x3

    add-int/2addr v14, v13

    aget-object v14, v3, v14

    check-cast v14, Lkotlinx/coroutines/channels/SendChannel;

    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v14, v15}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_b
    :goto_9
    shr-long/2addr v11, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_c
    if-ne v6, v7, :cond_e

    :cond_d
    if-eq v5, v4, :cond_e

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_a
    monitor-exit v2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
