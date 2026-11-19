.class public Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x169
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I[I[I)V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat256;->p([I[I[I)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->b([I[I)V

    return-void
.end method

.method public static b([I[I)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x7

    aget v2, p0, v1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    const/16 v6, 0x8

    if-ge v4, v6, :cond_0

    add-int/2addr v6, v4

    aget v6, p0, v6

    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v7

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_0
    aget v4, v0, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x13

    mul-long/2addr v4, v8

    aget v10, p0, v3

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    long-to-int v10, v4

    aput v10, v0, v3

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    const/4 v10, 0x1

    aget v11, v0, v10

    int-to-long v11, v11

    and-long/2addr v11, v6

    mul-long/2addr v11, v8

    aget v13, p0, v10

    int-to-long v13, v13

    and-long/2addr v13, v6

    add-long/2addr v11, v13

    add-long/2addr v11, v4

    long-to-int v4, v11

    aput v4, v0, v10

    ushr-long v4, v11, v3

    const/4 v11, 0x2

    aget v12, v0, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    mul-long/2addr v12, v8

    aget v14, p0, v11

    int-to-long v14, v14

    and-long/2addr v14, v6

    add-long/2addr v12, v14

    add-long/2addr v12, v4

    long-to-int v4, v12

    aput v4, v0, v11

    ushr-long v4, v12, v3

    const/4 v11, 0x3

    aget v12, v0, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    mul-long/2addr v12, v8

    aget v14, p0, v11

    int-to-long v14, v14

    and-long/2addr v14, v6

    add-long/2addr v12, v14

    add-long/2addr v12, v4

    long-to-int v4, v12

    aput v4, v0, v11

    ushr-long v4, v12, v3

    const/4 v11, 0x4

    aget v12, v0, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    mul-long/2addr v12, v8

    aget v14, p0, v11

    int-to-long v14, v14

    and-long/2addr v14, v6

    add-long/2addr v12, v14

    add-long/2addr v12, v4

    long-to-int v4, v12

    aput v4, v0, v11

    ushr-long v4, v12, v3

    const/4 v11, 0x5

    aget v12, v0, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    mul-long/2addr v12, v8

    aget v14, p0, v11

    int-to-long v14, v14

    and-long/2addr v14, v6

    add-long/2addr v12, v14

    add-long/2addr v12, v4

    long-to-int v4, v12

    aput v4, v0, v11

    ushr-long v4, v12, v3

    const/4 v11, 0x6

    aget v12, v0, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    mul-long/2addr v12, v8

    aget v14, p0, v11

    int-to-long v14, v14

    and-long/2addr v14, v6

    add-long/2addr v12, v14

    add-long/2addr v12, v4

    long-to-int v4, v12

    aput v4, v0, v11

    ushr-long v4, v12, v3

    aget v11, v0, v1

    int-to-long v11, v11

    and-long/2addr v11, v6

    mul-long/2addr v8, v11

    aget v11, p0, v1

    int-to-long v11, v11

    and-long/2addr v6, v11

    add-long/2addr v8, v6

    add-long/2addr v8, v4

    long-to-int v4, v8

    aput v4, v0, v1

    ushr-long v5, v8, v3

    long-to-int v3, v5

    shl-int/2addr v3, v10

    ushr-int/lit8 v5, v4, 0x1f

    ushr-int/lit8 v2, v2, 0x1f

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    const v2, 0x7fffffff

    and-int/2addr v2, v4

    mul-int/lit8 v5, v5, 0x13

    invoke-static {v1, v5, v0}, Lorg/spongycastle/math/raw/Nat;->g(II[I)I

    move-result v3

    add-int/2addr v3, v2

    aput v3, v0, v1

    sget-object v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat256;->k([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->f([I)V

    :cond_1
    return-void
.end method

.method public static c(I[I)V
    .locals 3

    const/4 v0, 0x7

    aget v1, p1, v0

    shl-int/lit8 p0, p0, 0x1

    ushr-int/lit8 v2, v1, 0x1f

    or-int/2addr p0, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    mul-int/lit8 p0, p0, 0x13

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->g(II[I)I

    move-result p0

    add-int/2addr p0, v1

    aput p0, p1, v0

    sget-object p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a:[I

    invoke-static {p1, p0}, Lorg/spongycastle/math/raw/Nat256;->k([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->f([I)V

    :cond_0
    return-void
.end method

.method public static d([I[I)V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->r([I[I)V

    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->b([I[I)V

    return-void
.end method

.method public static e([II[I)V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->r([I[I)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->b([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->r([I[I)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->b([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f([I)V
    .locals 8

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x13

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long v0, v1, v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    const/4 v5, 0x7

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v5, p0, v0}, Lorg/spongycastle/math/raw/Nat;->o(I[II)I

    move-result v0

    int-to-long v0, v0

    :cond_0
    aget v2, p0, v5

    int-to-long v6, v2

    and-long v2, v6, v3

    const-wide v6, 0x80000000L

    sub-long/2addr v2, v6

    add-long/2addr v2, v0

    long-to-int v0, v2

    aput v0, p0, v5

    return-void
.end method

.method public static g([I[I[I)V
    .locals 6

    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->s([I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    aget p1, p2, p0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x13

    sub-long/2addr v0, v4

    long-to-int p1, v0

    aput p1, p2, p0

    const/16 p0, 0x20

    shr-long p0, v0, p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-static {v1, p2, p0}, Lorg/spongycastle/math/raw/Nat;->h(I[II)I

    move-result p0

    int-to-long p0, p0

    :cond_0
    aget v0, p2, v1

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide v4, 0x80000000L

    add-long/2addr v2, v4

    add-long/2addr v2, p0

    long-to-int p0, v2

    aput p0, p2, v1

    :cond_1
    return-void
.end method

.method public static h([I[I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->s(I[II[I)I

    sget-object p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a:[I

    invoke-static {p1, p0}, Lorg/spongycastle/math/raw/Nat256;->k([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->f([I)V

    :cond_0
    return-void
.end method
