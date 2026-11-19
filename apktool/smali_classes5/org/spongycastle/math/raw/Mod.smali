.class public abstract Lorg/spongycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II[I[I[I)I
    .locals 8

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget v3, p3, v1

    if-nez v3, :cond_1

    move v3, p0

    move v4, v1

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    aget v5, p3, v3

    aput v4, p3, v3

    move v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x20

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_2
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_2

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-lez v4, :cond_4

    move v3, v1

    :goto_3
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_3

    aget v5, p3, p0

    ushr-int v6, v5, v4

    neg-int v7, v4

    shl-int/2addr v3, v7

    or-int/2addr v3, v6

    aput v3, p3, p0

    move v3, v5

    goto :goto_3

    :cond_3
    add-int/2addr v2, v4

    :cond_4
    move p0, v1

    :goto_4
    if-ge p0, v2, :cond_8

    aget p3, p4, v1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    if-gez p1, :cond_5

    invoke-static {v0, p2, p4}, Lorg/spongycastle/math/raw/Nat;->e(I[I[I)I

    move-result p3

    :goto_5
    add-int/2addr p3, p1

    move p1, p3

    goto :goto_6

    :cond_5
    invoke-static {v0, p2, p4}, Lorg/spongycastle/math/raw/Nat;->y(I[I[I)I

    move-result p3

    goto :goto_5

    :cond_6
    :goto_6
    move v3, p1

    move p3, v0

    :goto_7
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_7

    aget v4, p4, p3

    ushr-int/lit8 v5, v4, 0x1

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v5

    aput v3, p4, p3

    move v3, v4

    goto :goto_7

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_8
    return p1
.end method

.method public static b([I[I[I)V
    .locals 10

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->r(I[I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->q(I[I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-array v1, v0, [I

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v0, [I

    const/4 v3, 0x1

    aput v3, p1, v2

    aget v4, v1, v2

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static {v0, v2, p0, v1, p1}, Lorg/spongycastle/math/raw/Mod;->a(II[I[I[I)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat;->q(I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-gez v3, :cond_2

    array-length v0, p0

    invoke-static {v0, p1, p0, p2}, Lorg/spongycastle/math/raw/Nat;->a(I[I[I[I)I

    return-void

    :cond_2
    array-length p0, p0

    invoke-static {p1, v2, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_3
    new-array v4, v0, [I

    invoke-static {p0, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v0, [I

    move v6, v0

    move v7, v2

    :cond_4
    :goto_1
    add-int/lit8 v8, v6, -0x1

    aget v9, v1, v8

    if-nez v9, :cond_5

    aget v8, v4, v8

    if-nez v8, :cond_5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    invoke-static {v6, v1, v4}, Lorg/spongycastle/math/raw/Nat;->l(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v6, v4, v1}, Lorg/spongycastle/math/raw/Nat;->y(I[I[I)I

    invoke-static {v0, v5, p1}, Lorg/spongycastle/math/raw/Nat;->y(I[I[I)I

    move-result v8

    sub-int/2addr v8, v7

    add-int/2addr v8, v3

    invoke-static {v6, v8, p0, v1, p1}, Lorg/spongycastle/math/raw/Mod;->a(II[I[I[I)I

    move-result v3

    invoke-static {v6, v1}, Lorg/spongycastle/math/raw/Nat;->q(I[I)Z

    move-result v8

    if-eqz v8, :cond_4

    if-gez v3, :cond_6

    array-length v0, p0

    invoke-static {v0, p1, p0, p2}, Lorg/spongycastle/math/raw/Nat;->a(I[I[I[I)I

    return-void

    :cond_6
    array-length p0, p0

    invoke-static {p1, v2, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_7
    invoke-static {v6, v1, v4}, Lorg/spongycastle/math/raw/Nat;->y(I[I[I)I

    invoke-static {v0, p1, v5}, Lorg/spongycastle/math/raw/Nat;->y(I[I[I)I

    move-result v8

    sub-int/2addr v8, v3

    add-int/2addr v8, v7

    invoke-static {v6, v8, p0, v4, v5}, Lorg/spongycastle/math/raw/Mod;->a(II[I[I[I)I

    move-result v7

    invoke-static {v6, v4}, Lorg/spongycastle/math/raw/Nat;->q(I[I)Z

    move-result v8

    if-eqz v8, :cond_4

    if-gez v7, :cond_8

    array-length p1, p0

    invoke-static {p1, v5, p0, p2}, Lorg/spongycastle/math/raw/Nat;->a(I[I[I[I)I

    return-void

    :cond_8
    array-length p0, p0

    invoke-static {v5, v2, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_9
    const-string p0, "\'x\' cannot be 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
