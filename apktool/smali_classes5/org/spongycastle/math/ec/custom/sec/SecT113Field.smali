.class public Lorg/spongycastle/math/ec/custom/sec/SecT113Field;
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

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method

.method public static b([J[J[J)V
    .locals 26

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x39

    ushr-long v7, v1, v6

    const/4 v9, 0x7

    shl-long/2addr v4, v9

    xor-long/2addr v4, v7

    const-wide v7, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long v12, v4, v7

    and-long v16, v1, v7

    aget-wide v1, p1, v0

    aget-wide v4, p1, v3

    ushr-long v10, v1, v6

    shl-long/2addr v4, v9

    xor-long/2addr v4, v10

    and-long/2addr v4, v7

    and-long v18, v1, v7

    const/4 v1, 0x6

    new-array v14, v1, [J

    const/4 v15, 0x0

    invoke-static/range {v14 .. v19}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->c([JIJJ)V

    const/4 v11, 0x2

    move-object v10, v14

    move-wide v14, v4

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->c([JIJJ)V

    move-object/from16 v20, v10

    xor-long v22, v16, v12

    xor-long v24, v18, v14

    const/16 v21, 0x4

    invoke-static/range {v20 .. v25}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->c([JIJJ)V

    move-object/from16 v14, v20

    aget-wide v1, v14, v3

    const/4 v4, 0x2

    aget-wide v7, v14, v4

    xor-long/2addr v1, v7

    aget-wide v7, v14, v0

    const/4 v5, 0x3

    aget-wide v10, v14, v5

    const/4 v12, 0x4

    aget-wide v12, v14, v12

    xor-long/2addr v12, v7

    xor-long/2addr v12, v1

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    xor-long/2addr v14, v10

    xor-long/2addr v1, v14

    shl-long v14, v12, v6

    xor-long v6, v7, v14

    aput-wide v6, p2, v0

    ushr-long v6, v12, v9

    const/16 v0, 0x32

    shl-long v8, v1, v0

    xor-long/2addr v6, v8

    aput-wide v6, p2, v3

    const/16 v0, 0xe

    ushr-long v0, v1, v0

    const/16 v2, 0x2b

    shl-long v2, v10, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    const/16 v0, 0x15

    ushr-long v0, v10, v0

    aput-wide v0, p2, v5

    return-void
.end method

.method public static c([JIJJ)V
    .locals 18

    move-wide/from16 v0, p2

    const/16 v2, 0x8

    new-array v3, v2, [J

    const/4 v4, 0x1

    aput-wide p4, v3, v4

    shl-long v5, p4, v4

    const/4 v7, 0x2

    aput-wide v5, v3, v7

    xor-long v5, v5, p4

    const/4 v8, 0x3

    aput-wide v5, v3, v8

    shl-long v9, p4, v7

    const/4 v7, 0x4

    aput-wide v9, v3, v7

    const/4 v7, 0x5

    xor-long v9, v9, p4

    aput-wide v9, v3, v7

    shl-long/2addr v5, v4

    const/4 v7, 0x6

    aput-wide v5, v3, v7

    xor-long v5, v5, p4

    const/4 v9, 0x7

    aput-wide v5, v3, v9

    long-to-int v5, v0

    and-int/2addr v5, v9

    aget-wide v5, v3, v5

    const-wide/16 v10, 0x0

    const/16 v12, 0x30

    :cond_0
    ushr-long v13, v0, v12

    long-to-int v13, v13

    and-int/lit8 v14, v13, 0x7

    aget-wide v14, v3, v14

    ushr-int/lit8 v16, v13, 0x3

    and-int/lit8 v16, v16, 0x7

    aget-wide v16, v3, v16

    shl-long v16, v16, v8

    xor-long v14, v14, v16

    ushr-int/2addr v13, v7

    and-int/2addr v13, v9

    aget-wide v16, v3, v13

    shl-long v16, v16, v7

    xor-long v13, v14, v16

    shl-long v15, v13, v12

    xor-long/2addr v5, v15

    neg-int v15, v12

    ushr-long/2addr v13, v15

    xor-long/2addr v10, v13

    add-int/lit8 v12, v12, -0x9

    if-gtz v12, :cond_0

    const-wide v7, 0x100804020100800L

    and-long/2addr v0, v7

    shl-long v7, p4, v9

    const/16 v3, 0x3f

    shr-long/2addr v7, v3

    and-long/2addr v0, v7

    ushr-long/2addr v0, v2

    xor-long/2addr v0, v10

    const-wide v2, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v2, v5

    aput-wide v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x39

    ushr-long v3, v5, v3

    shl-long/2addr v0, v9

    xor-long/2addr v0, v3

    aput-wide v0, p0, v2

    return-void
.end method

.method public static d([J[J)V
    .locals 3

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, v0}, Lorg/spongycastle/math/raw/Interleave;->c(J[JI)V

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const/4 p0, 0x2

    invoke-static {v0, v1, p1, p0}, Lorg/spongycastle/math/raw/Interleave;->c(J[JI)V

    return-void
.end method

.method public static e([J[J[J)V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->b([J[J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->f([J[J)V

    return-void
.end method

.method public static f([J[J)V
    .locals 16

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v6, p0, v6

    const/4 v8, 0x3

    aget-wide v8, p0, v8

    const/16 v10, 0xf

    shl-long v11, v8, v10

    const/16 v13, 0x18

    shl-long v14, v8, v13

    xor-long/2addr v11, v14

    xor-long/2addr v4, v11

    const/16 v11, 0x31

    ushr-long v14, v8, v11

    const/16 v12, 0x28

    ushr-long/2addr v8, v12

    xor-long/2addr v8, v14

    xor-long/2addr v6, v8

    shl-long v8, v6, v10

    shl-long v13, v6, v13

    xor-long/2addr v8, v13

    xor-long/2addr v1, v8

    ushr-long v8, v6, v11

    ushr-long/2addr v6, v12

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    ushr-long v6, v4, v11

    xor-long/2addr v1, v6

    const/16 v8, 0x9

    shl-long/2addr v6, v8

    xor-long/2addr v1, v6

    aput-wide v1, p1, v0

    const-wide v0, 0x1ffffffffffffL

    and-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public static g([JI[J)V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->d([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->f([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->d([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT113Field;->f([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
