.class public Lorg/spongycastle/math/ec/custom/sec/SecT571Field;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a:[J

    return-void

    :array_0
    .array-data 8
        0x2be1195f08cafb99L    # 2.5016400602366306E-97
        -0x6a0f73507b9a83ddL    # -5.27848393260514E-203
        -0x3507b9a83dcd41efL    # -1.4531635499737842E53
        0x657c232be1195f08L    # 7.297283174828906E180
        -0x7b9a83dcf73507cL
        0x7c232be1195f08caL    # 9.34156735235881E289
        -0x41ee6a0f73507b9bL    # -1.02362256409199E-9
        0x5f08caf84657c232L    # 6.340366030377565E149
        0x784657c232be119L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b([JI[JI[JI)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int v1, p5, v0

    aget-wide v2, p4, v1

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p3, v0

    aget-wide v6, p2, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c([J[J[J)V
    .locals 24

    const/16 v0, 0x38

    move v1, v0

    :goto_0
    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, -0x8

    const/16 v7, 0x10

    const/16 v8, 0x9

    if-ltz v1, :cond_2

    const/4 v9, 0x1

    :goto_1
    if-ge v9, v8, :cond_0

    aget-wide v10, p0, v9

    ushr-long/2addr v10, v1

    long-to-int v10, v10

    and-int/lit8 v11, v10, 0xf

    ushr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    mul-int/lit8 v13, v11, 0x9

    add-int/2addr v10, v7

    mul-int/lit8 v15, v10, 0x9

    add-int/lit8 v17, v9, -0x1

    move-object/from16 v14, p1

    move-object/from16 v12, p1

    move-object/from16 v16, p2

    invoke-static/range {v12 .. v17}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->b([JI[JI[JI)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_0
    :goto_2
    if-ge v5, v7, :cond_1

    aget-wide v8, p2, v5

    shl-long v10, v8, v4

    ushr-long/2addr v2, v6

    or-long/2addr v2, v10

    aput-wide v2, p2, v5

    add-int/lit8 v5, v5, 0x1

    move-wide v2, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_2
    :goto_3
    if-ltz v0, :cond_5

    move v1, v5

    :goto_4
    if-ge v1, v8, :cond_3

    aget-wide v9, p0, v1

    ushr-long/2addr v9, v0

    long-to-int v9, v9

    and-int/lit8 v10, v9, 0xf

    ushr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    mul-int/lit8 v19, v10, 0x9

    add-int/2addr v9, v7

    mul-int/lit8 v21, v9, 0x9

    move-object/from16 v20, p1

    move-object/from16 v18, p1

    move-object/from16 v22, p2

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->b([JI[JI[JI)V

    add-int/lit8 v1, v23, 0x2

    goto :goto_4

    :cond_3
    if-lez v0, :cond_4

    move-wide v9, v2

    move v1, v5

    :goto_5
    const/16 v11, 0x12

    if-ge v1, v11, :cond_4

    aget-wide v11, p2, v1

    shl-long v13, v11, v4

    ushr-long/2addr v9, v6

    or-long/2addr v9, v13

    aput-wide v9, p2, v1

    add-int/lit8 v1, v1, 0x1

    move-wide v9, v11

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, -0x8

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static d([J[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    shl-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, p1, v3}, Lorg/spongycastle/math/raw/Interleave;->c(J[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e([J[J[J)V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [J

    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->h([J)[J

    move-result-object p1

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->c([J[J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    return-void
.end method

.method public static f([J[J[J)V
    .locals 6

    const/16 v0, 0x12

    new-array v1, v0, [J

    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->h([J)[J

    move-result-object p1

    invoke-static {p0, p1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->c([J[J[J)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    aget-wide v2, p2, p0

    aget-wide v4, v1, p0

    xor-long/2addr v2, v4

    aput-wide v2, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g([J[J[J)V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->c([J[J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    return-void
.end method

.method public static h([J)[J
    .locals 15

    const/16 v0, 0x120

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {p0, v1, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x7

    move v3, v1

    :goto_0
    const-wide/16 v4, 0x0

    if-lez p0, :cond_2

    add-int/lit8 v6, v3, 0x12

    ushr-int/lit8 v7, v6, 0x1

    move v8, v1

    :goto_1
    if-ge v8, v2, :cond_0

    add-int v9, v7, v8

    aget-wide v9, v0, v9

    add-int v11, v6, v8

    const/4 v12, 0x1

    shl-long v12, v9, v12

    const/16 v14, 0x3f

    ushr-long/2addr v4, v14

    or-long/2addr v4, v12

    aput-wide v4, v0, v11

    add-int/lit8 v8, v8, 0x1

    move-wide v4, v9

    goto :goto_1

    :cond_0
    invoke-static {v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->j([JI)V

    add-int/lit8 v3, v3, 0x1b

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_1

    add-int v5, v3, v4

    add-int v7, v2, v4

    aget-wide v7, v0, v7

    add-int v9, v6, v4

    aget-wide v9, v0, v9

    xor-long/2addr v7, v9

    aput-wide v7, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, -0x1

    move v3, v6

    goto :goto_0

    :cond_2
    :goto_3
    const/16 p0, 0x90

    if-ge v1, p0, :cond_3

    aget-wide v2, v0, v1

    add-int/2addr p0, v1

    const/4 v6, 0x4

    shl-long v6, v2, v6

    const/4 v8, -0x4

    ushr-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v0, p0

    add-int/lit8 v1, v1, 0x1

    move-wide v4, v2

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public static i([J[J)V
    .locals 19

    const/16 v0, 0x9

    aget-wide v0, p0, v0

    const/16 v2, 0x11

    aget-wide v2, p0, v2

    const/16 v4, 0x3b

    ushr-long v5, v2, v4

    xor-long/2addr v0, v5

    const/16 v5, 0x39

    ushr-long v6, v2, v5

    xor-long/2addr v0, v6

    const/16 v6, 0x36

    ushr-long v7, v2, v6

    xor-long/2addr v0, v7

    const/16 v7, 0x31

    ushr-long v8, v2, v7

    xor-long/2addr v0, v8

    const/16 v8, 0x8

    aget-wide v9, p0, v8

    const/4 v11, 0x5

    shl-long v12, v2, v11

    xor-long/2addr v9, v12

    const/4 v12, 0x7

    shl-long v13, v2, v12

    xor-long/2addr v9, v13

    const/16 v13, 0xa

    shl-long v14, v2, v13

    xor-long/2addr v9, v14

    const/16 v14, 0xf

    shl-long/2addr v2, v14

    xor-long/2addr v2, v9

    const/16 v9, 0x10

    :goto_0
    if-lt v9, v13, :cond_0

    aget-wide v15, p0, v9

    add-int/lit8 v10, v9, -0x8

    ushr-long v17, v15, v4

    xor-long v2, v2, v17

    ushr-long v17, v15, v5

    xor-long v2, v2, v17

    ushr-long v17, v15, v6

    xor-long v2, v2, v17

    ushr-long v17, v15, v7

    xor-long v2, v2, v17

    aput-wide v2, p1, v10

    add-int/lit8 v2, v9, -0x9

    aget-wide v2, p0, v2

    shl-long v17, v15, v11

    xor-long v2, v2, v17

    shl-long v17, v15, v12

    xor-long v2, v2, v17

    shl-long v17, v15, v13

    xor-long v2, v2, v17

    shl-long/2addr v15, v14

    xor-long/2addr v2, v15

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_0
    ushr-long v9, v0, v4

    xor-long/2addr v2, v9

    ushr-long v9, v0, v5

    xor-long/2addr v2, v9

    ushr-long v5, v0, v6

    xor-long/2addr v2, v5

    ushr-long v5, v0, v7

    xor-long/2addr v2, v5

    const/4 v5, 0x1

    aput-wide v2, p1, v5

    const/4 v2, 0x0

    aget-wide v5, p0, v2

    shl-long v9, v0, v11

    xor-long/2addr v5, v9

    shl-long v9, v0, v12

    xor-long/2addr v5, v9

    shl-long v9, v0, v13

    xor-long/2addr v5, v9

    shl-long/2addr v0, v14

    xor-long/2addr v0, v5

    aget-wide v5, p1, v8

    ushr-long v3, v5, v4

    xor-long/2addr v0, v3

    const/4 v7, 0x2

    shl-long v9, v3, v7

    xor-long/2addr v0, v9

    shl-long v9, v3, v11

    xor-long/2addr v0, v9

    shl-long/2addr v3, v13

    xor-long/2addr v0, v3

    aput-wide v0, p1, v2

    const-wide v0, 0x7ffffffffffffffL

    and-long/2addr v0, v5

    aput-wide v0, p1, v8

    return-void
.end method

.method public static j([JI)V
    .locals 11

    add-int/lit8 v0, p1, 0x8

    aget-wide v1, p0, v0

    const/16 v3, 0x3b

    ushr-long v3, v1, v3

    aget-wide v5, p0, p1

    const/4 v7, 0x2

    shl-long v7, v3, v7

    xor-long/2addr v7, v3

    const/4 v9, 0x5

    shl-long v9, v3, v9

    xor-long/2addr v7, v9

    const/16 v9, 0xa

    shl-long/2addr v3, v9

    xor-long/2addr v3, v7

    xor-long/2addr v3, v5

    aput-wide v3, p0, p1

    const-wide v3, 0x7ffffffffffffffL

    and-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method public static k([J[J)V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->d([J[J)V

    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    return-void
.end method

.method public static l([JI[J)V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->d([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->d([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
