.class public abstract Lorg/spongycastle/math/raw/Nat128;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static b([I[I)Z
    .locals 4

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_2

    aget v1, p0, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p1, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static c([I)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static d([I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e([I[I[I)V
    .locals 23

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    aget v14, p0, v0

    int-to-long v14, v14

    and-long/2addr v14, v3

    move/from16 v16, v0

    move-wide/from16 v17, v1

    mul-long v0, v14, v17

    long-to-int v2, v0

    aput v2, p2, v16

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v19, v14, v6

    add-long v0, v19, v0

    move/from16 p1, v2

    long-to-int v2, v0

    aput v2, p2, v5

    ushr-long v0, v0, p1

    mul-long v19, v14, v9

    add-long v0, v19, v0

    long-to-int v2, v0

    aput v2, p2, v8

    ushr-long v0, v0, p1

    mul-long/2addr v14, v12

    add-long/2addr v14, v0

    long-to-int v0, v14

    aput v0, p2, v11

    ushr-long v0, v14, p1

    long-to-int v0, v0

    const/4 v1, 0x4

    aput v0, p2, v1

    :goto_0
    if-ge v5, v1, :cond_0

    aget v0, p0, v5

    int-to-long v14, v0

    and-long/2addr v14, v3

    mul-long v19, v14, v17

    aget v0, p2, v5

    int-to-long v1, v0

    and-long v0, v1, v3

    add-long v0, v19, v0

    long-to-int v2, v0

    aput v2, p2, v5

    ushr-long v0, v0, p1

    mul-long v19, v14, v6

    add-int/lit8 v2, v5, 0x1

    aget v11, p2, v2

    move-wide/from16 v21, v3

    int-to-long v3, v11

    and-long v3, v3, v21

    add-long v19, v19, v3

    add-long v0, v19, v0

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long v0, v0, p1

    mul-long v3, v14, v9

    add-int/lit8 v11, v5, 0x2

    aget v8, p2, v11

    move-wide/from16 v19, v0

    int-to-long v0, v8

    and-long v0, v0, v21

    add-long/2addr v3, v0

    add-long v3, v3, v19

    long-to-int v0, v3

    aput v0, p2, v11

    ushr-long v0, v3, p1

    mul-long/2addr v14, v12

    add-int/lit8 v3, v5, 0x3

    aget v4, p2, v3

    move-wide/from16 v19, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    add-long/2addr v14, v0

    add-long v14, v14, v19

    long-to-int v0, v14

    aput v0, p2, v3

    ushr-long v0, v14, p1

    add-int/lit8 v5, v5, 0x4

    long-to-int v0, v0

    aput v0, p2, v5

    move v5, v2

    move-wide/from16 v3, v21

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f([I[I)V
    .locals 30

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x3

    const/16 v6, 0x8

    move v8, v0

    move v7, v5

    :goto_0
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_0

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    aget v8, p0, v7

    int-to-long v8, v8

    and-long v15, v8, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long v13, v15, v1

    add-long/2addr v13, v11

    long-to-int v11, v13

    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v6, v12

    aput v6, p1, v7

    ushr-int/lit8 v6, v11, 0x1f

    ushr-long v11, v13, v0

    add-long/2addr v9, v11

    aget v11, p0, v8

    int-to-long v11, v11

    and-long v19, v11, v3

    aget v11, p1, v5

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v25, 0x4

    aget v13, p1, v25

    int-to-long v13, v13

    and-long v21, v13, v3

    mul-long v13, v19, v1

    add-long/2addr v13, v9

    long-to-int v9, v13

    shl-int/lit8 v10, v9, 0x1

    or-int/2addr v6, v10

    aput v6, p1, v8

    ushr-int/lit8 v6, v9, 0x1f

    ushr-long v17, v13, v0

    move-wide/from16 v13, v19

    move-wide/from16 v19, v11

    invoke-static/range {v13 .. v20}, Lz81;->c(JJJJ)J

    move-result-wide v8

    move-wide v10, v13

    ushr-long v12, v8, v0

    add-long v21, v21, v12

    and-long/2addr v8, v3

    aget v12, p0, v5

    int-to-long v12, v12

    and-long v17, v12, v3

    const/4 v12, 0x5

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    ushr-long v19, v21, v0

    add-long v13, v13, v19

    and-long v19, v21, v3

    const/16 v26, 0x6

    move/from16 v27, v0

    aget v0, p1, v26

    move-wide/from16 v28, v3

    int-to-long v3, v0

    and-long v3, v3, v28

    ushr-long v21, v13, v27

    add-long v3, v3, v21

    and-long v23, v13, v28

    mul-long v1, v1, v17

    add-long/2addr v1, v8

    long-to-int v0, v1

    shl-int/lit8 v8, v0, 0x1

    or-int/2addr v6, v8

    aput v6, p1, v5

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v1, v1, v27

    move-wide/from16 v13, v17

    move-wide/from16 v17, v1

    invoke-static/range {v13 .. v20}, Lz81;->c(JJJJ)J

    move-result-wide v1

    move-wide/from16 v17, v13

    ushr-long v21, v1, v27

    move-wide/from16 v19, v10

    invoke-static/range {v17 .. v24}, Lz81;->c(JJJJ)J

    move-result-wide v5

    ushr-long v8, v5, v27

    add-long/2addr v3, v8

    and-long v5, v5, v28

    long-to-int v1, v1

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v25

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v5

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v12

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v26

    ushr-int/lit8 v0, v1, 0x1f

    const/4 v1, 0x7

    aget v2, p1, v1

    ushr-long v3, v3, v27

    long-to-int v3, v3

    add-int/2addr v2, v3

    shl-int/2addr v2, v7

    or-int/2addr v0, v2

    aput v0, p1, v1

    return-void

    :cond_0
    move v7, v9

    goto/16 :goto_0
.end method

.method public static g([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method
