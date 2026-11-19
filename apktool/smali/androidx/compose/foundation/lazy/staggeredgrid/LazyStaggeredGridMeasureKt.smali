.class public abstract Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a([I)I
    .locals 5

    array-length v0, p0

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p0, v3

    if-ge v2, v4, :cond_0

    move v1, v3

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b([I)I
    .locals 6

    array-length v0, p0

    const/4 v1, -0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p0, v3

    const v5, -0x7fffffff

    if-gt v5, v4, :cond_0

    if-ge v4, v2, :cond_0

    move v1, v3

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final c([IJ)I
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    const/high16 p2, -0x80000000

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p0, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static final d(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    .locals 64

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    iget-object v5, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->b:Ljava/util/List;

    iget v6, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->k:I

    iget-object v7, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->p:Ljava/util/List;

    iget v8, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->m:I

    iget-boolean v9, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->f:Z

    iget-object v10, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iget v11, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->t:I

    iget v12, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->h:I

    iget v13, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->j:I

    iget-object v14, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->r:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;

    move v15, v6

    move-object/from16 v16, v7

    iget-wide v6, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->e:J

    move/from16 v17, v9

    iget-object v9, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->s:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    move/from16 v18, v15

    iget-object v15, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->g:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-object/from16 v29, v15

    iget-object v15, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->c:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    move-object/from16 v19, v4

    invoke-interface {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->b()I

    move-result v4

    move-object/from16 v20, v5

    move-wide/from16 v21, v6

    const-wide v23, 0xffffffffL

    if-lez v4, :cond_0

    if-nez v11, :cond_1

    :cond_0
    move/from16 v16, v4

    move-object v4, v10

    move/from16 v44, v12

    move-object v8, v14

    move-object/from16 v43, v15

    move-wide/from16 v9, v21

    move-wide/from16 v20, v23

    move-object/from16 v7, v29

    const/16 v25, 0x20

    move-object v14, v1

    goto/16 :goto_76

    :cond_1
    const/16 v25, 0x20

    array-length v7, v2

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    array-length v2, v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    array-length v3, v7

    const/4 v5, -0x1

    add-int/2addr v3, v5

    if-ltz v3, :cond_b

    :goto_0
    add-int/lit8 v30, v3, -0x1

    :goto_1
    aget v5, v7, v3

    if-ge v5, v4, :cond_2

    invoke-virtual {v9, v5, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->a(II)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object/from16 v33, v10

    goto :goto_6

    :cond_3
    aget v5, v7, v3

    if-ltz v5, :cond_9

    invoke-interface {v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->h()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;->a(I)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v9, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->f(I)I

    move-result v6

    move-object/from16 v33, v10

    const/4 v10, -0x2

    if-ne v6, v10, :cond_8

    array-length v6, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_5

    move/from16 v34, v6

    aget v6, v7, v10

    if-ne v6, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v34

    goto :goto_2

    :cond_5
    const/4 v10, -0x1

    :goto_3
    add-int/lit8 v6, v10, 0x1

    move/from16 p2, v10

    if-gt v6, v3, :cond_7

    :goto_4
    aget v10, v7, v6

    if-ne v10, v5, :cond_6

    invoke-virtual {v9, v5, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->d(II)I

    move-result v10

    aput v10, v7, v6

    :cond_6
    if-eq v6, v3, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    move/from16 v3, p2

    :cond_8
    invoke-virtual {v9, v5, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->i(II)V

    goto :goto_5

    :cond_9
    move-object/from16 v33, v10

    :goto_5
    if-gez v30, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v3, v30

    move-object/from16 v10, v33

    goto :goto_0

    :goto_6
    aget v5, v7, v3

    invoke-virtual {v9, v5, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->d(II)I

    move-result v5

    aput v5, v7, v3

    move-object/from16 v10, v33

    goto :goto_1

    :cond_b
    move-object/from16 v33, v10

    :goto_7
    neg-int v3, v0

    invoke-static {v3, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    new-array v5, v11, [Lkotlin/collections/ArrayDeque;

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v11, :cond_c

    new-instance v6, Lkotlin/collections/ArrayDeque;

    const/16 v10, 0x10

    invoke-direct {v6, v10}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    neg-int v3, v13

    invoke-static {v3, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    const/4 v3, 0x0

    :goto_9
    array-length v6, v7

    const/4 v10, 0x0

    :goto_a
    const/16 v30, 0x0

    if-ge v10, v6, :cond_16

    aget v34, v7, v10

    aget v0, v2, v10

    move/from16 p2, v3

    neg-int v3, v8

    move-object/from16 v36, v5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v0, v3, :cond_15

    if-lez v34, :cond_15

    invoke-static {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->a([I)I

    move-result v0

    aget v3, v7, v0

    array-length v5, v2

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_e

    aget v10, v7, v6

    move/from16 v34, v5

    aget v5, v7, v0

    if-eq v10, v5, :cond_d

    aget v5, v2, v6

    aget v10, v2, v0

    if-ge v5, v10, :cond_d

    aput v10, v2, v6

    :cond_d
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v34

    goto :goto_b

    :cond_e
    invoke-virtual {v9, v3, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->d(II)I

    move-result v3

    if-gez v3, :cond_f

    :goto_c
    move/from16 p3, v11

    move/from16 v34, v12

    goto/16 :goto_11

    :cond_f
    invoke-virtual {v1, v15, v3, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J

    move-result-wide v5

    move v0, v11

    and-long v10, v5, v23

    long-to-int v10, v10

    move/from16 v34, v12

    shr-long v11, v5, v25

    long-to-int v11, v11

    sub-int v12, v10, v11

    move/from16 p3, v0

    const/4 v0, 0x1

    if-eq v12, v0, :cond_10

    const/4 v0, -0x2

    goto :goto_d

    :cond_10
    move v0, v11

    :goto_d
    invoke-virtual {v9, v3, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->i(II)V

    invoke-virtual {v14, v3, v5, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->d(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v0

    invoke-static {v2, v5, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->c([IJ)I

    move-result v5

    const/4 v6, 0x1

    if-eq v12, v6, :cond_11

    invoke-virtual {v9, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->e(I)[I

    move-result-object v30

    :cond_11
    move/from16 v6, p2

    :goto_e
    if-ge v11, v10, :cond_14

    aput v3, v7, v11

    if-nez v30, :cond_12

    const/4 v12, 0x0

    :goto_f
    move/from16 v37, v3

    goto :goto_10

    :cond_12
    aget v12, v30, v11

    goto :goto_f

    :goto_10
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    add-int/2addr v3, v5

    add-int/2addr v3, v12

    aput v3, v2, v11

    add-int v12, v34, v3

    if-gtz v12, :cond_13

    const/4 v6, 0x1

    :cond_13
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v37

    goto :goto_e

    :cond_14
    move/from16 v0, p1

    move/from16 v11, p3

    move v3, v6

    move/from16 v12, v34

    move-object/from16 v5, v36

    goto/16 :goto_9

    :cond_15
    move/from16 p3, v11

    move/from16 v34, v12

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p1

    move/from16 v3, p2

    move/from16 v11, p3

    move/from16 v12, v34

    move-object/from16 v5, v36

    goto/16 :goto_a

    :cond_16
    move/from16 p2, v3

    move-object/from16 v36, v5

    const/4 v0, -0x1

    goto :goto_c

    :goto_11
    neg-int v10, v13

    const/4 v5, 0x0

    aget v3, v2, v5

    if-ge v3, v10, :cond_17

    sub-int v3, v10, v3

    invoke-static {v3, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    sub-int v3, p1, v3

    move v6, v3

    goto :goto_12

    :cond_17
    move/from16 v6, p1

    :goto_12
    invoke-static {v13, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    const/4 v3, -0x1

    if-ne v0, v3, :cond_18

    invoke-static {v5, v7}, Lkotlin/collections/ArraysKt;->D(I[I)I

    move-result v0

    :cond_18
    if-eq v0, v3, :cond_1b

    invoke-static {v7, v1, v2, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->e([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz p4, :cond_1b

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->g()V

    array-length v4, v7

    new-array v5, v4, [I

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v4, :cond_19

    aput v3, v5, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v3, -0x1

    goto :goto_13

    :cond_19
    array-length v3, v2

    new-array v4, v3, [I

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v3, :cond_1a

    aget v8, v2, v0

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1a
    const/4 v7, 0x0

    invoke-static {v1, v6, v5, v4, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->d(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    return-object v0

    :cond_1b
    array-length v0, v7

    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    array-length v5, v2

    new-array v11, v5, [I

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v5, :cond_1c

    aget v12, v2, v3

    neg-int v12, v12

    aput v12, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1c
    add-int v12, v8, v10

    add-int v3, v18, v34

    if-gez v3, :cond_1d

    const/4 v3, 0x0

    :cond_1d
    invoke-static {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->b([I)I

    move-result v37

    move/from16 v39, v6

    move/from16 v38, v10

    move/from16 v6, v37

    const/4 v10, 0x0

    move/from16 v37, p2

    :goto_16
    const v40, 0x7fffffff

    move-object/from16 p2, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_26

    move/from16 v7, p3

    if-ge v10, v7, :cond_25

    move/from16 p1, v10

    aget v10, v0, v6

    move/from16 v41, v13

    array-length v13, v0

    move-object/from16 p3, v2

    move/from16 v42, v8

    move/from16 v8, v40

    const/4 v2, 0x0

    const/16 v40, -0x1

    :goto_17
    if-ge v2, v13, :cond_1f

    move/from16 v43, v2

    add-int/lit8 v2, v10, 0x1

    move/from16 v44, v13

    aget v13, v0, v43

    if-gt v2, v13, :cond_1e

    if-ge v13, v8, :cond_1e

    move v8, v13

    move/from16 v40, v43

    :cond_1e
    add-int/lit8 v2, v43, 0x1

    move/from16 v13, v44

    goto :goto_17

    :cond_1f
    add-int/lit8 v2, p1, 0x1

    if-ltz v10, :cond_24

    move v8, v7

    invoke-virtual {v1, v15, v10, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J

    move-result-wide v6

    invoke-virtual {v14, v10, v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->d(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    and-long v14, v6, v23

    long-to-int v14, v14

    move/from16 p1, v2

    shr-long v1, v6, v25

    long-to-int v1, v1

    sub-int v2, v14, v1

    const/4 v15, 0x1

    if-eq v2, v15, :cond_20

    const/4 v15, -0x2

    goto :goto_18

    :cond_20
    move v15, v1

    :goto_18
    invoke-virtual {v9, v10, v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->i(II)V

    invoke-static {v11, v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->c([IJ)I

    move-result v6

    move v7, v1

    :goto_19
    if-ge v7, v14, :cond_21

    iget v15, v13, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    add-int/2addr v15, v6

    aput v15, v11, v7

    aput v10, v0, v7

    aget-object v15, v36, v7

    invoke-virtual {v15, v13}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_21
    if-ge v6, v12, :cond_22

    aget v1, v11, v1

    if-gt v1, v12, :cond_22

    const/4 v7, 0x0

    iput-boolean v7, v13, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->l:Z

    const/16 v37, 0x1

    :cond_22
    const/4 v15, 0x1

    if-eq v2, v15, :cond_23

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move/from16 p3, v8

    move/from16 v10, p3

    :goto_1a
    move/from16 v6, v40

    move/from16 v13, v41

    move/from16 v8, v42

    move-object/from16 v14, v43

    move-object/from16 v15, v44

    goto/16 :goto_16

    :cond_23
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move/from16 p3, v8

    goto :goto_1a

    :cond_24
    move/from16 p1, v2

    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v2, p3

    move/from16 p3, v7

    move/from16 v6, v40

    move/from16 v13, v41

    move/from16 v8, v42

    move-object/from16 v7, p2

    goto/16 :goto_16

    :cond_25
    move/from16 v42, v8

    move v8, v7

    move-object/from16 p3, v2

    move/from16 v41, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    goto :goto_1b

    :cond_26
    move/from16 v42, v8

    move/from16 v8, p3

    move/from16 v41, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 p3, v2

    :goto_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v5, :cond_29

    aget v2, v11, v1

    if-lt v2, v3, :cond_28

    if-gtz v2, :cond_27

    goto :goto_1d

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_28
    :goto_1d
    move v7, v8

    goto :goto_1f

    :cond_29
    move v7, v8

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v7, :cond_2b

    aget-object v2, v36, v1

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    const/4 v15, 0x1

    goto :goto_20

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2b
    :goto_1f
    invoke-static {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->b([I)I

    move-result v1

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->L([I)I

    move-result v2

    const/4 v15, 0x1

    add-int/2addr v2, v15

    if-lt v2, v4, :cond_8b

    :goto_20
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v7, :cond_30

    aget-object v2, v36, v1

    :goto_22
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v6

    if-le v6, v15, :cond_2e

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget-boolean v6, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->l:Z

    if-nez v6, :cond_2e

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->f:I

    if-eq v8, v15, :cond_2c

    iget v8, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    invoke-virtual {v9, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->e(I)[I

    move-result-object v8

    goto :goto_23

    :cond_2c
    move-object/from16 v8, v30

    :goto_23
    aget v10, p3, v1

    iget v6, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    if-nez v8, :cond_2d

    const/4 v8, 0x0

    goto :goto_24

    :cond_2d
    aget v8, v8, v1

    :goto_24
    add-int/2addr v6, v8

    sub-int/2addr v10, v6

    aput v10, p3, v1

    const/4 v15, 0x1

    goto :goto_22

    :cond_2e
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v2, :cond_2f

    iget v2, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    goto :goto_25

    :cond_2f
    const/4 v2, -0x1

    :goto_25
    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v15, 0x1

    goto :goto_21

    :cond_30
    array-length v1, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_32

    aget v6, v0, v2

    add-int/lit8 v8, v4, -0x1

    if-ne v6, v8, :cond_31

    move/from16 v6, v42

    neg-int v1, v6

    invoke-static {v1, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    goto :goto_27

    :cond_31
    move/from16 v6, v42

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_32
    move/from16 v6, v42

    :goto_27
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v5, :cond_34

    aget v2, v11, v1

    move/from16 v8, v34

    if-ge v2, v8, :cond_33

    add-int/lit8 v1, v1, 0x1

    move/from16 v34, v8

    goto :goto_28

    :cond_33
    move-object/from16 v14, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v34, v5

    move/from16 v42, v7

    move-object v7, v11

    move/from16 v5, v39

    move/from16 v15, v41

    move-object/from16 v12, v44

    move/from16 v41, v3

    move/from16 v39, v4

    move/from16 v44, v8

    move v4, v5

    move-object/from16 v8, v43

    goto/16 :goto_35

    :cond_34
    move/from16 v8, v34

    invoke-static {v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->a([I)I

    move-result v1

    aget v1, v11, v1

    sub-int v12, v8, v1

    neg-int v1, v12

    move-object/from16 v2, p3

    invoke-static {v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    invoke-static {v12, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    const/4 v1, 0x0

    :goto_29
    array-length v10, v2

    const/4 v13, 0x0

    :goto_2a
    if-ge v13, v10, :cond_43

    aget v14, v2, v13

    move/from16 v15, v41

    if-ge v14, v15, :cond_42

    invoke-static {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->b([I)I

    move-result v10

    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->a([I)I

    move-result v13

    if-eq v10, v13, :cond_36

    aget v14, v2, v10

    move/from16 p1, v1

    aget v1, v2, v13

    if-ne v14, v1, :cond_35

    move/from16 v1, p1

    move v10, v13

    goto :goto_2b

    :cond_35
    const/4 v1, 0x1

    goto :goto_2b

    :cond_36
    move/from16 p1, v1

    :goto_2b
    aget v13, p2, v10

    const/4 v14, -0x1

    if-ne v13, v14, :cond_37

    move v13, v4

    :cond_37
    invoke-virtual {v9, v13, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->d(II)I

    move-result v13

    if-gez v13, :cond_3c

    move-object/from16 v14, p0

    move-object/from16 v13, p2

    if-nez v1, :cond_38

    invoke-static {v13, v14, v2, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->e([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z

    move-result v34

    if-eqz v34, :cond_3b

    :cond_38
    if-eqz p4, :cond_3b

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->g()V

    array-length v0, v13

    new-array v1, v0, [I

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v0, :cond_39

    const/16 v28, -0x1

    aput v28, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_39
    array-length v0, v2

    new-array v3, v0, [I

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v0, :cond_3a

    aget v5, v2, v10

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3a
    move/from16 v4, v39

    const/4 v5, 0x0

    invoke-static {v14, v4, v1, v3, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->d(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    return-object v0

    :cond_3b
    move/from16 v41, v3

    move v3, v1

    move-object v1, v13

    move/from16 v34, v5

    move/from16 v42, v7

    move-object/from16 p3, v11

    move/from16 p2, v12

    move/from16 v5, v39

    move-object/from16 v12, v44

    move/from16 v39, v4

    :goto_2e
    move/from16 v44, v8

    move-object/from16 v8, v43

    goto/16 :goto_34

    :cond_3c
    move-object/from16 v14, p0

    move/from16 p1, v1

    move/from16 v41, v3

    move/from16 v34, v5

    move/from16 v5, v39

    move-object/from16 v1, p2

    move/from16 v39, v4

    move/from16 p2, v12

    move-object/from16 v12, v44

    invoke-virtual {v14, v12, v13, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J

    move-result-wide v3

    move/from16 v42, v7

    move/from16 v44, v8

    and-long v7, v3, v23

    long-to-int v7, v7

    move-object v8, v11

    shr-long v10, v3, v25

    long-to-int v10, v10

    sub-int v11, v7, v10

    move-object/from16 p3, v8

    const/4 v8, 0x1

    if-eq v11, v8, :cond_3d

    const/4 v8, -0x2

    goto :goto_2f

    :cond_3d
    move v8, v10

    :goto_2f
    invoke-virtual {v9, v13, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->i(II)V

    move-object/from16 v8, v43

    move/from16 v43, v10

    invoke-virtual {v8, v13, v3, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->d(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v10

    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->c([IJ)I

    move-result v3

    const/4 v4, 0x1

    if-eq v11, v4, :cond_3e

    invoke-virtual {v9, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->e(I)[I

    move-result-object v4

    goto :goto_30

    :cond_3e
    move-object/from16 v4, v30

    :goto_30
    move/from16 v11, p1

    move-object/from16 p1, v4

    move/from16 v4, v43

    :goto_31
    if-ge v4, v7, :cond_41

    move/from16 v43, v4

    aget v4, v2, v43

    if-eq v4, v3, :cond_3f

    const/4 v11, 0x1

    :cond_3f
    aget-object v4, v36, v43

    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    aput v13, v1, v43

    if-nez p1, :cond_40

    const/4 v4, 0x0

    :goto_32
    move/from16 v45, v3

    goto :goto_33

    :cond_40
    aget v4, p1, v43

    goto :goto_32

    :goto_33
    iget v3, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    add-int v3, v3, v45

    add-int/2addr v3, v4

    aput v3, v2, v43

    add-int/lit8 v4, v43, 0x1

    move/from16 v3, v45

    goto :goto_31

    :cond_41
    move-object/from16 v43, v8

    move/from16 v4, v39

    move/from16 v3, v41

    move/from16 v7, v42

    move/from16 v8, v44

    move/from16 v39, v5

    move-object/from16 v44, v12

    move/from16 v41, v15

    move/from16 v5, v34

    move/from16 v12, p2

    move-object/from16 p2, v1

    move v1, v11

    move-object/from16 v11, p3

    goto/16 :goto_29

    :cond_42
    move-object/from16 v14, p0

    move/from16 p1, v1

    move/from16 v41, v3

    move/from16 v34, v5

    move/from16 v42, v7

    move-object/from16 p3, v11

    move/from16 v5, v39

    move-object/from16 v1, p2

    move/from16 v39, v4

    move/from16 p2, v12

    move-object/from16 v12, v44

    move/from16 v44, v8

    move-object/from16 v8, v43

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v44

    move/from16 v39, v5

    move-object/from16 v44, v12

    move/from16 v41, v15

    move/from16 v5, v34

    move/from16 v12, p2

    move-object/from16 p2, v1

    move/from16 v1, p1

    goto/16 :goto_2a

    :cond_43
    move-object/from16 v14, p0

    move/from16 p1, v1

    move/from16 v15, v41

    move-object/from16 v1, p2

    move/from16 v41, v3

    move/from16 v3, p1

    move/from16 v34, v5

    move/from16 v42, v7

    move-object/from16 p3, v11

    move/from16 v5, v39

    move/from16 v39, v4

    move/from16 p2, v12

    move-object/from16 v12, v44

    goto/16 :goto_2e

    :goto_34
    if-eqz v3, :cond_44

    if-eqz p4, :cond_44

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->g()V

    const/4 v7, 0x0

    invoke-static {v14, v5, v1, v2, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->d(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    return-object v0

    :cond_44
    add-int v4, v5, p2

    invoke-static {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->b([I)I

    move-result v3

    aget v3, v2, v3

    if-gez v3, :cond_45

    add-int/2addr v4, v3

    move-object/from16 v7, p3

    invoke-static {v3, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    neg-int v3, v3

    invoke-static {v3, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->f(I[I)V

    goto :goto_35

    :cond_45
    move-object/from16 v7, p3

    :goto_35
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v3

    move-object/from16 v10, v33

    if-nez v3, :cond_47

    iget-boolean v3, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->a:Z

    if-nez v3, :cond_46

    goto :goto_36

    :cond_46
    iget-object v3, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->w:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_37

    :cond_47
    :goto_36
    iget v3, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    :goto_37
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->signum(I)I

    move-result v11

    invoke-static {v4}, Ljava/lang/Integer;->signum(I)I

    move-result v13

    if-ne v11, v13, :cond_48

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lt v11, v13, :cond_48

    int-to-float v11, v4

    goto :goto_38

    :cond_48
    move v11, v3

    :goto_38
    sub-float/2addr v3, v11

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v13

    const/16 v33, 0x0

    if-eqz v13, :cond_49

    if-le v4, v5, :cond_49

    cmpg-float v13, v3, v33

    if-gtz v13, :cond_49

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float v33, v4, v3

    :cond_49
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_39
    if-ge v5, v4, :cond_4a

    aget v13, v3, v5

    neg-int v13, v13

    aput v13, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_4a
    move/from16 v13, v42

    if-le v15, v6, :cond_4e

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v13, :cond_4e

    aget-object v5, v36, v4

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v6

    move-object/from16 p2, v1

    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v6, :cond_4c

    invoke-virtual {v5, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v42

    move/from16 v43, v4

    move-object/from16 v4, v42

    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move/from16 p1, v6

    iget v6, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    invoke-virtual {v9, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->e(I)[I

    move-result-object v6

    iget v4, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    if-nez v6, :cond_4b

    const/4 v6, 0x0

    goto :goto_3c

    :cond_4b
    aget v6, v6, v43

    :goto_3c
    add-int/2addr v4, v6

    invoke-virtual {v5}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v6

    const/16 v35, 0x1

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_4d

    aget v6, v2, v43

    if-eqz v6, :cond_4d

    if-lt v6, v4, :cond_4d

    sub-int/2addr v6, v4

    aput v6, v2, v43

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget v4, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    aput v4, p2, v43

    move/from16 v6, p1

    move/from16 v4, v43

    goto :goto_3b

    :cond_4c
    move/from16 v43, v4

    :cond_4d
    add-int/lit8 v4, v43, 0x1

    move-object/from16 v1, p2

    goto :goto_3a

    :cond_4e
    move-object/from16 p2, v1

    add-int v6, v18, v15

    if-eqz v17, :cond_4f

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v1

    move-wide/from16 v4, v21

    :goto_3d
    move/from16 v47, v1

    goto :goto_3e

    :cond_4f
    invoke-static {v7}, Lkotlin/collections/ArraysKt;->L([I)I

    move-result v1

    add-int/2addr v1, v6

    move-wide/from16 v4, v21

    invoke-static {v1, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v1

    goto :goto_3d

    :goto_3e
    if-eqz v17, :cond_50

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->L([I)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v1, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v1

    :goto_3f
    move/from16 v48, v1

    goto :goto_40

    :cond_50
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    goto :goto_3f

    :goto_40
    move/from16 p1, v6

    if-eqz v17, :cond_51

    move/from16 v6, v48

    :goto_41
    move/from16 v1, v44

    goto :goto_42

    :cond_51
    move/from16 v6, v47

    goto :goto_41

    :goto_42
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v15

    add-int v6, v18, v6

    const/16 v31, 0x0

    aget v15, v3, v31

    move-object/from16 v18, v20

    check-cast v18, Ljava/util/Collection;

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 p3, v15

    const/4 v15, -0x1

    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_59

    move/from16 v15, v18

    move-object/from16 v21, v30

    move/from16 v18, p3

    :goto_43
    add-int/lit8 v22, v15, -0x1

    move-object/from16 v42, v7

    move-object/from16 v7, v20

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    move/from16 v44, v1

    invoke-virtual {v9, v15}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->f(I)I

    move-result v1

    move-wide/from16 p3, v4

    const/4 v4, -0x2

    if-eq v1, v4, :cond_54

    const/4 v4, -0x1

    if-eq v1, v4, :cond_54

    aget-object v1, v36, v1

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v1, :cond_52

    iget v1, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    goto :goto_44

    :cond_52
    const/4 v1, -0x1

    :goto_44
    if-le v1, v15, :cond_56

    :cond_53
    move-object/from16 v20, v2

    const/4 v5, 0x0

    goto :goto_47

    :cond_54
    const/4 v1, 0x0

    :goto_45
    if-ge v1, v13, :cond_53

    aget-object v4, v36, v1

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v4, :cond_55

    iget v4, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    goto :goto_46

    :cond_55
    const/4 v4, -0x1

    :goto_46
    if-le v4, v15, :cond_56

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_56
    move-object/from16 v20, v2

    goto :goto_49

    :goto_47
    invoke-virtual {v14, v12, v15, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J

    move-result-wide v1

    if-nez v21, :cond_57

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_48

    :cond_57
    move-object/from16 v4, v21

    :goto_48
    invoke-virtual {v8, v15, v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->d(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v1

    iget v2, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    sub-int v2, v18, v2

    invoke-virtual {v1, v2, v5, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->p(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v18, v2

    move-object/from16 v21, v4

    :goto_49
    if-gez v22, :cond_58

    goto :goto_4a

    :cond_58
    move-wide/from16 v4, p3

    move-object/from16 v2, v20

    move/from16 v15, v22

    move/from16 v1, v44

    move-object/from16 v20, v7

    move-object/from16 v7, v42

    goto :goto_43

    :cond_59
    move/from16 v44, v1

    move-wide/from16 p3, v4

    move-object/from16 v42, v7

    move-object/from16 v7, v20

    move-object/from16 v20, v2

    move-object/from16 v21, v30

    :goto_4a
    if-nez v21, :cond_5a

    sget-object v21, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4b
    if-ge v1, v13, :cond_5b

    aget-object v4, v36, v1

    iget v4, v4, Lkotlin/collections/ArrayDeque;->d:I

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_5b
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4c
    const/4 v1, 0x0

    :goto_4d
    if-ge v1, v13, :cond_64

    aget-object v2, v36, v1

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    move/from16 v4, v40

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v13, :cond_5e

    aget-object v5, v36, v2

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v5, :cond_5c

    iget v5, v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    goto :goto_4f

    :cond_5c
    move/from16 v5, v40

    :goto_4f
    if-le v4, v5, :cond_5d

    move v1, v2

    move v4, v5

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_5e
    aget-object v2, v36, v1

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget v4, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->e:I

    if-eq v4, v1, :cond_5f

    goto :goto_4c

    :cond_5f
    iget v5, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->f:I

    add-int/2addr v5, v4

    move-object/from16 v22, v10

    move/from16 v43, v11

    int-to-long v10, v4

    shl-long v10, v10, v25

    int-to-long v4, v5

    and-long v4, v4, v23

    or-long/2addr v4, v10

    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->c([IJ)I

    move-result v10

    move/from16 v18, v1

    move-object/from16 v11, v19

    iget-object v1, v11, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->a:[I

    aget v1, v1, v18

    move-object/from16 v19, v3

    iget v3, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->m:I

    add-int/2addr v3, v10

    move/from16 v45, v13

    move/from16 v13, v38

    if-lt v3, v13, :cond_61

    move/from16 v3, v41

    if-gt v10, v3, :cond_60

    invoke-virtual {v2, v10, v1, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->p(III)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    move/from16 v41, v3

    :cond_61
    move-wide/from16 v49, v4

    shr-long v3, v49, v25

    long-to-int v1, v3

    and-long v3, v49, v23

    long-to-int v3, v3

    :goto_50
    if-ge v1, v3, :cond_62

    iget v4, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    add-int/2addr v4, v10

    aput v4, v19, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_62
    move/from16 v38, v13

    move-object/from16 v3, v19

    move-object/from16 v10, v22

    move/from16 v13, v45

    move-object/from16 v19, v11

    move/from16 v11, v43

    goto/16 :goto_4c

    :cond_63
    move-object/from16 v22, v10

    move/from16 v43, v11

    move/from16 v45, v13

    move-object/from16 v11, v19

    move/from16 v13, v38

    move-object/from16 v19, v3

    add-int/lit8 v1, v1, 0x1

    move/from16 v13, v45

    move-object/from16 v19, v11

    move/from16 v11, v43

    goto/16 :goto_4d

    :cond_64
    move-object/from16 v22, v10

    move/from16 v43, v11

    move-object/from16 v11, v19

    move/from16 v13, v38

    const/16 v31, 0x0

    move-object/from16 v19, v3

    aget v1, v19, v31

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v2, :cond_65

    iget v2, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    move v3, v2

    goto :goto_51

    :cond_65
    const/4 v3, -0x1

    :goto_51
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v2

    if-eqz v2, :cond_71

    if-eqz v16, :cond_71

    move-object/from16 v2, v16

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_71

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    const/16 v35, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_52
    const/4 v4, -0x1

    if-ge v4, v2, :cond_68

    move-object/from16 v4, v16

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v5

    if-le v5, v3, :cond_67

    if-eqz v2, :cond_66

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v5

    if-gt v5, v3, :cond_67

    :cond_66
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    goto :goto_53

    :cond_67
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v16, v4

    goto :goto_52

    :cond_68
    move-object/from16 v4, v16

    move-object/from16 v2, v30

    :goto_53
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    if-eqz v2, :cond_71

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v2

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v3

    add-int/lit8 v5, v39, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-gt v2, v3, :cond_71

    move-object/from16 v5, v30

    :goto_54
    if-eqz v5, :cond_6b

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v10

    move/from16 v38, v13

    const/4 v13, 0x0

    :goto_55
    if-ge v13, v10, :cond_6a

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget v5, v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    if-ne v5, v2, :cond_69

    move-object/from16 v19, v4

    move-object v13, v9

    move-object/from16 v5, v18

    goto/16 :goto_5e

    :cond_69
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v18

    goto :goto_55

    :cond_6a
    :goto_56
    move-object/from16 v18, v5

    goto :goto_57

    :cond_6b
    move/from16 v38, v13

    goto :goto_56

    :goto_57
    if-nez v18, :cond_6c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_58

    :cond_6c
    move-object/from16 v5, v18

    :goto_58
    move-object v10, v4

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v13, 0x0

    :goto_59
    if-ge v13, v10, :cond_6e

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v18}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v4

    if-ne v4, v2, :cond_6d

    goto :goto_5a

    :cond_6d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v19

    goto :goto_59

    :cond_6e
    move-object/from16 v19, v4

    move-object/from16 v16, v30

    :goto_5a
    check-cast v16, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    if-eqz v16, :cond_6f

    invoke-interface/range {v16 .. v16}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->e()I

    move-result v4

    :goto_5b
    move-object v13, v9

    goto :goto_5c

    :cond_6f
    const/4 v4, 0x0

    goto :goto_5b

    :goto_5c
    invoke-virtual {v14, v12, v2, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J

    move-result-wide v9

    invoke-virtual {v8, v2, v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->d(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v11, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->a:[I

    move-object/from16 v16, v5

    array-length v5, v10

    if-le v5, v4, :cond_70

    aget v4, v10, v4

    goto :goto_5d

    :cond_70
    const/4 v4, 0x0

    :goto_5d
    invoke-virtual {v9, v1, v4, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->p(III)V

    iget v4, v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    add-int/2addr v4, v1

    move v1, v4

    move-object/from16 v5, v16

    :goto_5e
    if-eq v2, v3, :cond_72

    add-int/lit8 v2, v2, 0x1

    move-object v9, v13

    move-object/from16 v4, v19

    move/from16 v13, v38

    goto/16 :goto_54

    :cond_71
    move/from16 v38, v13

    move-object v13, v9

    move-object/from16 v5, v30

    :cond_72
    move-object v2, v7

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move-object/from16 v4, v30

    const/4 v3, 0x0

    :goto_5f
    if-ge v3, v2, :cond_7c

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    move/from16 v10, v39

    if-lt v9, v10, :cond_73

    move/from16 v16, v2

    goto :goto_62

    :cond_73
    if-eqz v5, :cond_75

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v11

    move/from16 v16, v2

    const/4 v2, 0x0

    :goto_60
    if-ge v2, v11, :cond_76

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->a:I

    if-ne v2, v9, :cond_74

    goto :goto_62

    :cond_74
    add-int/lit8 v2, v19, 0x1

    goto :goto_60

    :cond_75
    move/from16 v16, v2

    :cond_76
    invoke-virtual {v13, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->f(I)I

    move-result v2

    const/4 v11, -0x2

    if-eq v2, v11, :cond_78

    const/4 v11, -0x1

    if-eq v2, v11, :cond_79

    aget v2, v0, v2

    if-ge v2, v9, :cond_7a

    :cond_77
    move v11, v3

    move-object/from16 v18, v4

    const/4 v2, 0x0

    goto :goto_63

    :cond_78
    const/4 v11, -0x1

    :cond_79
    array-length v2, v0

    const/4 v11, 0x0

    :goto_61
    if-ge v11, v2, :cond_77

    move/from16 v18, v2

    aget v2, v0, v11

    if-ge v2, v9, :cond_7a

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v18

    goto :goto_61

    :cond_7a
    :goto_62
    move v11, v3

    move-object/from16 v39, v7

    goto :goto_64

    :goto_63
    invoke-virtual {v14, v12, v9, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J

    move-result-wide v3

    if-nez v18, :cond_7b

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :cond_7b
    move-object/from16 v39, v7

    move-object/from16 v7, v18

    invoke-virtual {v8, v9, v3, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->d(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->p(III)V

    iget v2, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    add-int/2addr v2, v1

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    move-object v4, v7

    :goto_64
    add-int/lit8 v3, v11, 0x1

    move/from16 v2, v16

    move-object/from16 v7, v39

    move/from16 v39, v10

    goto :goto_5f

    :cond_7c
    move-object/from16 v18, v4

    move/from16 v10, v39

    if-nez v18, :cond_7d

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_65

    :cond_7d
    move-object/from16 v4, v18

    :goto_65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, v21

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v5, :cond_7e

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7e
    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v4, v22

    iget-object v1, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->t:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move/from16 v11, v43

    float-to-int v3, v11

    iget-object v5, v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->c:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->a()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v50

    iget-object v5, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->r:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;

    iget-boolean v6, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->f:Z

    iget v7, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->t:I

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v53

    iget-boolean v8, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->o:Z

    move-object/from16 v9, v20

    array-length v13, v9

    if-eqz v13, :cond_8a

    const/16 v31, 0x0

    aget v13, v9, v31

    move-object/from16 v45, v1

    array-length v1, v9

    move/from16 v16, v1

    move-object/from16 v49, v2

    const/4 v1, 0x1

    add-int/lit8 v2, v16, -0x1

    if-gt v1, v2, :cond_81

    move/from16 v46, v3

    const/4 v1, 0x1

    :goto_66
    aget v3, v9, v1

    if-le v13, v3, :cond_7f

    move v13, v3

    :cond_7f
    if-eq v1, v2, :cond_80

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_80
    :goto_67
    move/from16 v56, v13

    goto :goto_68

    :cond_81
    move/from16 v46, v3

    goto :goto_67

    :goto_68
    invoke-static/range {v42 .. v42}, Lkotlin/collections/ArraysKt;->L([I)I

    move-result v1

    add-int v57, v1, p1

    iget-object v1, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->n:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->q:Landroidx/compose/ui/graphics/GraphicsContext;

    move-object/from16 v58, v1

    move-object/from16 v59, v2

    move-object/from16 v51, v5

    move/from16 v52, v6

    move/from16 v54, v7

    move/from16 v55, v8

    invoke-virtual/range {v45 .. v59}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move/from16 v1, v47

    move/from16 v2, v48

    move-object/from16 v3, v49

    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v5

    if-nez v5, :cond_85

    iget-object v4, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->t:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v6

    if-nez v6, :cond_85

    if-eqz v17, :cond_82

    move v6, v2

    goto :goto_69

    :cond_82
    move v6, v1

    :goto_69
    shr-long v7, v4, v25

    long-to-int v7, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-wide/from16 v7, p3

    invoke-static {v1, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v47

    and-long v4, v4, v23

    long-to-int v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v48

    if-eqz v17, :cond_83

    move/from16 v1, v48

    goto :goto_6a

    :cond_83
    move/from16 v1, v47

    :goto_6a
    if-eq v1, v6, :cond_84

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_6b
    if-ge v5, v2, :cond_84

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iput v1, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->o:I

    iget v6, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->h:I

    add-int/2addr v6, v1

    iput v6, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->q:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    :cond_84
    move/from16 v7, v47

    move/from16 v8, v48

    goto :goto_6c

    :cond_85
    move v7, v1

    move v8, v2

    :goto_6c
    move/from16 v1, v34

    const/4 v5, 0x0

    :goto_6d
    if-ge v5, v1, :cond_87

    aget v2, v42, v5

    move/from16 v4, v44

    if-le v2, v4, :cond_86

    goto :goto_70

    :cond_86
    add-int/lit8 v5, v5, 0x1

    move/from16 v44, v4

    goto :goto_6d

    :cond_87
    array-length v1, v0

    const/4 v5, 0x0

    :goto_6e
    if-ge v5, v1, :cond_89

    aget v2, v0, v5

    add-int/lit8 v4, v10, -0x1

    if-ge v2, v4, :cond_88

    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_88
    move-wide/from16 v20, v23

    const/16 v24, 0x0

    :goto_6f
    move-object/from16 v49, v3

    goto :goto_71

    :cond_89
    :goto_70
    move-wide/from16 v20, v23

    const/16 v24, 0x1

    goto :goto_6f

    :goto_71
    iget-boolean v3, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->l:Z

    iget-wide v4, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->i:J

    new-instance v0, Lj90;

    move-object/from16 v13, p2

    move/from16 v30, v10

    move-object v1, v14

    move-object/from16 v6, v29

    move-object/from16 v2, v49

    invoke-direct/range {v0 .. v6}, Lj90;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;Ljava/util/ArrayList;ZJLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V

    invoke-static {v6, v7, v8, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v22

    iget-boolean v0, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->f:Z

    int-to-long v1, v7

    shl-long v1, v1, v25

    int-to-long v3, v8

    and-long v3, v3, v20

    or-long/2addr v1, v3

    sget-object v3, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    iget v3, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->j:I

    iget v4, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->k:I

    iget v5, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->m:I

    iget-object v7, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    invoke-interface {v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->h()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;

    move-result-object v28

    iget-object v8, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->n:Lkotlinx/coroutines/CoroutineScope;

    new-instance v18, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    const/16 v40, 0x0

    move/from16 v25, v0

    move/from16 v36, v3

    move-object/from16 v27, v7

    move-object/from16 v39, v8

    move-object/from16 v20, v9

    move/from16 v21, v11

    move-object/from16 v19, v13

    move-object/from16 v31, v15

    move/from16 v23, v33

    move/from16 v26, v37

    move/from16 v34, v38

    move/from16 v35, v41

    move-wide/from16 v32, v1

    move/from16 v37, v4

    move/from16 v38, v5

    invoke-direct/range {v18 .. v40}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;FZZZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;Landroidx/compose/ui/unit/Density;ILjava/util/List;JIIIIILkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v18

    :cond_8a
    invoke-static {}, Lb21;->x()V

    return-object v30

    :cond_8b
    move-object/from16 v14, p0

    move-object/from16 p1, v0

    move/from16 v45, v7

    move-object v13, v9

    move-wide/from16 v9, v21

    move-object/from16 v7, v29

    move/from16 v15, v41

    move/from16 v6, v42

    move-object/from16 v8, v43

    const/16 v32, -0x2

    move-object/from16 v22, p2

    move/from16 v41, v3

    move-object/from16 v42, v11

    move v3, v12

    move-object/from16 v11, v19

    move-object/from16 v12, v44

    move-object/from16 v19, v16

    move/from16 v44, v34

    move/from16 v16, v4

    move/from16 v34, v5

    move-object/from16 v4, v33

    move/from16 v5, v39

    move-object/from16 v39, v20

    move-wide/from16 v20, v23

    move-object/from16 v23, p3

    invoke-virtual {v14, v12, v2, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;II)J

    move-result-wide v0

    move/from16 v24, v5

    move/from16 v29, v6

    and-long v5, v0, v20

    long-to-int v5, v5

    move-object/from16 v33, v11

    move-object v6, v12

    shr-long v11, v0, v25

    long-to-int v11, v11

    sub-int v12, v5, v11

    move-object/from16 v43, v6

    const/4 v6, 0x1

    if-eq v12, v6, :cond_8c

    move/from16 v6, v32

    goto :goto_72

    :cond_8c
    move v6, v11

    :goto_72
    invoke-virtual {v13, v2, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->i(II)V

    invoke-virtual {v8, v2, v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->d(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v6

    move/from16 v46, v11

    move-object/from16 v11, v42

    invoke-static {v11, v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->c([IJ)I

    move-result v0

    const/4 v1, 0x1

    if-eq v12, v1, :cond_8d

    invoke-virtual {v13, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->e(I)[I

    move-result-object v12

    move/from16 v1, v45

    if-nez v12, :cond_8e

    new-array v12, v1, [I

    goto :goto_73

    :cond_8d
    move/from16 v1, v45

    move-object/from16 v12, v30

    :cond_8e
    :goto_73
    move/from16 v42, v1

    move/from16 v1, v46

    :goto_74
    if-ge v1, v5, :cond_90

    if-eqz v12, :cond_8f

    aget v45, v11, v1

    sub-int v45, v0, v45

    aput v45, v12, v1

    :cond_8f
    aput v2, p1, v1

    move/from16 v45, v1

    iget v1, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->n:I

    add-int/2addr v1, v0

    aput v1, v11, v45

    aget-object v1, v36, v45

    invoke-virtual {v1, v6}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v1, v45, 0x1

    goto :goto_74

    :cond_90
    iget-object v1, v13, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->c:Lkotlin/collections/ArrayDeque;

    invoke-static {v2, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->h(ILjava/util/List;)I

    move-result v5

    if-gez v5, :cond_92

    if-nez v12, :cond_91

    move-object/from16 v45, v11

    goto :goto_75

    :cond_91
    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    move-object/from16 v45, v11

    new-instance v11, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;

    invoke-direct {v11, v2, v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;-><init>(I[I)V

    invoke-virtual {v1, v5, v11}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    goto :goto_75

    :cond_92
    move-object/from16 v45, v11

    if-nez v12, :cond_93

    invoke-virtual {v1, v5}, Lkotlin/collections/ArrayDeque;->h(I)Ljava/lang/Object;

    goto :goto_75

    :cond_93
    invoke-virtual {v1, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;

    iput-object v12, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;->b:[I

    :goto_75
    if-ge v0, v3, :cond_94

    aget v0, v45, v46

    if-gt v0, v3, :cond_94

    const/4 v5, 0x0

    iput-boolean v5, v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->l:Z

    :cond_94
    move-object/from16 p2, v33

    move-object/from16 v33, v4

    move/from16 v4, v16

    move-object/from16 v16, v19

    move-object/from16 v19, p2

    move-object/from16 v0, p1

    move v12, v3

    move-object/from16 p2, v22

    move-object/from16 p3, v23

    move/from16 v5, v34

    move/from16 v3, v41

    move/from16 v34, v44

    move-object/from16 v11, v45

    move/from16 v41, v15

    move-object/from16 v44, v43

    move-object/from16 v43, v8

    move/from16 v8, v42

    move/from16 v42, v29

    move-object/from16 v29, v7

    move-wide/from16 v61, v9

    move-object v9, v13

    move-object/from16 v63, v39

    move/from16 v39, v24

    move-wide/from16 v23, v20

    move-object/from16 v20, v63

    move-wide/from16 v21, v61

    goto/16 :goto_1b

    :goto_76
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v48

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v49

    iget-object v0, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->t:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->c:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->a()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v51

    iget-object v1, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->r:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext$measuredItemProvider$1;

    iget v5, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->t:I

    iget-boolean v6, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->f:Z

    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v54

    iget-boolean v8, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->o:Z

    iget-object v11, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->n:Lkotlinx/coroutines/CoroutineScope;

    iget-object v12, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->q:Landroidx/compose/ui/graphics/GraphicsContext;

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v47, 0x0

    move-object/from16 v46, v0

    move-object/from16 v52, v1

    move/from16 v55, v5

    move/from16 v53, v6

    move/from16 v56, v8

    move-object/from16 v59, v11

    move-object/from16 v60, v12

    invoke-virtual/range {v46 .. v60}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->t:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    move-result-wide v0

    sget-object v4, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v4

    if-nez v4, :cond_95

    shr-long v4, v0, v25

    long-to-int v4, v4

    invoke-static {v4, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v48

    and-long v0, v0, v20

    long-to-int v0, v0

    invoke-static {v0, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v49

    :cond_95
    move/from16 v0, v48

    move/from16 v1, v49

    new-instance v4, Ln60;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Ln60;-><init>(I)V

    invoke-static {v7, v0, v1, v4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4

    move-object/from16 v29, v7

    iget-boolean v7, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->f:Z

    sget-object v13, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v0

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v1

    int-to-long v5, v0

    shl-long v5, v5, v25

    int-to-long v0, v1

    and-long v0, v0, v20

    or-long/2addr v0, v5

    sget-object v5, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    iget v5, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->j:I

    neg-int v6, v5

    iget v8, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->k:I

    add-int v17, v8, v44

    iget v9, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->m:I

    move/from16 v20, v9

    iget-object v9, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    invoke-interface/range {v43 .. v43}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;->h()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;

    move-result-object v10

    iget-object v11, v14, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->n:Lkotlinx/coroutines/CoroutineScope;

    move-wide v14, v0

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move/from16 v19, v8

    const/4 v8, 0x0

    const/16 v22, 0x0

    const/4 v3, 0x0

    move/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v30, v16

    move/from16 v16, v6

    const/4 v6, 0x0

    move-object v1, v2

    move-object/from16 v21, v11

    move-object/from16 v11, v29

    move/from16 v12, v30

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v22}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;FZZZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;Landroidx/compose/ui/unit/Density;ILjava/util/List;JIIIIILkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final e([ILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[II)Z
    .locals 6

    iget-object p1, p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->s:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    aget v4, p0, v2

    invoke-virtual {p1, v4, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->d(II)I

    move-result v4

    if-ne v4, v3, :cond_0

    aget v3, p2, v2

    aget v4, p2, p3

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget v4, p0, v2

    invoke-virtual {p1, v4, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->d(II)I

    move-result v4

    if-eq v4, v3, :cond_2

    aget v4, p2, v2

    aget v5, p2, p3

    if-lt v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->f(I)I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_4

    const/4 p1, -0x2

    if-eq p0, p1, :cond_4

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static final f(I[I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    add-int/2addr v2, p0

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
