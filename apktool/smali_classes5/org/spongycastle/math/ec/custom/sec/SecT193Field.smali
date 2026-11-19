.class public Lorg/spongycastle/math/ec/custom/sec/SecT193Field;
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

    const-wide v12, 0x1ffffffffffffL

    and-long v14, v1, v12

    aput-wide v14, p1, v0

    const/16 v0, 0x31

    ushr-long v0, v1, v0

    const/16 v2, 0xf

    shl-long v14, v4, v2

    xor-long/2addr v0, v14

    and-long/2addr v0, v12

    aput-wide v0, p1, v3

    const/16 v0, 0x22

    ushr-long v0, v4, v0

    const/16 v2, 0x1e

    shl-long v2, v7, v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v12

    aput-wide v0, p1, v6

    const/16 v0, 0x13

    ushr-long v0, v7, v0

    const/16 v2, 0x2d

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

    invoke-static {v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->b([J[J)V

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->b([J[J)V

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    aget-wide v8, v2, v3

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

    const/4 v4, 0x1

    aget-wide v12, v1, v4

    aget-wide v14, v2, v4

    const/4 v11, 0x1

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

    const/4 v5, 0x2

    aget-wide v12, v1, v5

    aget-wide v14, v2, v5

    const/4 v11, 0x2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

    const/4 v6, 0x3

    aget-wide v12, v1, v6

    aget-wide v14, v2, v6

    const/4 v11, 0x3

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

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

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

    aget-wide v8, v1, v5

    aget-wide v10, v1, v6

    xor-long v12, v8, v10

    aget-wide v8, v2, v5

    aget-wide v10, v2, v6

    xor-long v14, v8, v10

    const/4 v11, 0x3

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

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

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

    new-array v13, v6, [J

    const/4 v14, 0x0

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    invoke-static/range {v13 .. v18}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

    const/16 v19, 0x1

    move-object/from16 v18, v13

    invoke-static/range {v18 .. v23}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->d([JIJJ)V

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

    const/16 v24, 0x31

    shl-long v24, v17, v24

    xor-long v15, v15, v24

    aput-wide v15, p2, v3

    const/16 v3, 0xf

    ushr-long v15, v17, v3

    const/16 v3, 0x22

    shl-long v17, v13, v3

    xor-long v15, v15, v17

    aput-wide v15, p2, v4

    const/16 v3, 0x1e

    ushr-long v3, v13, v3

    const/16 v13, 0x13

    shl-long v13, v1, v13

    xor-long/2addr v3, v13

    aput-wide v3, p2, v5

    const/16 v3, 0x2d

    ushr-long/2addr v1, v3

    shl-long v3, v9, v0

    xor-long/2addr v1, v3

    const/16 v3, 0x35

    shl-long v3, v11, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v6

    const/16 v1, 0x3c

    ushr-long v1, v9, v1

    const/16 v3, 0x26

    shl-long v3, v20, v3

    xor-long/2addr v1, v3

    const/16 v3, 0xb

    ushr-long v3, v11, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/16 v0, 0x1a

    ushr-long v0, v20, v0

    const/16 v2, 0x17

    shl-long v2, v22, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    const/16 v0, 0x29

    ushr-long v0, v22, v0

    aput-wide v0, p2, v19

    const-wide/16 v0, 0x0

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

    const/4 v6, 0x5

    xor-long v8, v8, p4

    aput-wide v8, v2, v6

    shl-long/2addr v4, v3

    const/4 v6, 0x6

    aput-wide v4, v2, v6

    xor-long v4, v4, p4

    const/4 v8, 0x7

    aput-wide v4, v2, v8

    long-to-int v4, v0

    and-int/lit8 v5, v4, 0x7

    aget-wide v9, v2, v5

    ushr-int/2addr v4, v7

    and-int/2addr v4, v8

    aget-wide v4, v2, v4

    shl-long/2addr v4, v7

    xor-long/2addr v4, v9

    const-wide/16 v9, 0x0

    const/16 v11, 0x24

    :cond_0
    ushr-long v12, v0, v11

    long-to-int v12, v12

    and-int/lit8 v13, v12, 0x7

    aget-wide v13, v2, v13

    ushr-int/lit8 v15, v12, 0x3

    and-int/2addr v15, v8

    aget-wide v15, v2, v15

    shl-long/2addr v15, v7

    xor-long/2addr v13, v15

    ushr-int/lit8 v15, v12, 0x6

    and-int/2addr v15, v8

    aget-wide v15, v2, v15

    shl-long/2addr v15, v6

    xor-long/2addr v13, v15

    ushr-int/lit8 v15, v12, 0x9

    and-int/2addr v15, v8

    aget-wide v15, v2, v15

    const/16 v17, 0x9

    shl-long v15, v15, v17

    xor-long/2addr v13, v15

    const/16 v15, 0xc

    ushr-int/2addr v12, v15

    and-int/2addr v12, v8

    aget-wide v16, v2, v12

    shl-long v15, v16, v15

    xor-long v12, v13, v15

    shl-long v14, v12, v11

    xor-long/2addr v4, v14

    neg-int v14, v11

    ushr-long/2addr v12, v14

    xor-long/2addr v9, v12

    add-int/lit8 v11, v11, -0xf

    if-gtz v11, :cond_0

    aget-wide v0, p0, p1

    const-wide v6, 0x1ffffffffffffL

    and-long/2addr v6, v4

    xor-long/2addr v0, v6

    aput-wide v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    aget-wide v1, p0, v0

    const/16 v3, 0x31

    ushr-long v3, v4, v3

    const/16 v5, 0xf

    shl-long v5, v9, v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

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

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/4 p0, 0x6

    aput-wide v0, p1, p0

    return-void
.end method

.method public static f([J[J[J)V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->c([J[J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->g([J[J)V

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

    const/16 v18, 0x3f

    shl-long v19, v16, v18

    xor-long v7, v7, v19

    ushr-long v19, v16, v3

    const/16 v21, 0xe

    shl-long v22, v16, v21

    xor-long v19, v19, v22

    xor-long v10, v10, v19

    const/16 v19, 0x32

    ushr-long v16, v16, v19

    xor-long v12, v12, v16

    shl-long v16, v14, v18

    xor-long v4, v4, v16

    ushr-long v16, v14, v3

    shl-long v22, v14, v21

    xor-long v16, v16, v22

    xor-long v7, v7, v16

    ushr-long v14, v14, v19

    xor-long/2addr v10, v14

    shl-long v14, v12, v18

    xor-long/2addr v1, v14

    ushr-long v14, v12, v3

    shl-long v16, v12, v21

    xor-long v14, v14, v16

    xor-long/2addr v4, v14

    ushr-long v12, v12, v19

    xor-long/2addr v7, v12

    ushr-long v12, v10, v3

    xor-long/2addr v1, v12

    const/16 v14, 0xf

    shl-long/2addr v12, v14

    xor-long/2addr v1, v12

    aput-wide v1, p1, v0

    ushr-long v0, v10, v19

    xor-long/2addr v0, v4

    aput-wide v0, p1, v3

    aput-wide v7, p1, v6

    const-wide/16 v0, 0x1

    and-long/2addr v0, v10

    aput-wide v0, p1, v9

    return-void
.end method

.method public static h([JI[J)V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->e([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->g([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->e([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->g([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
