.class final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObservedScopeMap"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
        "",
        "Lkotlin/Function1;",
        "",
        "onChanged",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
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
.field public final a:Lkotlin/jvm/functions/Function1;

.field public b:Ljava/lang/Object;

.field public c:Landroidx/collection/MutableObjectIntMap;

.field public d:I

.field public final e:Landroidx/collection/MutableScatterMap;

.field public final f:Landroidx/collection/MutableScatterMap;

.field public final g:Landroidx/collection/MutableScatterSet;

.field public final h:Landroidx/compose/runtime/collection/MutableVector;

.field public final i:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

.field public j:Z

.field public k:I

.field public final l:Landroidx/collection/MutableScatterMap;

.field public final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->a:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->d:I

    invoke-static {}, Landroidx/collection/ScatterMapKt;->b()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/MutableScatterMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->f:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/MutableScatterSet;

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->g:Landroidx/collection/MutableScatterSet;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/runtime/DerivedState;

    invoke-direct {p1, v1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->h:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->i:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    invoke-static {}, Landroidx/collection/ScatterMapKt;->b()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Z
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->h:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v9, 0x2

    iget-object v15, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    const-wide/16 v16, 0x80

    iget-object v4, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    iget-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    const-wide/16 v18, 0xff

    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->g:Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_21

    check-cast v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v0, v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;->b:Landroidx/collection/ScatterSet;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v7, v0

    sub-int/2addr v7, v9

    if-ltz v7, :cond_20

    const/4 v8, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :goto_0
    aget-wide v10, v0, v8

    const/16 v24, 0x8

    not-long v12, v10

    shl-long v12, v12, v20

    and-long/2addr v12, v10

    and-long v12, v12, v22

    cmp-long v12, v12, v22

    if-eqz v12, :cond_1f

    sub-int v12, v8, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_1e

    and-long v25, v10, v18

    cmp-long v25, v25, v16

    if-gez v25, :cond_1d

    shl-int/lit8 v25, v8, 0x3

    add-int v25, v25, v13

    aget-object v14, v2, v25

    instance-of v9, v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v9, :cond_0

    move-object v9, v14

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v27, Landroidx/compose/runtime/snapshots/ReaderKind;->a:I

    move-object/from16 p1, v0

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->j(I)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_14

    :cond_0
    move-object/from16 p1, v0

    :cond_1
    iget-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    if-nez v0, :cond_17

    invoke-virtual {v15, v14}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    :try_start_0
    invoke-virtual {v15, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v9, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v9, :cond_e

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v9, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    move-object/from16 v27, v2

    array-length v2, v0

    const/16 v25, 0x2

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_16

    move-object/from16 v28, v0

    move-wide/from16 v29, v10

    const/4 v0, 0x0

    move-object v11, v9

    :goto_2
    aget-wide v9, v28, v0

    move/from16 v31, v7

    move/from16 v32, v8

    not-long v7, v9

    shl-long v7, v7, v20

    and-long/2addr v7, v9

    and-long v7, v7, v22

    cmp-long v7, v7, v22

    if-eqz v7, :cond_c

    sub-int v7, v0, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_b

    and-long v33, v9, v18

    cmp-long v33, v33, v16

    if-gez v33, :cond_9

    shl-int/lit8 v33, v0, 0x3

    add-int v33, v33, v8

    aget-object v33, v11, v33

    move/from16 v34, v8

    move-object/from16 v8, v33

    check-cast v8, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v35, v9

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState;->e()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->n()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v10

    :cond_2
    move-object/from16 v33, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_f

    :goto_4
    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState;->I()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v11

    iget-object v11, v11, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    invoke-interface {v10, v11, v9}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v5, v8}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    instance-of v9, v8, Landroidx/collection/MutableScatterSet;

    if-eqz v9, :cond_6

    check-cast v8, Landroidx/collection/MutableScatterSet;

    iget-object v9, v8, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v8, v8, Landroidx/collection/ScatterSet;->a:[J

    array-length v10, v8

    const/16 v25, 0x2

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_a

    move-object/from16 v38, v8

    move-object/from16 v37, v9

    const/4 v11, 0x0

    :goto_5
    aget-wide v8, v38, v11

    move/from16 v39, v12

    move/from16 v40, v13

    not-long v12, v8

    shl-long v12, v12, v20

    and-long/2addr v12, v8

    and-long v12, v12, v22

    cmp-long v12, v12, v22

    if-eqz v12, :cond_5

    sub-int v12, v11, v10

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_4

    and-long v41, v8, v18

    cmp-long v41, v41, v16

    if-gez v41, :cond_3

    shl-int/lit8 v21, v11, 0x3

    add-int v21, v21, v13

    move-wide/from16 v41, v8

    aget-object v8, v37, v21

    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    goto :goto_7

    :cond_3
    move-wide/from16 v41, v8

    :goto_7
    shr-long v8, v41, v24

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_4
    move/from16 v8, v24

    if-ne v12, v8, :cond_8

    :cond_5
    if-eq v11, v10, :cond_8

    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v39

    move/from16 v13, v40

    const/16 v24, 0x8

    goto :goto_5

    :cond_6
    move/from16 v39, v12

    move/from16 v40, v13

    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    goto :goto_8

    :cond_7
    move/from16 v39, v12

    move/from16 v40, v13

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_8
    const/16 v8, 0x8

    goto :goto_9

    :cond_9
    move/from16 v34, v8

    move-wide/from16 v35, v9

    move-object/from16 v33, v11

    :cond_a
    move/from16 v39, v12

    move/from16 v40, v13

    goto :goto_8

    :goto_9
    shr-long v9, v35, v8

    add-int/lit8 v11, v34, 0x1

    move/from16 v24, v8

    move v8, v11

    move-object/from16 v11, v33

    move/from16 v12, v39

    move/from16 v13, v40

    goto/16 :goto_3

    :cond_b
    move-object/from16 v33, v11

    move/from16 v39, v12

    move/from16 v40, v13

    move/from16 v8, v24

    if-ne v7, v8, :cond_d

    goto :goto_a

    :cond_c
    move-object/from16 v33, v11

    move/from16 v39, v12

    move/from16 v40, v13

    :goto_a
    if-eq v0, v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    move-object/from16 v11, v33

    move/from16 v12, v39

    move/from16 v13, v40

    const/16 v24, 0x8

    goto/16 :goto_2

    :cond_d
    :goto_b
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_e
    move-object/from16 v27, v2

    move/from16 v31, v7

    move/from16 v32, v8

    move-wide/from16 v29, v10

    move/from16 v39, v12

    move/from16 v40, v13

    check-cast v0, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->e()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v7

    if-nez v7, :cond_f

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->n()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v7

    :cond_f
    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->I()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v8

    iget-object v8, v8, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    invoke-interface {v7, v8, v2}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v5, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_13

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v7, v0

    const/16 v25, 0x2

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_d

    const/4 v8, 0x0

    :goto_c
    aget-wide v9, v0, v8

    not-long v11, v9

    shl-long v11, v11, v20

    and-long/2addr v11, v9

    and-long v11, v11, v22

    cmp-long v11, v11, v22

    if-eqz v11, :cond_12

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v12, v11, 0x8

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v12, :cond_11

    and-long v33, v9, v18

    cmp-long v13, v33, v16

    if-gez v13, :cond_10

    shl-int/lit8 v13, v8, 0x3

    add-int/2addr v13, v11

    aget-object v13, v2, v13

    invoke-virtual {v6, v13}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    :cond_10
    const/16 v13, 0x8

    shr-long/2addr v9, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_11
    const/16 v13, 0x8

    if-ne v12, v13, :cond_d

    :cond_12
    if-eq v8, v7, :cond_d

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_13
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :cond_15
    move-object/from16 v27, v2

    :cond_16
    move/from16 v31, v7

    move/from16 v32, v8

    move-wide/from16 v29, v10

    move/from16 v39, v12

    move/from16 v40, v13

    goto/16 :goto_b

    :goto_e
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    goto :goto_10

    :goto_f
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    throw v0

    :cond_17
    move-object/from16 v27, v2

    move/from16 v31, v7

    move/from16 v32, v8

    move-wide/from16 v29, v10

    move/from16 v39, v12

    move/from16 v40, v13

    :goto_10
    invoke-virtual {v5, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_1b

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v7, v0

    const/16 v25, 0x2

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_1c

    const/4 v8, 0x0

    :goto_11
    aget-wide v9, v0, v8

    not-long v11, v9

    shl-long v11, v11, v20

    and-long/2addr v11, v9

    and-long v11, v11, v22

    cmp-long v11, v11, v22

    if-eqz v11, :cond_1a

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v12, v11, 0x8

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v12, :cond_19

    and-long v13, v9, v18

    cmp-long v13, v13, v16

    if-gez v13, :cond_18

    shl-int/lit8 v13, v8, 0x3

    add-int/2addr v13, v11

    aget-object v13, v2, v13

    invoke-virtual {v6, v13}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    :cond_18
    const/16 v13, 0x8

    shr-long/2addr v9, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_19
    const/16 v13, 0x8

    if-ne v12, v13, :cond_1c

    :cond_1a
    if-eq v8, v7, :cond_1c

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1b
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    :cond_1c
    :goto_13
    const/16 v8, 0x8

    goto :goto_15

    :cond_1d
    move-object/from16 p1, v0

    :goto_14
    move-object/from16 v27, v2

    move/from16 v31, v7

    move/from16 v32, v8

    move-wide/from16 v29, v10

    move/from16 v39, v12

    move/from16 v40, v13

    goto :goto_13

    :goto_15
    shr-long v10, v29, v8

    add-int/lit8 v13, v40, 0x1

    move-object/from16 v0, p1

    move/from16 v24, v8

    move-object/from16 v2, v27

    move/from16 v7, v31

    move/from16 v8, v32

    move/from16 v12, v39

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_1e
    move-object/from16 p1, v0

    move-object/from16 v27, v2

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v8, v24

    if-ne v12, v8, :cond_3e

    move/from16 v7, v31

    move/from16 v14, v32

    goto :goto_16

    :cond_1f
    move-object/from16 p1, v0

    move-object/from16 v27, v2

    move v14, v8

    :goto_16
    if-eq v14, v7, :cond_3e

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v27

    const/4 v9, 0x2

    goto/16 :goto_0

    :cond_20
    const/16 v20, 0x7

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v21, 0x0

    goto/16 :goto_2c

    :cond_21
    const/16 v20, 0x7

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v8, :cond_22

    move-object v8, v7

    check-cast v8, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v9, Landroidx/compose/runtime/snapshots/ReaderKind;->a:I

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->j(I)Z

    move-result v8

    if-nez v8, :cond_22

    move-object/from16 p1, v0

    goto/16 :goto_2b

    :cond_22
    iget-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    if-nez v8, :cond_37

    invoke-virtual {v15, v7}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v8, 0x1

    iput-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    :try_start_1
    invoke-virtual {v15, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_36

    :try_start_2
    instance-of v9, v8, Landroidx/collection/MutableScatterSet;

    if-eqz v9, :cond_2f

    check-cast v8, Landroidx/collection/MutableScatterSet;

    iget-object v9, v8, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v8, v8, Landroidx/collection/ScatterSet;->a:[J

    array-length v10, v8

    const/16 v25, 0x2

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_36

    const/4 v11, 0x0

    :goto_18
    aget-wide v12, v8, v11

    move-object/from16 v21, v8

    move-object v14, v9

    not-long v8, v12

    shl-long v8, v8, v20

    and-long/2addr v8, v12

    and-long v8, v8, v22

    cmp-long v8, v8, v22

    if-eqz v8, :cond_2d

    sub-int v8, v11, v10

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v8, :cond_2c

    and-long v27, v12, v18

    cmp-long v27, v27, v16

    if-gez v27, :cond_2b

    shl-int/lit8 v27, v11, 0x3

    add-int v27, v27, v9

    aget-object v27, v14, v27

    move-object/from16 p1, v0

    move-object/from16 v0, v27

    check-cast v0, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v27, v2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->e()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v28, :cond_23

    :try_start_3
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->n()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_23
    move/from16 v29, v9

    move-wide/from16 v30, v12

    move-object/from16 v9, v28

    goto :goto_1a

    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_27

    :goto_1a
    :try_start_4
    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->I()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v12

    iget-object v12, v12, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    invoke-interface {v9, v12, v2}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v5, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_28

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v9, v0

    const/16 v25, 0x2

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_27

    move-object/from16 v28, v14

    const/4 v12, 0x0

    :goto_1b
    aget-wide v13, v0, v12

    move-object/from16 v32, v0

    not-long v0, v13

    shl-long v0, v0, v20

    and-long/2addr v0, v13

    and-long v0, v0, v22

    cmp-long v0, v0, v22

    if-eqz v0, :cond_26

    sub-int v0, v12, v9

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_25

    and-long v33, v13, v18

    cmp-long v33, v33, v16

    if-gez v33, :cond_24

    shl-int/lit8 v27, v12, 0x3

    add-int v27, v27, v1

    move/from16 v33, v1

    aget-object v1, v2, v27

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/16 v27, 0x1

    :goto_1d
    const/16 v1, 0x8

    goto :goto_1e

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_27

    :cond_24
    move/from16 v33, v1

    goto :goto_1d

    :goto_1e
    shr-long/2addr v13, v1

    add-int/lit8 v24, v33, 0x1

    move/from16 v1, v24

    goto :goto_1c

    :cond_25
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    :cond_26
    if-eq v12, v9, :cond_2a

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v32

    goto :goto_1b

    :cond_27
    move-object/from16 v28, v14

    goto :goto_1f

    :cond_28
    move-object/from16 v28, v14

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_20

    :cond_29
    move-object/from16 v28, v14

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_2a
    :goto_1f
    move/from16 v2, v27

    :goto_20
    const/16 v13, 0x8

    goto :goto_21

    :cond_2b
    move-object/from16 p1, v0

    move/from16 v27, v2

    move/from16 v29, v9

    move-wide/from16 v30, v12

    move-object/from16 v28, v14

    goto :goto_20

    :goto_21
    shr-long v0, v30, v13

    add-int/lit8 v9, v29, 0x1

    move-wide v12, v0

    move-object/from16 v14, v28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto/16 :goto_19

    :cond_2c
    move-object/from16 p1, v0

    move/from16 v27, v2

    move-object/from16 v28, v14

    const/16 v13, 0x8

    if-ne v8, v13, :cond_2e

    goto :goto_22

    :cond_2d
    move-object/from16 p1, v0

    move-object/from16 v28, v14

    :goto_22
    if-eq v11, v10, :cond_2e

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, v21

    move-object/from16 v9, v28

    goto/16 :goto_18

    :cond_2e
    :goto_23
    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_26

    :cond_2f
    move-object/from16 p1, v0

    check-cast v8, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState;->e()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    if-nez v1, :cond_30

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->n()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    :cond_30
    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState;->I()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v9

    iget-object v9, v9, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    invoke-interface {v1, v9, v0}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v5, v8}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_34

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v8, v0

    const/16 v25, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_2e

    const/4 v9, 0x0

    :goto_24
    aget-wide v10, v0, v9

    not-long v12, v10

    shl-long v12, v12, v20

    and-long/2addr v12, v10

    and-long v12, v12, v22

    cmp-long v12, v12, v22

    if-eqz v12, :cond_33

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_25
    if-ge v13, v12, :cond_32

    and-long v27, v10, v18

    cmp-long v14, v27, v16

    if-gez v14, :cond_31

    shl-int/lit8 v2, v9, 0x3

    add-int/2addr v2, v13

    aget-object v2, v1, v2

    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_31
    const/16 v14, 0x8

    shr-long/2addr v10, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_25

    :cond_32
    const/16 v14, 0x8

    if-ne v12, v14, :cond_2e

    :cond_33
    if-eq v9, v8, :cond_2e

    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_34
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_23

    :cond_35
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_23

    :cond_36
    move-object/from16 p1, v0

    goto :goto_23

    :goto_26
    iput-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    goto :goto_28

    :goto_27
    iput-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    throw v0

    :cond_37
    move-object/from16 p1, v0

    :goto_28
    invoke-virtual {v5, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    instance-of v7, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_3b

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v7, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v8, v0

    const/16 v25, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_3c

    const/4 v9, 0x0

    :goto_29
    aget-wide v10, v0, v9

    not-long v12, v10

    shl-long v12, v12, v20

    and-long/2addr v12, v10

    and-long v12, v12, v22

    cmp-long v12, v12, v22

    if-eqz v12, :cond_3a

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_2a
    if-ge v13, v12, :cond_39

    and-long v27, v10, v18

    cmp-long v14, v27, v16

    if-gez v14, :cond_38

    shl-int/lit8 v2, v9, 0x3

    add-int/2addr v2, v13

    aget-object v2, v7, v2

    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_38
    const/16 v14, 0x8

    shr-long/2addr v10, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_2a

    :cond_39
    const/16 v14, 0x8

    if-ne v12, v14, :cond_3c

    :cond_3a
    if-eq v9, v8, :cond_3c

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_3b
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_3c
    :goto_2b
    move-object/from16 v0, p1

    goto/16 :goto_17

    :cond_3d
    move/from16 v21, v2

    :cond_3e
    :goto_2c
    iget-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    if-nez v0, :cond_49

    iget v0, v3, Landroidx/compose/runtime/collection/MutableVector;->d:I

    if-eqz v0, :cond_49

    iget-object v2, v3, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v0, :cond_48

    aget-object v6, v2, v4

    check-cast v6, Landroidx/compose/runtime/DerivedState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v5, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_47

    instance-of v9, v8, Landroidx/collection/MutableScatterSet;

    iget-object v11, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->f:Landroidx/collection/MutableScatterMap;

    if-eqz v9, :cond_45

    check-cast v8, Landroidx/collection/MutableScatterSet;

    iget-object v9, v8, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v8, v8, Landroidx/collection/ScatterSet;->a:[J

    array-length v12, v8

    const/16 v25, 0x2

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_44

    const/4 v13, 0x0

    :goto_2e
    aget-wide v14, v8, v13

    move-object/from16 v27, v11

    not-long v10, v14

    shl-long v10, v10, v20

    and-long/2addr v10, v14

    and-long v10, v10, v22

    cmp-long v10, v10, v22

    if-eqz v10, :cond_43

    sub-int v10, v13, v12

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_2f
    if-ge v11, v10, :cond_41

    and-long v28, v14, v18

    cmp-long v28, v28, v16

    if-gez v28, :cond_40

    shl-int/lit8 v28, v13, 0x3

    add-int v28, v28, v11

    move/from16 v29, v0

    aget-object v0, v9, v28

    move-object/from16 v28, v2

    move-object/from16 v2, v27

    invoke-virtual {v2, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v30, v3

    if-nez v27, :cond_3f

    new-instance v3, Landroidx/collection/MutableObjectIntMap;

    move/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v5, v4, v8}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v0, v3}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    :cond_3f
    move/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v8

    move-object/from16 v3, v27

    :goto_30
    invoke-virtual {v1, v6, v7, v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->b(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    :goto_31
    const/16 v0, 0x8

    goto :goto_32

    :cond_40
    move/from16 v29, v0

    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v8

    move-object/from16 v2, v27

    goto :goto_31

    :goto_32
    shr-long/2addr v14, v0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v27, v2

    move-object/from16 v2, v28

    move/from16 v0, v29

    move-object/from16 v3, v30

    move/from16 v4, v31

    move-object/from16 v5, v32

    move-object/from16 v8, v33

    goto :goto_2f

    :cond_41
    move/from16 v29, v0

    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v8

    move-object/from16 v2, v27

    const/16 v0, 0x8

    if-ne v10, v0, :cond_42

    goto :goto_34

    :cond_42
    :goto_33
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_36

    :cond_43
    move/from16 v29, v0

    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v8

    move-object/from16 v2, v27

    const/16 v0, 0x8

    :goto_34
    if-eq v13, v12, :cond_42

    add-int/lit8 v13, v13, 0x1

    move-object v11, v2

    move-object/from16 v2, v28

    move/from16 v0, v29

    move-object/from16 v3, v30

    move/from16 v4, v31

    move-object/from16 v5, v32

    move-object/from16 v8, v33

    goto/16 :goto_2e

    :cond_44
    move/from16 v29, v0

    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    const/16 v0, 0x8

    goto :goto_33

    :cond_45
    move/from16 v29, v0

    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    move-object v2, v11

    const/16 v0, 0x8

    const/16 v25, 0x2

    invoke-virtual {v2, v8}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/MutableObjectIntMap;

    if-nez v3, :cond_46

    new-instance v3, Landroidx/collection/MutableObjectIntMap;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v5, v4, v9}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v8, v3}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_35

    :cond_46
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_35
    invoke-virtual {v1, v6, v7, v8, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->b(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    goto :goto_36

    :cond_47
    move/from16 v29, v0

    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    const/16 v0, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v25, 0x2

    :goto_36
    add-int/lit8 v2, v31, 0x1

    move v4, v2

    move-object/from16 v2, v28

    move/from16 v0, v29

    move-object/from16 v3, v30

    move-object/from16 v5, v32

    goto/16 :goto_2d

    :cond_48
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/collection/MutableVector;->j()V

    :cond_49
    return v21
.end method

.method public final b(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->k:I

    if-lez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3, v1}, Landroidx/collection/MutableObjectIntMap;->e(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    not-int v4, v4

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, v3, Landroidx/collection/ObjectIntMap;->c:[I

    aget v6, v6, v4

    :goto_0
    iget-object v7, v3, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    aput-object v1, v7, v4

    iget-object v3, v3, Landroidx/collection/ObjectIntMap;->c:[I

    aput v2, v3, v4

    instance-of v3, v1, Landroidx/compose/runtime/DerivedState;

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    if-eq v6, v2, :cond_6

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState;->I()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    iget-object v7, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->e:Landroidx/collection/ObjectIntMap;

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->c(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->a:[J

    array-length v8, v2

    sub-int/2addr v8, v4

    if-ltz v8, :cond_6

    const/4 v10, 0x0

    :goto_1
    aget-wide v11, v2, v10

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

    :goto_2
    if-ge v15, v13, :cond_4

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v7, v16

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    instance-of v5, v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v5, :cond_2

    move-object v5, v9

    check-cast v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v17, Landroidx/compose/runtime/snapshots/ReaderKind;->a:I

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->J(I)V

    :cond_2
    invoke-static {v3, v9, v1}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    shr-long/2addr v11, v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    if-ne v13, v14, :cond_6

    :cond_5
    if-eq v10, v8, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    if-ne v6, v2, :cond_8

    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v3, Landroidx/compose/runtime/snapshots/ReaderKind;->a:I

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->J(I)V

    :cond_7
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/collection/ScopeMap;->b(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    instance-of p1, p2, Landroidx/compose/runtime/DerivedState;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    invoke-static {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->c(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final d(Lkotlin/jvm/functions/Function1;)V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->f:Landroidx/collection/MutableScatterMap;

    iget-object v2, v1, Landroidx/collection/ScatterMap;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_9

    const/4 v5, 0x0

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_8

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_7

    const-wide/16 v14, 0xff

    and-long v16, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    shl-int/lit8 v16, v5, 0x3

    add-int v4, v16, v13

    move/from16 v16, v10

    iget-object v10, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    aget-object v10, v10, v4

    move-wide/from16 v20, v11

    iget-object v11, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    aget-object v11, v11, v4

    check-cast v11, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v12, p1

    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_3

    move-wide/from16 v23, v14

    iget-object v14, v11, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    iget-object v15, v11, Landroidx/collection/ObjectIntMap;->c:[I

    iget-object v11, v11, Landroidx/collection/ObjectIntMap;->a:[J

    move/from16 v25, v9

    array-length v9, v11

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_3

    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    const/4 v2, 0x0

    :goto_2
    aget-wide v6, v11, v2

    move-object/from16 v29, v11

    not-long v11, v6

    shl-long v11, v11, v16

    and-long/2addr v11, v6

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_2

    sub-int v11, v2, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_1

    and-long v30, v6, v23

    cmp-long v30, v30, v18

    if-gez v30, :cond_0

    shl-int/lit8 v30, v2, 0x3

    add-int v30, v30, v12

    move-wide/from16 v31, v6

    aget-object v6, v14, v30

    aget v7, v15, v30

    invoke-virtual {v0, v10, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    move-wide/from16 v31, v6

    :goto_4
    shr-long v6, v31, v25

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    move/from16 v6, v25

    if-ne v11, v6, :cond_4

    :cond_2
    if-eq v2, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p1

    move-object/from16 v11, v29

    const/16 v25, 0x8

    goto :goto_2

    :cond_3
    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    :cond_5
    const/16 v6, 0x8

    goto :goto_5

    :cond_6
    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    move/from16 v16, v10

    move-wide/from16 v20, v11

    move v6, v9

    :goto_5
    shr-long v9, v27, v6

    add-int/lit8 v13, v13, 0x1

    move-wide v11, v9

    move v9, v6

    move-wide v6, v11

    move/from16 v10, v16

    move-wide/from16 v11, v20

    move-object/from16 v2, v26

    goto/16 :goto_1

    :cond_7
    move-object/from16 v26, v2

    move v6, v9

    if-ne v8, v6, :cond_9

    goto :goto_6

    :cond_8
    move-object/from16 v26, v2

    :goto_6
    if-eq v5, v3, :cond_9

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    goto/16 :goto_0

    :cond_9
    return-void
.end method
