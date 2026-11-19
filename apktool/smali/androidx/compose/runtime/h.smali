.class public final synthetic Landroidx/compose/runtime/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/Recomposer;

.field public final synthetic c:Landroidx/collection/MutableScatterSet;

.field public final synthetic d:Landroidx/collection/MutableScatterSet;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Landroidx/collection/MutableScatterSet;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Landroidx/collection/MutableScatterSet;

.field public final synthetic j:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/h;->b:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/h;->c:Landroidx/collection/MutableScatterSet;

    iput-object p3, p0, Landroidx/compose/runtime/h;->d:Landroidx/collection/MutableScatterSet;

    iput-object p4, p0, Landroidx/compose/runtime/h;->e:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/h;->f:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/h;->g:Landroidx/collection/MutableScatterSet;

    iput-object p7, p0, Landroidx/compose/runtime/h;->h:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/h;->i:Landroidx/collection/MutableScatterSet;

    iput-object p9, p0, Landroidx/compose/runtime/h;->j:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/h;->b:Landroidx/compose/runtime/Recomposer;

    iget-object v7, v0, Landroidx/compose/runtime/h;->c:Landroidx/collection/MutableScatterSet;

    iget-object v8, v0, Landroidx/compose/runtime/h;->d:Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/compose/runtime/h;->e:Ljava/util/List;

    iget-object v3, v0, Landroidx/compose/runtime/h;->f:Ljava/util/List;

    iget-object v5, v0, Landroidx/compose/runtime/h;->g:Landroidx/collection/MutableScatterSet;

    iget-object v4, v0, Landroidx/compose/runtime/h;->h:Ljava/util/List;

    iget-object v6, v0, Landroidx/compose/runtime/h;->i:Landroidx/collection/MutableScatterSet;

    iget-object v0, v0, Landroidx/compose/runtime/h;->j:Ljava/util/Set;

    move-object/from16 v9, p1

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->E()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_15

    monitor-exit v11

    if-eqz v12, :cond_0

    const-string v11, "Recomposer:animation"

    invoke-static {v11}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v11, v1, Landroidx/compose/runtime/Recomposer;->a:Landroidx/compose/runtime/BroadcastFrameClock;

    iget-object v11, v11, Landroidx/compose/runtime/BroadcastFrameClock;->c:Landroidx/compose/runtime/internal/AwaiterQueue;

    new-instance v12, Landroidx/compose/runtime/a;

    invoke-direct {v12, v9, v10}, Landroidx/compose/runtime/a;-><init>(J)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/internal/AwaiterQueue;->b(Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_0
    :goto_0
    const-string v9, "Recomposer:recompose"

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->R()Z

    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_14

    :try_start_3
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v11, v10, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v10, v10, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v10, :cond_1

    aget-object v14, v11, v13

    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    move-object v15, v2

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_27

    :cond_1
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v9

    invoke-virtual {v7}, Landroidx/collection/MutableScatterSet;->f()V

    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->f()V

    :goto_2
    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_2

    move-object v9, v3

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const/16 v16, 0x2

    goto/16 :goto_1a

    :cond_3
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    instance-of v9, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-eqz v9, :cond_4

    new-instance v13, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v18}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    goto :goto_3

    :cond_4
    new-instance v13, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    const/4 v9, 0x1

    invoke-direct {v13, v0, v11, v9, v12}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_14

    :goto_3
    :try_start_5
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v14, 0x6

    if-nez v0, :cond_7

    :try_start_7
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v15, v12

    :goto_4
    if-ge v15, v0, :cond_5

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v6, v12}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_5
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v0, :cond_6

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/ControlledComposition;

    invoke-interface {v15}, Landroidx/compose/runtime/ControlledComposition;->q()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_6
    :try_start_8
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v24, v13

    goto/16 :goto_18

    :goto_6
    :try_start_9
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/Recomposer;->Q(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;I)V

    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14

    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_26

    :catchall_4
    move-exception v0

    move-object/from16 v24, v13

    goto/16 :goto_19

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v0

    :cond_7
    :goto_8
    invoke-virtual {v5}, Landroidx/collection/ScatterSet;->c()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-wide/16 v17, 0xff

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 p1, 0x7

    if-eqz v0, :cond_d

    :try_start_e
    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterSet;->k(Landroidx/collection/ScatterSet;)V

    iget-object v0, v5, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    const-wide/16 v21, 0x80

    iget-object v15, v5, Landroidx/collection/ScatterSet;->a:[J

    const/16 v16, 0x2

    array-length v10, v15

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_b

    move-object/from16 v23, v15

    const/4 v11, 0x0

    :goto_9
    aget-wide v14, v23, v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object/from16 v24, v13

    const/16 v25, 0x8

    not-long v12, v14

    shl-long v12, v12, p1

    and-long/2addr v12, v14

    and-long v12, v12, v19

    cmp-long v12, v12, v19

    if-eqz v12, :cond_a

    sub-int v12, v11, v10

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v12, :cond_9

    and-long v26, v14, v17

    cmp-long v26, v26, v21

    if-gez v26, :cond_8

    shl-int/lit8 v26, v11, 0x3

    add-int v26, v26, v13

    :try_start_f
    aget-object v26, v0, v26

    check-cast v26, Landroidx/compose/runtime/ControlledComposition;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/ControlledComposition;->e()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    :goto_b
    const/4 v10, 0x6

    goto :goto_d

    :cond_8
    :goto_c
    shr-long v14, v14, v25

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_9
    move/from16 v13, v25

    if-ne v12, v13, :cond_c

    :cond_a
    if-eq v11, v10, :cond_c

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, v24

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 v24, v13

    goto :goto_b

    :cond_b
    move-object/from16 v24, v13

    :cond_c
    :try_start_10
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    goto/16 :goto_18

    :goto_d
    :try_start_11
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/Recomposer;->Q(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;I)V

    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :try_start_12
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :try_start_13
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :goto_e
    :try_start_14
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    goto/16 :goto_7

    :catchall_9
    move-exception v0

    goto/16 :goto_19

    :catchall_a
    move-exception v0

    :try_start_15
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->f()V

    throw v0

    :cond_d
    move-object/from16 v24, v13

    const/16 v16, 0x2

    const-wide/16 v21, 0x80

    :goto_f
    invoke-virtual {v6}, Landroidx/collection/ScatterSet;->c()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-eqz v0, :cond_12

    :try_start_16
    iget-object v0, v6, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v10, v6, Landroidx/collection/ScatterSet;->a:[J

    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_11

    const/4 v12, 0x0

    :goto_10
    aget-wide v13, v10, v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    move-object v15, v2

    move-object/from16 v23, v3

    not-long v2, v13

    shl-long v2, v2, p1

    and-long/2addr v2, v13

    and-long v2, v2, v19

    cmp-long v2, v2, v19

    if-eqz v2, :cond_10

    sub-int v2, v12, v11

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_f

    and-long v26, v13, v17

    cmp-long v16, v26, v21

    if-gez v16, :cond_e

    shl-int/lit8 v16, v12, 0x3

    add-int v16, v16, v3

    :try_start_17
    aget-object v16, v0, v16

    check-cast v16, Landroidx/compose/runtime/ControlledComposition;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/ControlledComposition;->x()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :cond_e
    move-object/from16 v26, v0

    const/16 v0, 0x8

    goto :goto_13

    :catchall_b
    move-exception v0

    :goto_12
    const/4 v10, 0x6

    goto :goto_15

    :goto_13
    shr-long/2addr v13, v0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v26

    goto :goto_11

    :cond_f
    move-object/from16 v26, v0

    const/16 v0, 0x8

    if-ne v2, v0, :cond_11

    goto :goto_14

    :cond_10
    move-object/from16 v26, v0

    const/16 v0, 0x8

    :goto_14
    if-eq v12, v11, :cond_11

    add-int/lit8 v12, v12, 0x1

    move-object v2, v15

    move-object/from16 v3, v23

    move-object/from16 v0, v26

    goto :goto_10

    :catchall_c
    move-exception v0

    move-object v15, v2

    move-object/from16 v23, v3

    goto :goto_12

    :cond_11
    :try_start_18
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    goto :goto_16

    :goto_15
    :try_start_19
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/Recomposer;->Q(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;I)V

    move-object v2, v15

    move-object/from16 v3, v23

    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :try_start_1a
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto/16 :goto_e

    :catchall_d
    move-exception v0

    :try_start_1c
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->f()V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :cond_12
    :goto_16
    :try_start_1d
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :try_start_1e
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V

    iget-object v2, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    :try_start_1f
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->D()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_17

    :cond_13
    const-string v0, "unexpected to get continuation here"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :goto_17
    :try_start_20
    monitor-exit v2

    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->m()V

    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->f()V

    invoke-virtual {v7}, Landroidx/collection/MutableScatterSet;->f()V

    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/compose/runtime/Recomposer;->q:Landroidx/collection/MutableScatterSet;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catchall_e
    move-exception v0

    :try_start_21
    monitor-exit v2

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    :goto_18
    :try_start_22
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :goto_19
    :try_start_23
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    :goto_1a
    :try_start_24
    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v9, :cond_15

    :try_start_25
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v1, v11, v7}, Landroidx/compose/runtime/Recomposer;->O(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v12

    if-eqz v12, :cond_14

    move-object v13, v4

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_f
    move-exception v0

    move/from16 v9, v16

    goto/16 :goto_25

    :cond_14
    :goto_1c
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    :cond_15
    :try_start_26
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v7}, Landroidx/collection/ScatterSet;->c()Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    iget v9, v9, Landroidx/compose/runtime/collection/MutableVector;->d:I

    if-eqz v9, :cond_1c

    :cond_16
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v9
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    :try_start_27
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->J()Ljava/util/List;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1d
    if-ge v12, v11, :cond_18

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v8, v13}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ControlledComposition;->n(Ljava/util/Set;)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object v14, v2

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_10
    move-exception v0

    goto/16 :goto_24

    :cond_17
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    :cond_18
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    iget v11, v10, Landroidx/compose/runtime/collection/MutableVector;->d:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1f
    iget-object v14, v10, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    if-ge v12, v11, :cond_1b

    :try_start_28
    aget-object v14, v14, v12

    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v8, v14}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    move-object v15, v2

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_19
    if-lez v13, :cond_1a

    iget-object v14, v10, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    sub-int v15, v12, v13

    aget-object v17, v14, v12

    aput-object v17, v14, v15

    :cond_1a
    :goto_20
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    :cond_1b
    sub-int v12, v11, v13

    const/4 v13, 0x0

    invoke-static {v14, v12, v11, v13}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v12, v10, Landroidx/compose/runtime/collection/MutableVector;->d:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    :try_start_29
    monitor-exit v9

    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    if-eqz v9, :cond_1e

    :try_start_2a
    invoke-static {v3, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->d(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    :goto_21
    move-object v9, v3

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v1, v3, v7}, Landroidx/compose/runtime/Recomposer;->N(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    goto :goto_22

    :cond_1d
    invoke-static {v3, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->d(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    goto :goto_21

    :catchall_11
    move-exception v0

    move/from16 v9, v16

    goto :goto_23

    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_2

    :goto_23
    :try_start_2b
    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/Recomposer;->Q(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;I)V

    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_7

    :goto_24
    monitor-exit v9

    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_14

    :catchall_12
    move-exception v0

    const/4 v9, 0x2

    :goto_25
    :try_start_2c
    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/Recomposer;->Q(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;I)V

    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    :try_start_2d
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    :goto_26
    return-object v0

    :catchall_13
    move-exception v0

    invoke-interface {v2}, Ljava/util/List;->clear()V

    throw v0

    :goto_27
    monitor-exit v9

    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    :catchall_14
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_15
    move-exception v0

    monitor-exit v11

    throw v0
.end method
