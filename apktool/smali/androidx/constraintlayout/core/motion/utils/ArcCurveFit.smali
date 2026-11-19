.class public Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# instance fields
.field public final a:[D

.field public final b:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

.field public final c:Z


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->c:Z

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->a:[D

    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->b:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->b:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v8, v7

    if-ge v4, v8, :cond_18

    aget v8, p1, v4

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v8, :cond_5

    if-eq v8, v2, :cond_4

    const/4 v12, 0x2

    if-eq v8, v12, :cond_3

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_1

    if-eq v8, v9, :cond_0

    goto :goto_3

    :cond_0
    move v6, v9

    goto :goto_3

    :cond_1
    move v6, v10

    goto :goto_3

    :cond_2
    if-ne v5, v2, :cond_4

    goto :goto_2

    :goto_1
    move v6, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v12

    goto :goto_1

    :cond_4
    move v5, v2

    goto :goto_1

    :cond_5
    move v6, v11

    :goto_3
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-wide v12, v1, v4

    add-int/lit8 v14, v4, 0x1

    move-wide/from16 v16, v12

    aget-wide v11, v1, v14

    aget-object v13, p3, v4

    aget-wide v9, v13, v3

    move/from16 v20, v2

    move/from16 v21, v3

    aget-wide v2, v13, v20

    aget-object v13, p3, v14

    aget-wide v0, v13, v21

    move/from16 v22, v4

    move/from16 v23, v5

    aget-wide v4, v13, v20

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move/from16 v13, v21

    iput-boolean v13, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    move/from16 v21, v14

    sub-double v13, v0, v9

    move-wide/from16 v24, v13

    sub-double v13, v4, v2

    const-wide/16 v26, 0x0

    move/from16 v15, v20

    if-eq v6, v15, :cond_a

    const/4 v15, 0x4

    if-eq v6, v15, :cond_8

    const/4 v15, 0x5

    if-eq v6, v15, :cond_6

    const/4 v15, 0x0

    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    :goto_4
    move-wide/from16 v18, v13

    move-wide/from16 v13, v16

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    cmpg-double v18, v13, v26

    if-gez v18, :cond_7

    const/4 v15, 0x1

    :cond_7
    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    goto :goto_4

    :cond_8
    cmpl-double v15, v13, v26

    if-lez v15, :cond_9

    const/4 v15, 0x1

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    goto :goto_4

    :cond_a
    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    move-wide/from16 v18, v13

    move-wide/from16 v13, v16

    :goto_6
    iput-wide v13, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    iput-wide v11, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double/2addr v13, v11

    iput-wide v13, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i:D

    move-object/from16 v16, v7

    const/4 v7, 0x3

    if-ne v7, v6, :cond_b

    iput-boolean v15, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    :cond_b
    iget-boolean v7, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-nez v7, :cond_c

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    const-wide v30, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v28, v30

    if-ltz v7, :cond_c

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    cmpg-double v7, v28, v30

    if-gez v7, :cond_d

    :cond_c
    move-object v15, v8

    const/4 v7, 0x1

    goto/16 :goto_f

    :cond_d
    const/16 v7, 0x65

    new-array v11, v7, [D

    iput-object v11, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->a:[D

    iget-boolean v12, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->q:Z

    if-eqz v12, :cond_e

    const/4 v14, -0x1

    goto :goto_7

    :cond_e
    const/4 v14, 0x1

    :goto_7
    int-to-double v14, v14

    mul-double v14, v14, v24

    iput-wide v14, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->j:D

    if-eqz v12, :cond_f

    const/4 v14, 0x1

    goto :goto_8

    :cond_f
    const/4 v14, -0x1

    :goto_8
    int-to-double v14, v14

    mul-double v14, v14, v18

    iput-wide v14, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k:D

    if-eqz v12, :cond_10

    move-wide v9, v0

    :cond_10
    iput-wide v9, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    if-eqz v12, :cond_11

    move-wide v0, v2

    goto :goto_9

    :cond_11
    move-wide v0, v4

    :goto_9
    iput-wide v0, v8, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    sub-double/2addr v2, v4

    move-wide/from16 v4, v26

    move-wide v9, v4

    move-wide v14, v9

    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0x5b

    sget-object v12, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->s:[D

    const-wide v17, 0x4056800000000000L    # 90.0

    if-ge v0, v1, :cond_13

    move-wide/from16 v29, v14

    int-to-double v13, v0

    mul-double v13, v13, v17

    div-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v17, v17, v24

    mul-double/2addr v13, v2

    if-lez v0, :cond_12

    sub-double v9, v17, v9

    move-object v15, v8

    sub-double v7, v13, v29

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    add-double/2addr v4, v7

    aput-wide v4, v12, v0

    goto :goto_b

    :cond_12
    move-object v15, v8

    :goto_b
    add-int/lit8 v0, v0, 0x1

    move-object v8, v15

    move-wide/from16 v9, v17

    const/16 v7, 0x65

    move-wide v14, v13

    goto :goto_a

    :cond_13
    move-object v15, v8

    iput-wide v4, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b:D

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_14

    aget-wide v2, v12, v0

    div-double/2addr v2, v4

    aput-wide v2, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    const/16 v1, 0x65

    :goto_d
    if-ge v0, v1, :cond_17

    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v12, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-ltz v4, :cond_15

    int-to-double v2, v4

    div-double v2, v2, v17

    aput-wide v2, v11, v0

    const/4 v5, -0x1

    goto :goto_e

    :cond_15
    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    aput-wide v26, v11, v0

    goto :goto_e

    :cond_16
    neg-int v4, v4

    add-int/lit8 v7, v4, -0x2

    const/16 v20, 0x1

    add-int/lit8 v4, v4, -0x1

    int-to-double v8, v7

    aget-wide v13, v12, v7

    sub-double/2addr v2, v13

    aget-wide v24, v12, v4

    sub-double v24, v24, v13

    div-double v2, v2, v24

    add-double/2addr v2, v8

    div-double v2, v2, v17

    aput-wide v2, v11, v0

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    iget-wide v0, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b:D

    iget-wide v2, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i:D

    mul-double/2addr v0, v2

    iput-wide v0, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->n:D

    const/4 v7, 0x1

    goto :goto_10

    :goto_f
    iput-boolean v7, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    iput-wide v9, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e:D

    iput-wide v0, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f:D

    iput-wide v2, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g:D

    iput-wide v4, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h:D

    move-wide/from16 v4, v18

    move-wide/from16 v0, v24

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    iput-wide v2, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b:D

    mul-double/2addr v2, v13

    iput-wide v2, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->n:D

    div-double v13, v0, v11

    iput-wide v13, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    div-double v13, v4, v11

    iput-wide v13, v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    :goto_10
    aput-object v15, v16, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v7

    move/from16 v4, v21

    move/from16 v5, v23

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_18
    return-void
.end method


# virtual methods
.method public final b(D)D
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->c:Z

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->b:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    if-eqz v1, :cond_2

    aget-object v1, p0, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    sub-double/2addr p1, v2

    iget-boolean v4, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide v1

    aget-object p0, p0, v0

    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    return-wide p1

    :cond_0
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide v1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->a()D

    move-result-wide v3

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    return-wide p1

    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpl-double v1, p1, v1

    if-lez v1, :cond_4

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    sub-double/2addr p1, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v3, p0, v2

    invoke-virtual {v3, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide v0

    aget-object p0, p0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    mul-double/2addr p1, v2

    add-double/2addr p1, v0

    return-wide p1

    :cond_2
    aget-object v1, p0, v0

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    cmpg-double v3, p1, v1

    if-gez v3, :cond_3

    move-wide p1, v1

    goto :goto_0

    :cond_3
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpl-double v1, p1, v1

    if-lez v1, :cond_4

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p0, p1

    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    :cond_4
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_7

    aget-object v1, p0, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_6

    iget-boolean v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide p0

    return-wide p0

    :cond_5
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide p0

    return-wide p0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public final c(D[D)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->c:Z

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->b:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    if-eqz v2, :cond_3

    aget-object v2, p0, v0

    iget-wide v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    cmpg-double v5, p1, v3

    if-gez v5, :cond_1

    sub-double/2addr p1, v3

    iget-boolean v5, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide v5

    aget-object v2, p0, v0

    iget-wide v7, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    mul-double/2addr v7, p1

    add-double/2addr v7, v5

    aput-wide v7, p3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    move-result-wide v2

    aget-object p0, p0, v0

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    mul-double/2addr p1, v4

    add-double/2addr p1, v2

    aput-wide p1, p3, v1

    return-void

    :cond_0
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide v2

    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->a()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v4, v2

    aput-wide v4, p3, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f()D

    move-result-wide v2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    move-result-wide v4

    mul-double/2addr p1, v4

    add-double/2addr p1, v2

    aput-wide p1, p3, v1

    return-void

    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_5

    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    sub-double v4, p1, v2

    array-length v6, p0

    sub-int/2addr v6, v1

    aget-object v7, p0, v6

    iget-boolean v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide p1

    aget-object v7, p0, v6

    iget-wide v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    mul-double/2addr v8, v4

    add-double/2addr v8, p1

    aput-wide v8, p3, v0

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    move-result-wide p1

    aget-object p0, p0, v6

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    mul-double/2addr v4, v2

    add-double/2addr v4, p1

    aput-wide v4, p3, v1

    return-void

    :cond_2
    invoke-virtual {v7, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object p1, p0, v6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide p1

    aget-object v2, p0, v6

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->a()D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v2, p1

    aput-wide v2, p3, v0

    aget-object p1, p0, v6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f()D

    move-result-wide p1

    aget-object p0, p0, v6

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    move-result-wide v2

    mul-double/2addr v4, v2

    add-double/2addr v4, p1

    aput-wide v4, p3, v1

    return-void

    :cond_3
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_4

    move-wide p1, v2

    :cond_4
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_5

    array-length p1, p0

    sub-int/2addr p1, v1

    aget-object p1, p0, p1

    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    :cond_5
    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_8

    aget-object v3, p0, v2

    iget-wide v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_7

    iget-boolean v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide v3

    aput-wide v3, p3, v0

    aget-object p0, p0, v2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    move-result-wide p0

    aput-wide p0, p3, v1

    return-void

    :cond_6
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object p1, p0, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide p1

    aput-wide p1, p3, v0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f()D

    move-result-wide p0

    aput-wide p0, p3, v1

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final d(D[F)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->c:Z

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->b:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    if-eqz v2, :cond_3

    aget-object v2, p0, v0

    iget-wide v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    cmpg-double v5, p1, v3

    if-gez v5, :cond_1

    sub-double/2addr p1, v3

    iget-boolean v5, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide v5

    aget-object v2, p0, v0

    iget-wide v7, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    mul-double/2addr v7, p1

    add-double/2addr v7, v5

    double-to-float v5, v7

    aput v5, p3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    move-result-wide v2

    aget-object p0, p0, v0

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    mul-double/2addr p1, v4

    add-double/2addr p1, v2

    double-to-float p0, p1

    aput p0, p3, v1

    return-void

    :cond_0
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide v2

    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->a()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v4, v2

    double-to-float v2, v4

    aput v2, p3, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f()D

    move-result-wide v2

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    move-result-wide v4

    mul-double/2addr p1, v4

    add-double/2addr p1, v2

    double-to-float p0, p1

    aput p0, p3, v1

    return-void

    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_5

    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    sub-double v4, p1, v2

    array-length v6, p0

    sub-int/2addr v6, v1

    aget-object v7, p0, v6

    iget-boolean v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide p1

    aget-object v7, p0, v6

    iget-wide v8, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    mul-double/2addr v8, v4

    add-double/2addr v8, p1

    double-to-float p1, v8

    aput p1, p3, v0

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    move-result-wide p1

    aget-object p0, p0, v6

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    mul-double/2addr v4, v2

    add-double/2addr v4, p1

    double-to-float p0, v4

    aput p0, p3, v1

    return-void

    :cond_2
    invoke-virtual {v7, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object p1, p0, v6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    aget-object p0, p0, v6

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f()D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p3, v1

    return-void

    :cond_3
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_4

    move-wide p1, v2

    goto :goto_0

    :cond_4
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object v2, p0, v2

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_5

    array-length p1, p0

    sub-int/2addr p1, v1

    aget-object p1, p0, p1

    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    :cond_5
    :goto_0
    move v2, v0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_8

    aget-object v3, p0, v2

    iget-wide v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_7

    iget-boolean v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v0

    aget-object p0, p0, v2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p3, v1

    return-void

    :cond_6
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object p1, p0, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f()D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p3, v1

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final e(D[D)V
    .locals 7

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->b:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c:D

    cmpg-double v3, p1, v1

    const/4 v4, 0x1

    if-gez v3, :cond_0

    move-wide p1, v1

    goto :goto_0

    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v4

    aget-object v1, p0, v1

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpl-double v1, p1, v1

    if-lez v1, :cond_1

    array-length p1, p0

    sub-int/2addr p1, v4

    aget-object p1, p0, p1

    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget-wide v5, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d:D

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_3

    iget-boolean v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->r:Z

    if-eqz v3, :cond_2

    iget-wide p0, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->l:D

    aput-wide p0, p3, v0

    iget-wide p0, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->m:D

    aput-wide p0, p3, v4

    return-void

    :cond_2
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)V

    aget-object p1, p0, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->a()D

    move-result-wide p1

    aput-wide p1, p3, v0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    move-result-wide p0

    aput-wide p0, p3, v4

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final f()[D
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->a:[D

    return-object p0
.end method
