.class public Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/16 v2, -0x538d

    filled-new-array {v2, v0, v1, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->a:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->b:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1b44bba9
        0xa71a
        0x1
        0x0
        0x0
        -0xa71a
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1b44bba9
        -0xa71b
        -0x2
        -0x1
        -0x1
        0xa719
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I[I[I)V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat160;->i([I[I[I)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->c([I[I)V

    return-void
.end method

.method public static b([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat160;->j([I[I[I)I

    move-result p0

    const/16 p1, 0xa

    if-nez p0, :cond_0

    const/16 p0, 0x9

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->b:[I

    invoke-static {p1, p2, p0}, Lorg/spongycastle/math/raw/Nat;->l(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->c:[I

    const/4 v0, 0x7

    invoke-static {v0, p0, p2}, Lorg/spongycastle/math/raw/Nat;->e(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->o(I[II)I

    :cond_1
    return-void
.end method

.method public static c([I[I)V
    .locals 24

    move-object/from16 v0, p1

    const/4 v1, 0x5

    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/16 v6, 0x538d

    mul-long v8, v6, v2

    const/4 v10, 0x0

    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v4

    add-long/2addr v8, v11

    long-to-int v11, v8

    aput v11, v0, v10

    const/16 v12, 0x20

    ushr-long/2addr v8, v12

    const/4 v13, 0x6

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v4

    mul-long v15, v6, v13

    add-long/2addr v15, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    move/from16 v17, v2

    int-to-long v2, v3

    and-long/2addr v2, v4

    add-long/2addr v15, v2

    add-long v2, v15, v8

    long-to-int v8, v2

    aput v8, v0, v17

    ushr-long/2addr v2, v12

    const/4 v9, 0x7

    aget v9, p0, v9

    move-wide v15, v4

    int-to-long v4, v9

    and-long/2addr v4, v15

    mul-long v18, v6, v4

    add-long v18, v18, v13

    const/4 v9, 0x2

    aget v13, p0, v9

    int-to-long v13, v13

    and-long/2addr v13, v15

    add-long v18, v18, v13

    add-long v2, v18, v2

    long-to-int v13, v2

    aput v13, v0, v9

    ushr-long/2addr v2, v12

    const/16 v14, 0x8

    aget v14, p0, v14

    move-wide/from16 v18, v6

    int-to-long v6, v14

    and-long/2addr v6, v15

    mul-long v20, v18, v6

    add-long v20, v20, v4

    const/4 v4, 0x3

    aget v5, p0, v4

    move v14, v4

    int-to-long v4, v5

    and-long/2addr v4, v15

    add-long v20, v20, v4

    add-long v2, v20, v2

    long-to-int v4, v2

    aput v4, v0, v14

    ushr-long/2addr v2, v12

    const/16 v5, 0x9

    aget v5, p0, v5

    move/from16 v21, v9

    move/from16 v20, v10

    int-to-long v9, v5

    and-long/2addr v9, v15

    mul-long v22, v18, v9

    add-long v22, v22, v6

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v15

    add-long v22, v22, v6

    add-long v2, v22, v2

    long-to-int v6, v2

    aput v6, v0, v5

    ushr-long/2addr v2, v12

    add-long/2addr v2, v9

    and-long v6, v2, v15

    mul-long v9, v18, v6

    move-wide/from16 v22, v15

    move/from16 v16, v14

    int-to-long v14, v11

    and-long v14, v14, v22

    add-long/2addr v9, v14

    long-to-int v11, v9

    aput v11, v0, v20

    ushr-long/2addr v9, v12

    ushr-long/2addr v2, v12

    mul-long v14, v18, v2

    add-long/2addr v14, v6

    int-to-long v6, v8

    and-long v6, v6, v22

    add-long/2addr v14, v6

    add-long/2addr v14, v9

    long-to-int v6, v14

    aput v6, v0, v17

    ushr-long v6, v14, v12

    int-to-long v8, v13

    and-long v8, v8, v22

    add-long/2addr v2, v8

    add-long/2addr v2, v6

    long-to-int v6, v2

    aput v6, v0, v21

    ushr-long/2addr v2, v12

    int-to-long v6, v4

    and-long v6, v6, v22

    add-long/2addr v2, v6

    long-to-int v4, v2

    aput v4, v0, v16

    ushr-long/2addr v2, v12

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    move/from16 v10, v20

    goto :goto_0

    :cond_0
    invoke-static {v1, v5, v0}, Lorg/spongycastle/math/raw/Nat;->p(II[I)I

    move-result v10

    :goto_0
    if-nez v10, :cond_2

    aget v2, v0, v5

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->a:[I

    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat160;->f([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/16 v2, 0x538d

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Nat;->b(II[I)V

    return-void
.end method

.method public static d(I[I)V
    .locals 11

    const/4 v0, 0x5

    if-eqz p0, :cond_1

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x538d

    mul-long/2addr v5, v1

    const/4 p0, 0x0

    aget v7, p1, p0

    int-to-long v7, v7

    and-long/2addr v7, v3

    add-long/2addr v5, v7

    long-to-int v7, v5

    aput v7, p1, p0

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    const/4 v8, 0x1

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v1, v9

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v8

    ushr-long/2addr v1, v7

    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v8, v6

    and-long/2addr v3, v8

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p1, v5

    ushr-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->p(II[I)I

    move-result p0

    :goto_0
    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x4

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_3

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->a:[I

    invoke-static {p1, p0}, Lorg/spongycastle/math/raw/Nat160;->f([I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/16 p0, 0x538d

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->b(II[I)V

    :cond_3
    return-void
.end method

.method public static e([I[I)V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat160;->k([I[I)V

    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->c([I[I)V

    return-void
.end method

.method public static f([II[I)V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat160;->k([I[I)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->c([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat160;->k([I[I)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->c([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat160;->l([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    const/16 p1, 0x538d

    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->w(II[I)V

    :cond_0
    return-void
.end method

.method public static h([I[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v1, p0, v0, p1}, Lorg/spongycastle/math/raw/Nat;->s(I[II[I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x4

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R2Field;->a:[I

    invoke-static {p1, p0}, Lorg/spongycastle/math/raw/Nat160;->f([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/16 p0, 0x538d

    invoke-static {v1, p0, p1}, Lorg/spongycastle/math/raw/Nat;->b(II[I)V

    return-void
.end method
