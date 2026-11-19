.class public Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I[I[I)V
    .locals 2

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->a(I[I[I[I)I

    move-result v1

    aget p0, p0, v0

    add-int/2addr v1, p0

    aget p0, p1, v0

    add-int/2addr v1, p0

    const/16 p0, 0x1ff

    if-gt v1, p0, :cond_0

    if-ne v1, p0, :cond_1

    sget-object p1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->a:[I

    invoke-static {v0, p2, p1}, Lorg/spongycastle/math/raw/Nat;->i(I[I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/raw/Nat;->n([I)I

    move-result p1

    add-int/2addr p1, v1

    and-int/lit16 v1, p1, 0x1ff

    :cond_1
    aput v1, p2, v0

    return-void
.end method

.method public static b([I[I)V
    .locals 68

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lorg/spongycastle/math/raw/Nat256;->r([I[I)V

    const/16 v2, 0x8

    aget v3, v0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v7, 0x10

    const/4 v9, 0x7

    move v10, v7

    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v12, v9, -0x1

    add-int/2addr v9, v2

    aget v9, v0, v9

    int-to-long v13, v9

    and-long/2addr v13, v5

    mul-long/2addr v13, v13

    add-int/lit8 v9, v10, 0xf

    const/16 v15, 0x1f

    shl-int/2addr v11, v15

    const/16 v16, 0x21

    move-wide/from16 v17, v5

    ushr-long v5, v13, v16

    long-to-int v5, v5

    or-int/2addr v5, v11

    aput v5, v1, v9

    add-int/lit8 v5, v10, -0x2

    const/16 v6, 0xe

    add-int/2addr v10, v6

    move v11, v10

    const/16 v19, 0x1

    ushr-long v9, v13, v19

    long-to-int v9, v9

    aput v9, v1, v11

    long-to-int v11, v13

    if-gtz v12, :cond_1

    mul-long v9, v3, v3

    shl-int/lit8 v5, v11, 0x1f

    int-to-long v11, v5

    and-long v11, v11, v17

    ushr-long v13, v9, v16

    or-long/2addr v11, v13

    long-to-int v5, v9

    aput v5, v1, v7

    const/16 v13, 0x20

    ushr-long/2addr v9, v13

    long-to-int v5, v9

    and-int/lit8 v5, v5, 0x1

    const/16 v9, 0x9

    aget v9, v0, v9

    int-to-long v9, v9

    and-long v22, v9, v17

    const/16 v9, 0x12

    aget v10, v1, v9

    move v14, v9

    int-to-long v9, v10

    and-long v9, v9, v17

    mul-long v20, v22, v3

    add-long v11, v20, v11

    move/from16 v16, v6

    long-to-int v6, v11

    shl-int/lit8 v20, v6, 0x1

    or-int v5, v20, v5

    const/16 v20, 0x11

    aput v5, v1, v20

    ushr-int/lit8 v5, v6, 0x1f

    ushr-long/2addr v11, v13

    add-long/2addr v9, v11

    const/16 v6, 0xa

    aget v6, v0, v6

    int-to-long v11, v6

    and-long v26, v11, v17

    const/16 v6, 0x13

    aget v11, v1, v6

    int-to-long v11, v11

    and-long v11, v11, v17

    const/16 v32, 0x14

    move/from16 v28, v6

    aget v6, v1, v32

    move/from16 v20, v14

    move/from16 v33, v15

    int-to-long v14, v6

    and-long v14, v14, v17

    mul-long v24, v26, v3

    add-long v9, v24, v9

    long-to-int v6, v9

    shl-int/lit8 v21, v6, 0x1

    or-int v5, v21, v5

    aput v5, v1, v20

    ushr-int/lit8 v5, v6, 0x1f

    ushr-long v24, v9, v13

    move-wide/from16 v20, v26

    move-wide/from16 v26, v11

    invoke-static/range {v20 .. v27}, Lz81;->c(JJJJ)J

    move-result-wide v9

    move-wide/from16 v11, v20

    ushr-long v20, v9, v13

    add-long v14, v14, v20

    and-long v9, v9, v17

    const/16 v6, 0xb

    aget v6, v0, v6

    move/from16 v34, v13

    move-wide/from16 v20, v14

    int-to-long v13, v6

    and-long v37, v13, v17

    const/16 v6, 0x15

    aget v13, v1, v6

    int-to-long v13, v13

    and-long v13, v13, v17

    ushr-long v24, v20, v34

    add-long v13, v13, v24

    and-long v26, v20, v17

    const/16 v15, 0x16

    move/from16 v43, v6

    aget v6, v1, v15

    move-wide/from16 v44, v3

    int-to-long v2, v6

    and-long v2, v2, v17

    ushr-long v20, v13, v34

    add-long v2, v2, v20

    and-long v30, v13, v17

    mul-long v13, v37, v44

    add-long/2addr v13, v9

    long-to-int v4, v13

    shl-int/lit8 v6, v4, 0x1

    or-int/2addr v5, v6

    aput v5, v1, v28

    ushr-int/lit8 v4, v4, 0x1f

    ushr-long v24, v13, v34

    move-wide/from16 v20, v37

    invoke-static/range {v20 .. v27}, Lz81;->c(JJJJ)J

    move-result-wide v5

    ushr-long v28, v5, v34

    move-wide/from16 v26, v11

    move-wide/from16 v24, v37

    invoke-static/range {v24 .. v31}, Lz81;->c(JJJJ)J

    move-result-wide v9

    and-long v5, v5, v17

    ushr-long v13, v9, v34

    add-long/2addr v2, v13

    and-long v26, v9, v17

    const/16 v9, 0xc

    aget v9, v0, v9

    int-to-long v9, v9

    and-long v48, v9, v17

    const/16 v9, 0x17

    aget v10, v1, v9

    int-to-long v13, v10

    and-long v13, v13, v17

    ushr-long v20, v2, v34

    add-long v13, v13, v20

    and-long v30, v2, v17

    const/16 v2, 0x18

    aget v3, v1, v2

    move/from16 v54, v9

    int-to-long v9, v3

    and-long v9, v9, v17

    ushr-long v20, v13, v34

    add-long v9, v9, v20

    and-long v41, v13, v17

    mul-long v13, v48, v44

    add-long/2addr v13, v5

    long-to-int v3, v13

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v4, v5

    aput v4, v1, v32

    ushr-int/lit8 v3, v3, 0x1f

    ushr-long v24, v13, v34

    move-wide/from16 v20, v48

    invoke-static/range {v20 .. v27}, Lz81;->c(JJJJ)J

    move-result-wide v4

    ushr-long v28, v4, v34

    move-wide/from16 v26, v11

    move-wide/from16 v24, v48

    invoke-static/range {v24 .. v31}, Lz81;->c(JJJJ)J

    move-result-wide v11

    move-wide/from16 v13, v26

    and-long v4, v4, v17

    ushr-long v39, v11, v34

    move-wide/from16 v35, v48

    invoke-static/range {v35 .. v42}, Lz81;->c(JJJJ)J

    move-result-wide v20

    and-long v26, v11, v17

    ushr-long v11, v20, v34

    add-long/2addr v9, v11

    and-long v30, v20, v17

    const/16 v6, 0xd

    aget v6, v0, v6

    int-to-long v11, v6

    and-long v57, v11, v17

    const/16 v6, 0x19

    aget v11, v1, v6

    int-to-long v11, v11

    and-long v11, v11, v17

    ushr-long v20, v9, v34

    add-long v11, v11, v20

    and-long v41, v9, v17

    const/16 v9, 0x1a

    aget v10, v1, v9

    move/from16 v32, v9

    int-to-long v9, v10

    and-long v9, v9, v17

    ushr-long v20, v11, v34

    add-long v9, v9, v20

    and-long v52, v11, v17

    mul-long v11, v57, v44

    add-long/2addr v11, v4

    long-to-int v4, v11

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, v1, v43

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v24, v11, v34

    move-wide/from16 v20, v57

    invoke-static/range {v20 .. v27}, Lz81;->c(JJJJ)J

    move-result-wide v4

    ushr-long v28, v4, v34

    move-wide/from16 v26, v13

    move-wide/from16 v24, v57

    invoke-static/range {v24 .. v31}, Lz81;->c(JJJJ)J

    move-result-wide v11

    and-long v4, v4, v17

    ushr-long v39, v11, v34

    move-wide/from16 v35, v57

    invoke-static/range {v35 .. v42}, Lz81;->c(JJJJ)J

    move-result-wide v20

    and-long v26, v11, v17

    ushr-long v50, v20, v34

    move-wide/from16 v46, v57

    invoke-static/range {v46 .. v53}, Lz81;->c(JJJJ)J

    move-result-wide v11

    and-long v30, v20, v17

    ushr-long v20, v11, v34

    add-long v9, v9, v20

    and-long v41, v11, v17

    aget v11, v0, v16

    int-to-long v11, v11

    and-long v61, v11, v17

    const/16 v11, 0x1b

    aget v12, v1, v11

    move/from16 v16, v11

    int-to-long v11, v12

    and-long v11, v11, v17

    ushr-long v20, v9, v34

    add-long v11, v11, v20

    and-long v52, v9, v17

    const/16 v9, 0x1c

    aget v10, v1, v9

    move/from16 v43, v9

    int-to-long v9, v10

    and-long v9, v9, v17

    ushr-long v20, v11, v34

    add-long v9, v9, v20

    and-long v11, v11, v17

    mul-long v20, v61, v44

    add-long v4, v20, v4

    move/from16 v67, v6

    long-to-int v6, v4

    shl-int/lit8 v20, v6, 0x1

    or-int v3, v20, v3

    aput v3, v1, v15

    ushr-int/lit8 v3, v6, 0x1f

    ushr-long v24, v4, v34

    move-wide/from16 v20, v61

    invoke-static/range {v20 .. v27}, Lz81;->c(JJJJ)J

    move-result-wide v4

    ushr-long v28, v4, v34

    move-wide/from16 v26, v13

    move-wide/from16 v24, v61

    invoke-static/range {v24 .. v31}, Lz81;->c(JJJJ)J

    move-result-wide v13

    move-wide/from16 v28, v26

    and-long v4, v4, v17

    ushr-long v39, v13, v34

    move-wide/from16 v35, v61

    invoke-static/range {v35 .. v42}, Lz81;->c(JJJJ)J

    move-result-wide v20

    and-long v26, v13, v17

    ushr-long v50, v20, v34

    move-wide/from16 v46, v61

    invoke-static/range {v46 .. v53}, Lz81;->c(JJJJ)J

    move-result-wide v13

    and-long v30, v20, v17

    ushr-long v59, v13, v34

    move-wide/from16 v55, v61

    move-wide/from16 v61, v11

    invoke-static/range {v55 .. v62}, Lz81;->c(JJJJ)J

    move-result-wide v11

    move-wide/from16 v63, v55

    and-long v41, v13, v17

    ushr-long v13, v11, v34

    add-long/2addr v9, v13

    and-long v52, v11, v17

    const/16 v6, 0xf

    aget v6, v0, v6

    int-to-long v11, v6

    and-long v46, v11, v17

    const/16 v6, 0x1d

    aget v11, v1, v6

    int-to-long v11, v11

    and-long v11, v11, v17

    ushr-long v13, v9, v34

    add-long/2addr v11, v13

    and-long v61, v9, v17

    const/16 v9, 0x1e

    aget v10, v1, v9

    int-to-long v13, v10

    and-long v13, v13, v17

    ushr-long v20, v11, v34

    add-long v13, v13, v20

    and-long v65, v11, v17

    mul-long v10, v46, v44

    add-long/2addr v10, v4

    long-to-int v4, v10

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, v1, v54

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v24, v10, v34

    move-wide/from16 v20, v46

    invoke-static/range {v20 .. v27}, Lz81;->c(JJJJ)J

    move-result-wide v4

    move-wide/from16 v26, v28

    ushr-long v28, v4, v34

    move-wide/from16 v24, v46

    invoke-static/range {v24 .. v31}, Lz81;->c(JJJJ)J

    move-result-wide v10

    ushr-long v39, v10, v34

    move v12, v2

    move v15, v3

    move-wide/from16 v35, v46

    invoke-static/range {v35 .. v42}, Lz81;->c(JJJJ)J

    move-result-wide v2

    ushr-long v50, v2, v34

    move-wide/from16 v20, v13

    move v14, v12

    invoke-static/range {v46 .. v53}, Lz81;->c(JJJJ)J

    move-result-wide v12

    ushr-long v59, v12, v34

    move/from16 v23, v14

    move/from16 v22, v15

    move-wide/from16 v55, v46

    invoke-static/range {v55 .. v62}, Lz81;->c(JJJJ)J

    move-result-wide v14

    move-wide/from16 v61, v63

    ushr-long v63, v14, v34

    move/from16 v25, v6

    move-wide/from16 v59, v46

    invoke-static/range {v59 .. v66}, Lz81;->c(JJJJ)J

    move-result-wide v6

    ushr-long v26, v6, v34

    move/from16 v29, v9

    add-long v8, v20, v26

    long-to-int v4, v4

    shl-int/lit8 v5, v4, 0x1

    or-int v5, v5, v22

    aput v5, v1, v23

    ushr-int/lit8 v4, v4, 0x1f

    long-to-int v5, v10

    shl-int/lit8 v10, v5, 0x1

    or-int/2addr v4, v10

    aput v4, v1, v67

    ushr-int/lit8 v4, v5, 0x1f

    long-to-int v2, v2

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v4

    aput v3, v1, v32

    ushr-int/lit8 v2, v2, 0x1f

    long-to-int v3, v12

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, v1, v16

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v14

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, v1, v43

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v6

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, v1, v25

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v8

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, v1, v29

    ushr-int/lit8 v2, v3, 0x1f

    aget v3, v1, v33

    ushr-long v4, v8, v34

    long-to-int v4, v4

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    aput v2, v1, v33

    invoke-static {v1, v1}, Lorg/spongycastle/math/raw/Nat256;->d([I[I)I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v1, v4, v1, v3, v4}, Lorg/spongycastle/math/raw/Nat256;->c([II[III)I

    move-result v5

    add-int/2addr v5, v2

    move/from16 v14, v23

    const/16 v6, 0x10

    invoke-static {v1, v14, v1, v6, v5}, Lorg/spongycastle/math/raw/Nat256;->c([II[III)I

    move-result v5

    add-int/2addr v5, v2

    new-array v2, v3, [I

    invoke-static {v0, v0, v2}, Lorg/spongycastle/math/raw/Nat256;->e([I[I[I)Z

    new-array v7, v6, [I

    invoke-static {v2, v7}, Lorg/spongycastle/math/raw/Nat256;->r([I[I)V

    invoke-static {v6, v3, v7, v1}, Lorg/spongycastle/math/raw/Nat;->x(II[I[I)I

    move-result v2

    add-int/2addr v2, v5

    move/from16 v3, v34

    invoke-static {v3, v2, v14, v1}, Lorg/spongycastle/math/raw/Nat;->f(III[I)V

    aget v2, v0, v6

    shl-int/lit8 v3, v2, 0x1

    int-to-long v7, v3

    and-long v7, v7, v17

    const-wide/16 v9, 0x0

    :cond_0
    aget v3, v0, v4

    int-to-long v11, v3

    and-long v11, v11, v17

    mul-long/2addr v11, v7

    add-int v3, v6, v4

    aget v5, v1, v3

    int-to-long v13, v5

    and-long v13, v13, v17

    add-long/2addr v11, v13

    add-long/2addr v11, v9

    long-to-int v5, v11

    aput v5, v1, v3

    const/16 v34, 0x20

    ushr-long v9, v11, v34

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v6, :cond_0

    long-to-int v0, v9

    mul-int/2addr v2, v2

    add-int/2addr v2, v0

    aput v2, v1, v34

    return-void

    :cond_1
    move v10, v5

    move v9, v12

    move-wide/from16 v5, v17

    goto/16 :goto_0
.end method

.method public static c([I[I[I)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x21

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Nat256;->p([I[I[I)V

    const/16 v3, 0x8

    aget v4, v1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/16 v8, 0x9

    aget v9, v1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    const/16 v11, 0xa

    aget v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    const/16 v13, 0xb

    aget v13, v1, v13

    int-to-long v13, v13

    and-long/2addr v13, v6

    const/16 v15, 0xc

    aget v15, v1, v15

    move-wide/from16 v16, v6

    int-to-long v6, v15

    and-long v6, v6, v16

    const/16 v15, 0xd

    aget v15, v1, v15

    move/from16 v18, v8

    move-wide/from16 v19, v9

    int-to-long v8, v15

    and-long v8, v8, v16

    const/16 v10, 0xe

    aget v10, v1, v10

    move v15, v3

    move-wide/from16 v21, v4

    int-to-long v3, v10

    and-long v3, v3, v16

    const/16 v5, 0xf

    aget v5, v1, v5

    move-wide/from16 v23, v3

    int-to-long v3, v5

    and-long v3, v3, v16

    aget v5, v0, v15

    move-wide/from16 v25, v3

    int-to-long v3, v5

    and-long v3, v3, v16

    move-wide/from16 v27, v3

    mul-long v3, v27, v21

    long-to-int v5, v3

    const/16 v10, 0x10

    aput v5, v2, v10

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    mul-long v29, v27, v19

    add-long v3, v29, v3

    const/16 v29, 0x11

    long-to-int v15, v3

    aput v15, v2, v29

    ushr-long/2addr v3, v5

    mul-long v31, v27, v11

    add-long v3, v31, v3

    const/16 v29, 0x12

    long-to-int v15, v3

    aput v15, v2, v29

    ushr-long/2addr v3, v5

    mul-long v31, v27, v13

    add-long v3, v31, v3

    const/16 v29, 0x13

    long-to-int v15, v3

    aput v15, v2, v29

    ushr-long/2addr v3, v5

    mul-long v31, v27, v6

    add-long v3, v31, v3

    const/16 v29, 0x14

    long-to-int v15, v3

    aput v15, v2, v29

    ushr-long/2addr v3, v5

    mul-long v31, v27, v8

    add-long v3, v31, v3

    const/16 v29, 0x15

    long-to-int v15, v3

    aput v15, v2, v29

    ushr-long/2addr v3, v5

    mul-long v31, v27, v23

    add-long v3, v31, v3

    const/16 v29, 0x16

    long-to-int v15, v3

    aput v15, v2, v29

    ushr-long/2addr v3, v5

    mul-long v27, v27, v25

    add-long v3, v27, v3

    const/16 v27, 0x17

    long-to-int v15, v3

    aput v15, v2, v27

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    const/16 v4, 0x18

    aput v3, v2, v4

    move/from16 v27, v10

    const/4 v15, 0x1

    const/16 v28, 0x1

    :goto_0
    const/16 v3, 0x8

    if-ge v15, v3, :cond_0

    add-int/lit8 v29, v27, 0x1

    add-int v30, v3, v15

    move v3, v15

    aget v15, v0, v30

    move-wide/from16 v32, v6

    move v7, v5

    int-to-long v5, v15

    and-long v5, v5, v16

    mul-long v34, v5, v21

    aget v15, v2, v29

    move-wide/from16 v36, v8

    move v9, v7

    int-to-long v7, v15

    and-long v7, v7, v16

    add-long v7, v34, v7

    long-to-int v15, v7

    aput v15, v2, v29

    ushr-long/2addr v7, v9

    mul-long v34, v5, v19

    add-int/lit8 v15, v27, 0x2

    move/from16 v30, v9

    aget v9, v2, v15

    move-wide/from16 v38, v5

    int-to-long v4, v9

    and-long v4, v4, v16

    add-long v34, v34, v4

    add-long v4, v34, v7

    long-to-int v6, v4

    aput v6, v2, v15

    ushr-long v4, v4, v30

    mul-long v6, v38, v11

    add-int/lit8 v8, v27, 0x3

    aget v9, v2, v8

    move-wide/from16 v34, v11

    int-to-long v10, v9

    and-long v9, v10, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v4

    long-to-int v4, v6

    aput v4, v2, v8

    ushr-long v4, v6, v30

    mul-long v6, v38, v13

    add-int/lit8 v8, v27, 0x4

    aget v9, v2, v8

    int-to-long v9, v9

    and-long v9, v9, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v4

    long-to-int v4, v6

    aput v4, v2, v8

    ushr-long v4, v6, v30

    mul-long v6, v38, v32

    add-int/lit8 v8, v27, 0x5

    aget v9, v2, v8

    int-to-long v9, v9

    and-long v9, v9, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v4

    long-to-int v4, v6

    aput v4, v2, v8

    ushr-long v4, v6, v30

    mul-long v6, v38, v36

    add-int/lit8 v8, v27, 0x6

    aget v9, v2, v8

    int-to-long v9, v9

    and-long v9, v9, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v4

    long-to-int v4, v6

    aput v4, v2, v8

    ushr-long v4, v6, v30

    mul-long v6, v38, v23

    add-int/lit8 v8, v27, 0x7

    aget v9, v2, v8

    int-to-long v9, v9

    and-long v9, v9, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v4

    long-to-int v4, v6

    aput v4, v2, v8

    ushr-long v4, v6, v30

    mul-long v6, v38, v25

    add-int/lit8 v8, v27, 0x8

    aget v9, v2, v8

    int-to-long v9, v9

    and-long v9, v9, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v4

    long-to-int v4, v6

    aput v4, v2, v8

    ushr-long v4, v6, v30

    add-int/lit8 v27, v27, 0x9

    long-to-int v4, v4

    aput v4, v2, v27

    add-int/lit8 v15, v3, 0x1

    move/from16 v27, v29

    move/from16 v5, v30

    move-wide/from16 v6, v32

    move-wide/from16 v11, v34

    move-wide/from16 v8, v36

    const/16 v4, 0x18

    const/16 v10, 0x10

    goto/16 :goto_0

    :cond_0
    move/from16 v30, v5

    invoke-static {v2, v2}, Lorg/spongycastle/math/raw/Nat256;->d([I[I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v15, 0x8

    invoke-static {v2, v4, v2, v15, v4}, Lorg/spongycastle/math/raw/Nat256;->c([II[III)I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x18

    const/16 v12, 0x10

    invoke-static {v2, v6, v2, v12, v5}, Lorg/spongycastle/math/raw/Nat256;->c([II[III)I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v15, [I

    new-array v6, v15, [I

    invoke-static {v0, v0, v3}, Lorg/spongycastle/math/raw/Nat256;->e([I[I[I)Z

    move-result v7

    invoke-static {v1, v1, v6}, Lorg/spongycastle/math/raw/Nat256;->e([I[I[I)Z

    move-result v8

    if-eq v7, v8, :cond_1

    move/from16 v7, v28

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    new-array v8, v12, [I

    invoke-static {v3, v6, v8}, Lorg/spongycastle/math/raw/Nat256;->p([I[I[I)V

    if-eqz v7, :cond_2

    invoke-static {v12, v15, v8, v2}, Lorg/spongycastle/math/raw/Nat;->d(II[I[I)I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-static {v12, v15, v8, v2}, Lorg/spongycastle/math/raw/Nat;->x(II[I[I)I

    move-result v3

    :goto_2
    add-int/2addr v5, v3

    move/from16 v7, v30

    const/16 v6, 0x18

    invoke-static {v7, v5, v6, v2}, Lorg/spongycastle/math/raw/Nat;->f(III[I)V

    aget v3, v0, v12

    aget v5, v1, v12

    int-to-long v8, v3

    and-long v8, v8, v16

    int-to-long v10, v5

    and-long v10, v10, v16

    const-wide/16 v13, 0x0

    :goto_3
    aget v6, v1, v4

    move-wide/from16 v18, v8

    int-to-long v7, v6

    and-long v6, v7, v16

    mul-long v8, v18, v6

    aget v6, v0, v4

    int-to-long v6, v6

    and-long v6, v6, v16

    mul-long/2addr v6, v10

    add-long/2addr v6, v8

    const/16 v12, 0x10

    add-int v8, v12, v4

    aget v9, v2, v8

    move-wide/from16 v20, v13

    int-to-long v12, v9

    and-long v12, v12, v16

    add-long/2addr v6, v12

    add-long v6, v6, v20

    long-to-int v9, v6

    aput v9, v2, v8

    const/16 v30, 0x20

    ushr-long v6, v6, v30

    add-int/lit8 v4, v4, 0x1

    const/16 v12, 0x10

    if-lt v4, v12, :cond_3

    long-to-int v0, v6

    mul-int/2addr v3, v5

    add-int/2addr v3, v0

    aput v3, v2, v30

    move-object/from16 v8, p2

    invoke-static {v2, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->d([I[I)V

    return-void

    :cond_3
    move-object/from16 v8, p2

    move-wide v13, v6

    move-wide/from16 v8, v18

    goto :goto_3
.end method

.method public static d([I[I)V
    .locals 6

    const/16 v0, 0x20

    aget v0, p0, v0

    const/16 v1, 0x10

    move v3, v0

    move v2, v1

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_0

    add-int/lit8 v2, v2, 0xf

    aget v2, p0, v2

    ushr-int/lit8 v5, v2, 0x9

    shl-int/lit8 v3, v3, -0x9

    or-int/2addr v3, v5

    aput v3, p1, v4

    move v3, v2

    move v2, v4

    goto :goto_0

    :cond_0
    shl-int/lit8 v2, v3, -0x9

    ushr-int/lit8 v2, v2, 0x17

    ushr-int/lit8 v0, v0, 0x9

    add-int/2addr v2, v0

    invoke-static {v1, p0, p1}, Lorg/spongycastle/math/raw/Nat;->e(I[I[I)I

    move-result p0

    add-int/2addr p0, v2

    const/16 v0, 0x1ff

    if-gt p0, v0, :cond_1

    if-ne p0, v0, :cond_2

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->a:[I

    invoke-static {v1, p1, v2}, Lorg/spongycastle/math/raw/Nat;->i(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat;->n([I)I

    move-result v2

    add-int/2addr v2, p0

    and-int/lit16 p0, v2, 0x1ff

    :cond_2
    aput p0, p1, v1

    return-void
.end method

.method public static e([I)V
    .locals 4

    const/16 v0, 0x10

    aget v1, p0, v0

    ushr-int/lit8 v2, v1, 0x9

    invoke-static {v0, v2, p0}, Lorg/spongycastle/math/raw/Nat;->g(II[I)I

    move-result v2

    const/16 v3, 0x1ff

    and-int/2addr v1, v3

    add-int/2addr v2, v1

    if-gt v2, v3, :cond_0

    if-ne v2, v3, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->a:[I

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->i(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat;->n([I)I

    move-result v1

    add-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x1ff

    :cond_1
    aput v2, p0, v0

    return-void
.end method

.method public static f([I[I)V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->b([I[I)V

    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->d([I[I)V

    return-void
.end method

.method public static g([I[I[I)V
    .locals 4

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->v(I[I[I[I)I

    move-result v1

    aget p0, p0, v0

    add-int/2addr v1, p0

    aget p0, p1, v0

    sub-int/2addr v1, p0

    if-gez v1, :cond_2

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    const/4 v2, -0x1

    if-ge p1, v0, :cond_1

    aget v3, p2, p1

    add-int/lit8 v3, v3, -0x1

    aput v3, p2, p1

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_1
    add-int/2addr v1, p0

    and-int/lit16 v1, v1, 0x1ff

    :cond_2
    aput v1, p2, v0

    return-void
.end method
