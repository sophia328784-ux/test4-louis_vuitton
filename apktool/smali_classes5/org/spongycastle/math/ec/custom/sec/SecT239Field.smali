.class public Lorg/spongycastle/math/ec/custom/sec/SecT239Field;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method

.method public static b([J[J)V
    .locals 16

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const-wide v12, 0xfffffffffffffffL

    and-long v14, v1, v12

    aput-wide v14, p1, v0

    const/16 v0, 0x3c

    ushr-long v0, v1, v0

    const/4 v2, 0x4

    shl-long v14, v4, v2

    xor-long/2addr v0, v14

    and-long/2addr v0, v12

    aput-wide v0, p1, v3

    const/16 v0, 0x38

    ushr-long v0, v4, v0

    const/16 v2, 0x8

    shl-long v2, v7, v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v12

    aput-wide v0, p1, v6

    const/16 v0, 0x34

    ushr-long v0, v7, v0

    const/16 v2, 0xc

    shl-long v2, v10, v2

    xor-long/2addr v0, v2

    aput-wide v0, p1, v9

    return-void
.end method

.method public static c([J[J[J)V
    .locals 26

    const/4 v0, 0x4

    new-array v1, v0, [J

    new-array v2, v0, [J

    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->b([J[J)V

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->b([J[J)V

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    aget-wide v8, v2, v3

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    const/4 v4, 0x1

    aget-wide v12, v1, v4

    aget-wide v14, v2, v4

    const/4 v11, 0x1

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    const/4 v5, 0x2

    aget-wide v12, v1, v5

    aget-wide v14, v2, v5

    const/4 v11, 0x2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    const/4 v6, 0x3

    aget-wide v12, v1, v6

    aget-wide v14, v2, v6

    const/4 v11, 0x3

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    const/4 v7, 0x5

    move v8, v7

    :goto_0
    if-lez v8, :cond_0

    aget-wide v9, p2, v8

    add-int/lit8 v11, v8, -0x1

    aget-wide v11, p2, v11

    xor-long/2addr v9, v11

    aput-wide v9, p2, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_0
    aget-wide v8, v1, v3

    aget-wide v10, v1, v4

    xor-long v12, v8, v10

    aget-wide v8, v2, v3

    aget-wide v10, v2, v4

    xor-long v14, v8, v10

    const/4 v11, 0x1

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    aget-wide v8, v1, v5

    aget-wide v10, v1, v6

    xor-long v12, v8, v10

    aget-wide v8, v2, v5

    aget-wide v10, v2, v6

    xor-long v14, v8, v10

    const/4 v11, 0x3

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    const/4 v8, 0x7

    move v9, v8

    :goto_1
    if-le v9, v4, :cond_1

    aget-wide v10, p2, v9

    add-int/lit8 v12, v9, -0x2

    aget-wide v12, p2, v12

    xor-long/2addr v10, v12

    aput-wide v10, p2, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_1
    aget-wide v9, v1, v3

    aget-wide v11, v1, v5

    xor-long v16, v9, v11

    aget-wide v9, v1, v4

    aget-wide v11, v1, v6

    xor-long v20, v9, v11

    aget-wide v9, v2, v3

    aget-wide v11, v2, v5

    xor-long v18, v9, v11

    aget-wide v9, v2, v4

    aget-wide v1, v2, v6

    xor-long v22, v9, v1

    xor-long v12, v16, v20

    xor-long v14, v18, v22

    const/4 v11, 0x3

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    new-array v13, v6, [J

    const/4 v14, 0x0

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    invoke-static/range {v13 .. v18}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    const/16 v19, 0x1

    move-object/from16 v18, v13

    invoke-static/range {v18 .. v23}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->d([JIJJ)V

    aget-wide v1, v13, v3

    aget-wide v9, v13, v4

    aget-wide v11, v13, v5

    aget-wide v13, p2, v5

    xor-long/2addr v13, v1

    aput-wide v13, p2, v5

    aget-wide v15, p2, v6

    xor-long/2addr v1, v9

    xor-long/2addr v1, v15

    aput-wide v1, p2, v6

    aget-wide v15, p2, v0

    xor-long/2addr v9, v11

    xor-long/2addr v9, v15

    aput-wide v9, p2, v0

    aget-wide v15, p2, v7

    xor-long/2addr v11, v15

    aput-wide v11, p2, v7

    aget-wide v15, p2, v3

    aget-wide v17, p2, v4

    const/16 v19, 0x6

    aget-wide v20, p2, v19

    aget-wide v22, p2, v8

    const/16 v24, 0x3c

    shl-long v24, v17, v24

    xor-long v15, v15, v24

    aput-wide v15, p2, v3

    ushr-long v15, v17, v0

    const/16 v3, 0x38

    shl-long v17, v13, v3

    xor-long v15, v15, v17

    aput-wide v15, p2, v4

    const/16 v3, 0x8

    ushr-long v3, v13, v3

    const/16 v13, 0x34

    shl-long v13, v1, v13

    xor-long/2addr v3, v13

    aput-wide v3, p2, v5

    const/16 v3, 0xc

    ushr-long/2addr v1, v3

    const/16 v3, 0x30

    shl-long v3, v9, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v6

    const/16 v1, 0x10

    ushr-long v1, v9, v1

    const/16 v3, 0x2c

    shl-long v3, v11, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/16 v0, 0x14

    ushr-long v0, v11, v0

    const/16 v2, 0x28

    shl-long v2, v20, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    const/16 v0, 0x18

    ushr-long v0, v20, v0

    const/16 v2, 0x24

    shl-long v2, v22, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v19

    const/16 v0, 0x1c

    ushr-long v0, v22, v0

    aput-wide v0, p2, v8

    return-void
.end method

.method public static d([JIJJ)V
    .locals 18

    move-wide/from16 v0, p2

    const/16 v2, 0x8

    new-array v2, v2, [J

    const/4 v3, 0x1

    aput-wide p4, v2, v3

    shl-long v4, p4, v3

    const/4 v6, 0x2

    aput-wide v4, v2, v6

    xor-long v4, v4, p4

    const/4 v7, 0x3

    aput-wide v4, v2, v7

    shl-long v8, p4, v6

    const/4 v6, 0x4

    aput-wide v8, v2, v6

    xor-long v8, v8, p4

    const/4 v10, 0x5

    aput-wide v8, v2, v10

    shl-long/2addr v4, v3

    const/4 v8, 0x6

    aput-wide v4, v2, v8

    xor-long v4, v4, p4

    const/4 v8, 0x7

    aput-wide v4, v2, v8

    long-to-int v4, v0

    and-int/lit8 v5, v4, 0x7

    aget-wide v11, v2, v5

    ushr-int/2addr v4, v7

    and-int/2addr v4, v8

    aget-wide v4, v2, v4

    shl-long/2addr v4, v7

    xor-long/2addr v4, v11

    const-wide/16 v11, 0x0

    const/16 v9, 0x36

    :cond_0
    ushr-long v13, v0, v9

    long-to-int v13, v13

    and-int/lit8 v14, v13, 0x7

    aget-wide v14, v2, v14

    ushr-int/2addr v13, v7

    and-int/2addr v13, v8

    aget-wide v16, v2, v13

    shl-long v16, v16, v7

    xor-long v13, v14, v16

    shl-long v15, v13, v9

    xor-long/2addr v4, v15

    neg-int v15, v9

    ushr-long/2addr v13, v15

    xor-long/2addr v11, v13

    add-int/lit8 v9, v9, -0x6

    if-gtz v9, :cond_0

    const-wide v7, 0x820820820820820L

    and-long/2addr v0, v7

    shl-long v7, p4, v6

    const/16 v2, 0x3f

    shr-long/2addr v7, v2

    and-long/2addr v0, v7

    ushr-long/2addr v0, v10

    xor-long/2addr v0, v11

    aget-wide v7, p0, p1

    const-wide v9, 0xfffffffffffffffL

    and-long/2addr v9, v4

    xor-long/2addr v7, v9

    aput-wide v7, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-wide v7, p0, v2

    const/16 v3, 0x3c

    ushr-long v3, v4, v3

    shl-long/2addr v0, v6

    xor-long/2addr v0, v3

    xor-long/2addr v0, v7

    aput-wide v0, p0, v2

    return-void
.end method

.method public static e([J[J)V
    .locals 4

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, v0}, Lorg/spongycastle/math/raw/Interleave;->c(J[JI)V

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/math/raw/Interleave;->c(J[JI)V

    aget-wide v0, p0, v2

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/math/raw/Interleave;->c(J[JI)V

    const/4 v0, 0x3

    aget-wide v0, p0, v0

    long-to-int p0, v0

    invoke-static {p0}, Lorg/spongycastle/math/raw/Interleave;->b(I)J

    move-result-wide v2

    const/4 p0, 0x6

    aput-wide v2, p1, p0

    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    invoke-static {p0}, Lorg/spongycastle/math/raw/Interleave;->a(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x7

    aput-wide v0, p1, p0

    return-void
.end method

.method public static f([J[J[J)V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->c([J[J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->g([J[J)V

    return-void
.end method

.method public static g([J[J)V
    .locals 24

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const/4 v12, 0x4

    aget-wide v12, p0, v12

    const/4 v14, 0x5

    aget-wide v14, p0, v14

    const/16 v16, 0x6

    aget-wide v16, p0, v16

    const/16 v18, 0x7

    aget-wide v18, p0, v18

    const/16 v20, 0x11

    shl-long v21, v18, v20

    xor-long v10, v10, v21

    const/16 v21, 0x2f

    ushr-long v22, v18, v21

    xor-long v12, v12, v22

    shl-long v22, v18, v21

    xor-long v14, v14, v22

    ushr-long v18, v18, v20

    xor-long v16, v16, v18

    shl-long v18, v16, v20

    xor-long v7, v7, v18

    ushr-long v18, v16, v21

    xor-long v10, v10, v18

    shl-long v18, v16, v21

    xor-long v12, v12, v18

    ushr-long v16, v16, v20

    xor-long v14, v14, v16

    shl-long v16, v14, v20

    xor-long v4, v4, v16

    ushr-long v16, v14, v21

    xor-long v7, v7, v16

    shl-long v16, v14, v21

    xor-long v10, v10, v16

    ushr-long v14, v14, v20

    xor-long/2addr v12, v14

    shl-long v14, v12, v20

    xor-long/2addr v1, v14

    ushr-long v14, v12, v21

    xor-long/2addr v4, v14

    shl-long v14, v12, v21

    xor-long/2addr v7, v14

    ushr-long v12, v12, v20

    xor-long/2addr v10, v12

    ushr-long v12, v10, v21

    xor-long/2addr v1, v12

    aput-wide v1, p1, v0

    aput-wide v4, p1, v3

    const/16 v0, 0x1e

    shl-long v0, v12, v0

    xor-long/2addr v0, v7

    aput-wide v0, p1, v6

    const-wide v0, 0x7fffffffffffL

    and-long/2addr v0, v10

    aput-wide v0, p1, v9

    return-void
.end method

.method public static h([J[J)V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->e([J[J)V

    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->g([J[J)V

    return-void
.end method

.method public static i([JI[J)V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->e([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->g([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->e([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->g([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
