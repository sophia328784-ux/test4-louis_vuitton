.class public final Landroidx/compose/runtime/SnapshotFlowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/runtime/SnapshotFlowManager;",
        "",
        "<init>",
        "()V",
        "runtime"
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
.field public a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    invoke-direct {v0}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Called runAndWatch on a manager that has been disposed of"

    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v2, v0, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    instance-of v3, v2, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    if-eqz v3, :cond_7

    check-cast v2, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    iget-object v3, v2, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    invoke-direct {v3}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;-><init>()V

    iget-object v4, v2, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second"

    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v5, v2, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    iget-object v6, v3, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    iget-object v5, v2, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->b:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    invoke-direct {v7, v5, v4}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2
    iget-object v7, v5, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v5, v5, Landroidx/collection/ScatterSet;->a:[J

    array-length v8, v5

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_6

    const/4 v10, 0x0

    :goto_2
    aget-wide v11, v5, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_5

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_4

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v9, v7, v16

    move/from16 v16, v14

    new-instance v14, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    invoke-direct {v14, v9, v4}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    move/from16 v16, v14

    :goto_4
    shr-long v11, v11, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_3

    :cond_4
    move v9, v14

    if-ne v13, v9, :cond_6

    :cond_5
    if-eq v10, v8, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    invoke-virtual {v3}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b()V

    invoke-virtual {v2}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c()V

    iput-object v3, v0, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    :cond_7
    iget-object v0, v0, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->d(Lkotlinx/coroutines/channels/SendChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->u(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a(Lkotlinx/coroutines/channels/SendChannel;)V

    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->b()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V

    throw v0
.end method
