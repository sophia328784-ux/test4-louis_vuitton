.class public abstract Lorg/spongycastle/math/raw/Nat384;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I[I[I)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p0 .. p2}, Lorg/spongycastle/math/raw/Nat192;->n([I[I[I)V

    const/4 v3, 0x6

    aget v4, v1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/4 v8, 0x7

    aget v9, v1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v11, 0x8

    aget v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    const/16 v13, 0x9

    aget v13, v1, v13

    int-to-long v13, v13

    and-long/2addr v13, v6

    const/16 v15, 0xa

    aget v15, v1, v15

    move-wide/from16 v16, v6

    int-to-long v6, v15

    and-long v6, v6, v16

    const/16 v15, 0xb

    aget v15, v1, v15

    move/from16 v18, v8

    move-wide/from16 v19, v9

    int-to-long v8, v15

    and-long v8, v8, v16

    aget v10, v0, v3

    move-wide/from16 v21, v4

    int-to-long v3, v10

    and-long v3, v3, v16

    move-wide/from16 v23, v3

    mul-long v3, v23, v21

    long-to-int v5, v3

    const/16 v10, 0xc

    aput v5, v2, v10

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    mul-long v25, v23, v19

    add-long v3, v25, v3

    const/16 v25, 0xd

    move/from16 v26, v5

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v27, v23, v11

    add-long v3, v27, v3

    const/16 v25, 0xe

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v27, v23, v13

    add-long v3, v27, v3

    const/16 v25, 0xf

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v27, v23, v6

    add-long v3, v27, v3

    const/16 v25, 0x10

    long-to-int v5, v3

    aput v5, v2, v25

    ushr-long v3, v3, v26

    mul-long v23, v23, v8

    add-long v3, v23, v3

    const/16 v23, 0x11

    long-to-int v5, v3

    aput v5, v2, v23

    ushr-long v3, v3, v26

    long-to-int v3, v3

    const/16 v4, 0x12

    aput v3, v2, v4

    move/from16 v23, v10

    const/4 v5, 0x1

    :goto_0
    const/4 v15, 0x6

    if-ge v5, v15, :cond_0

    add-int/lit8 v24, v23, 0x1

    add-int v25, v15, v5

    aget v3, v0, v25

    move/from16 v28, v5

    int-to-long v4, v3

    and-long v3, v4, v16

    mul-long v29, v3, v21

    aget v5, v2, v24

    move-wide/from16 v31, v11

    int-to-long v10, v5

    and-long v10, v10, v16

    add-long v10, v29, v10

    long-to-int v5, v10

    aput v5, v2, v24

    ushr-long v10, v10, v26

    mul-long v29, v3, v19

    add-int/lit8 v5, v23, 0x2

    aget v12, v2, v5

    move-wide/from16 v33, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long v29, v29, v3

    add-long v3, v29, v10

    long-to-int v10, v3

    aput v10, v2, v5

    ushr-long v3, v3, v26

    mul-long v10, v33, v31

    add-int/lit8 v5, v23, 0x3

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    mul-long v10, v33, v13

    add-int/lit8 v5, v23, 0x4

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    mul-long v10, v33, v6

    add-int/lit8 v5, v23, 0x5

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    mul-long v10, v33, v8

    add-int/lit8 v5, v23, 0x6

    aget v12, v2, v5

    move-wide/from16 v29, v3

    int-to-long v3, v12

    and-long v3, v3, v16

    add-long/2addr v10, v3

    add-long v10, v10, v29

    long-to-int v3, v10

    aput v3, v2, v5

    ushr-long v3, v10, v26

    add-int/lit8 v23, v23, 0x7

    long-to-int v3, v3

    aput v3, v2, v23

    add-int/lit8 v5, v28, 0x1

    move/from16 v23, v24

    move-wide/from16 v11, v31

    const/16 v4, 0x12

    const/16 v10, 0xc

    goto/16 :goto_0

    :cond_0
    invoke-static {v2, v2}, Lorg/spongycastle/math/raw/Nat192;->d([I[I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v15, 0x6

    invoke-static {v2, v4, v2, v15, v4}, Lorg/spongycastle/math/raw/Nat192;->c([II[III)I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x12

    const/16 v12, 0xc

    invoke-static {v2, v6, v2, v12, v5}, Lorg/spongycastle/math/raw/Nat192;->c([II[III)I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v15, [I

    new-array v6, v15, [I

    invoke-static {v0, v0, v3}, Lorg/spongycastle/math/raw/Nat192;->e([I[I[I)Z

    move-result v0

    invoke-static {v1, v1, v6}, Lorg/spongycastle/math/raw/Nat192;->e([I[I[I)Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    new-array v0, v12, [I

    invoke-static {v3, v6, v0}, Lorg/spongycastle/math/raw/Nat192;->n([I[I[I)V

    if-eqz v4, :cond_2

    invoke-static {v12, v15, v0, v2}, Lorg/spongycastle/math/raw/Nat;->d(II[I[I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {v12, v15, v0, v2}, Lorg/spongycastle/math/raw/Nat;->x(II[I[I)I

    move-result v0

    :goto_1
    add-int/2addr v5, v0

    const/16 v0, 0x18

    const/16 v6, 0x12

    invoke-static {v0, v5, v6, v2}, Lorg/spongycastle/math/raw/Nat;->f(III[I)V

    return-void
.end method

.method public static b([I[I)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lorg/spongycastle/math/raw/Nat192;->p([I[I)V

    const/4 v2, 0x6

    aget v3, v0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x5

    move v10, v7

    move v11, v8

    :goto_0
    add-int/lit8 v12, v9, -0x1

    add-int/2addr v9, v2

    aget v9, v0, v9

    int-to-long v13, v9

    and-long/2addr v13, v5

    mul-long/2addr v13, v13

    add-int/lit8 v9, v10, 0xb

    shl-int/lit8 v11, v11, 0x1f

    const/16 v15, 0x21

    move-wide/from16 v16, v5

    ushr-long v5, v13, v15

    long-to-int v5, v5

    or-int/2addr v5, v11

    aput v5, v1, v9

    add-int/lit8 v5, v10, -0x2

    const/16 v6, 0xa

    add-int/2addr v10, v6

    move v11, v10

    const/16 v18, 0x1

    ushr-long v9, v13, v18

    long-to-int v9, v9

    aput v9, v1, v11

    long-to-int v11, v13

    if-gtz v12, :cond_0

    mul-long v9, v3, v3

    shl-int/lit8 v5, v11, 0x1f

    int-to-long v11, v5

    and-long v11, v11, v16

    ushr-long v13, v9, v15

    or-long/2addr v11, v13

    long-to-int v5, v9

    aput v5, v1, v7

    const/16 v5, 0x20

    ushr-long/2addr v9, v5

    long-to-int v9, v9

    and-int/lit8 v9, v9, 0x1

    const/4 v10, 0x7

    aget v10, v0, v10

    int-to-long v13, v10

    and-long v21, v13, v16

    const/16 v10, 0xe

    aget v13, v1, v10

    int-to-long v13, v13

    and-long v13, v13, v16

    mul-long v19, v21, v3

    add-long v11, v19, v11

    long-to-int v15, v11

    shl-int/lit8 v19, v15, 0x1

    or-int v9, v19, v9

    const/16 v19, 0xd

    aput v9, v1, v19

    ushr-int/lit8 v9, v15, 0x1f

    ushr-long/2addr v11, v5

    add-long/2addr v13, v11

    const/16 v11, 0x8

    aget v11, v0, v11

    int-to-long v11, v11

    and-long v25, v11, v16

    const/16 v11, 0xf

    aget v12, v1, v11

    move/from16 v31, v5

    move v15, v6

    int-to-long v5, v12

    and-long v5, v5, v16

    const/16 v12, 0x10

    move/from16 v19, v10

    aget v10, v1, v12

    move/from16 v27, v11

    move/from16 v32, v12

    int-to-long v11, v10

    and-long v10, v11, v16

    mul-long v23, v25, v3

    add-long v12, v23, v13

    long-to-int v14, v12

    shl-int/lit8 v20, v14, 0x1

    or-int v9, v20, v9

    aput v9, v1, v19

    ushr-int/lit8 v9, v14, 0x1f

    ushr-long v23, v12, v31

    move-wide/from16 v19, v25

    move-wide/from16 v25, v5

    invoke-static/range {v19 .. v26}, Lz81;->c(JJJJ)J

    move-result-wide v5

    move-wide/from16 v12, v19

    ushr-long v19, v5, v31

    add-long v10, v10, v19

    and-long v5, v5, v16

    const/16 v14, 0x9

    aget v14, v0, v14

    move-wide/from16 v33, v3

    int-to-long v2, v14

    and-long v37, v2, v16

    const/16 v2, 0x11

    aget v3, v1, v2

    int-to-long v3, v3

    and-long v3, v3, v16

    ushr-long v19, v10, v31

    add-long v3, v3, v19

    and-long v25, v10, v16

    const/16 v10, 0x12

    aget v11, v1, v10

    move v14, v2

    move-wide/from16 v19, v3

    int-to-long v2, v11

    and-long v2, v2, v16

    ushr-long v23, v19, v31

    add-long v2, v2, v23

    and-long v29, v19, v16

    mul-long v19, v37, v33

    add-long v4, v19, v5

    long-to-int v6, v4

    shl-int/lit8 v11, v6, 0x1

    or-int/2addr v9, v11

    aput v9, v1, v27

    ushr-int/lit8 v6, v6, 0x1f

    ushr-long v23, v4, v31

    move-wide/from16 v19, v37

    invoke-static/range {v19 .. v26}, Lz81;->c(JJJJ)J

    move-result-wide v4

    ushr-long v27, v4, v31

    move-wide/from16 v25, v12

    move-wide/from16 v23, v37

    invoke-static/range {v23 .. v30}, Lz81;->c(JJJJ)J

    move-result-wide v11

    move-wide/from16 v27, v25

    and-long v4, v4, v16

    ushr-long v19, v11, v31

    add-long v2, v2, v19

    and-long v25, v11, v16

    aget v9, v0, v15

    int-to-long v11, v9

    and-long v19, v11, v16

    const/16 v9, 0x13

    aget v11, v1, v9

    int-to-long v11, v11

    and-long v11, v11, v16

    ushr-long v23, v2, v31

    add-long v11, v11, v23

    and-long v29, v2, v16

    const/16 v2, 0x14

    aget v3, v1, v2

    move v13, v2

    int-to-long v2, v3

    and-long v2, v2, v16

    ushr-long v23, v11, v31

    add-long v2, v2, v23

    and-long v41, v11, v16

    mul-long v11, v19, v33

    add-long/2addr v11, v4

    long-to-int v4, v11

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v5, v6

    aput v5, v1, v32

    ushr-int/lit8 v4, v4, 0x1f

    ushr-long v23, v11, v31

    invoke-static/range {v19 .. v26}, Lz81;->c(JJJJ)J

    move-result-wide v5

    move-wide/from16 v25, v27

    ushr-long v27, v5, v31

    move-wide/from16 v23, v19

    invoke-static/range {v23 .. v30}, Lz81;->c(JJJJ)J

    move-result-wide v11

    move-wide/from16 v27, v25

    and-long v5, v5, v16

    ushr-long v39, v11, v31

    move-wide/from16 v35, v19

    invoke-static/range {v35 .. v42}, Lz81;->c(JJJJ)J

    move-result-wide v19

    move-wide/from16 v43, v35

    and-long v25, v11, v16

    ushr-long v11, v19, v31

    add-long/2addr v2, v11

    and-long v29, v19, v16

    const/16 v11, 0xb

    aget v11, v0, v11

    int-to-long v11, v11

    and-long v19, v11, v16

    const/16 v11, 0x15

    aget v12, v1, v11

    move v15, v11

    int-to-long v11, v12

    and-long v11, v11, v16

    ushr-long v23, v2, v31

    add-long v11, v11, v23

    and-long v41, v2, v16

    const/16 v2, 0x16

    aget v3, v1, v2

    move/from16 v32, v2

    int-to-long v2, v3

    and-long v2, v2, v16

    ushr-long v23, v11, v31

    add-long v2, v2, v23

    and-long v45, v11, v16

    mul-long v11, v19, v33

    add-long/2addr v11, v5

    long-to-int v5, v11

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v14

    ushr-int/lit8 v4, v5, 0x1f

    ushr-long v23, v11, v31

    invoke-static/range {v19 .. v26}, Lz81;->c(JJJJ)J

    move-result-wide v5

    move-wide/from16 v25, v27

    ushr-long v27, v5, v31

    move-wide/from16 v23, v19

    invoke-static/range {v23 .. v30}, Lz81;->c(JJJJ)J

    move-result-wide v11

    ushr-long v39, v11, v31

    move-wide/from16 v35, v19

    move/from16 v19, v13

    invoke-static/range {v35 .. v42}, Lz81;->c(JJJJ)J

    move-result-wide v13

    move-wide/from16 v23, v43

    ushr-long v43, v13, v31

    move/from16 v21, v9

    move/from16 v20, v10

    move-wide/from16 v41, v23

    move-wide/from16 v39, v35

    invoke-static/range {v39 .. v46}, Lz81;->c(JJJJ)J

    move-result-wide v9

    ushr-long v16, v9, v31

    add-long v2, v2, v16

    long-to-int v5, v5

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v20

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v11

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v21

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v13

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v19

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v9

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v15

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v5, v2

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v4, v6

    aput v4, v1, v32

    ushr-int/lit8 v4, v5, 0x1f

    const/16 v5, 0x17

    aget v6, v1, v5

    ushr-long v2, v2, v31

    long-to-int v2, v2

    add-int/2addr v6, v2

    shl-int/lit8 v2, v6, 0x1

    or-int/2addr v2, v4

    aput v2, v1, v5

    invoke-static {v1, v1}, Lorg/spongycastle/math/raw/Nat192;->d([I[I)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v8, v1, v3, v8}, Lorg/spongycastle/math/raw/Nat192;->c([II[III)I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v5, v20

    invoke-static {v1, v5, v1, v7, v4}, Lorg/spongycastle/math/raw/Nat192;->c([II[III)I

    move-result v4

    add-int/2addr v4, v2

    new-array v2, v3, [I

    invoke-static {v0, v0, v2}, Lorg/spongycastle/math/raw/Nat192;->e([I[I[I)Z

    new-array v0, v7, [I

    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat192;->p([I[I)V

    invoke-static {v7, v3, v0, v1}, Lorg/spongycastle/math/raw/Nat;->x(II[I[I)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v2, 0x18

    invoke-static {v2, v0, v5, v1}, Lorg/spongycastle/math/raw/Nat;->f(III[I)V

    return-void

    :cond_0
    move v10, v5

    move v9, v12

    move-wide/from16 v5, v16

    goto/16 :goto_0
.end method
