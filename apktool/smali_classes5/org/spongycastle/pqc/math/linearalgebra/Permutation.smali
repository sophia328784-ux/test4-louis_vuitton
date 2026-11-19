.class public Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    .line 119
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 120
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 121
    :cond_1
    const-string p0, "invalid length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 6

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    .line 123
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    .line 124
    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 125
    aput v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 126
    invoke-static {p2, v2}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->a(Ljava/security/SecureRandom;I)I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    .line 127
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    aget v5, v0, v3

    aput v5, v4, v1

    .line 128
    aget v4, v0, v2

    aput v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 129
    :cond_2
    const-string p0, "invalid length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([B)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "invalid encoding"

    const/4 v3, 0x4

    if-le v0, v3, :cond_8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->b([BI)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    sget v6, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->a:I

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    if-gez v5, :cond_1

    neg-int v5, v5

    :cond_1
    move v7, v0

    :goto_0
    if-lez v5, :cond_2

    add-int/lit8 v7, v7, 0x1

    ushr-int/lit8 v5, v5, 0x8

    goto :goto_0

    :cond_2
    :goto_1
    array-length v5, p1

    mul-int v8, v4, v7

    add-int/2addr v8, v3

    if-ne v5, v8, :cond_7

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    move v5, v0

    :goto_2
    iget-object v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    if-ge v5, v4, :cond_4

    mul-int v9, v5, v7

    add-int/2addr v9, v3

    add-int/lit8 v10, v7, -0x1

    move v11, v0

    :goto_3
    if-ltz v10, :cond_3

    add-int v12, v9, v10

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    mul-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_3
    aput v11, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    array-length p0, v8

    new-array p1, p0, [Z

    :goto_4
    if-ge v0, p0, :cond_6

    aget v3, v8, v0

    if-ltz v3, :cond_5

    if-ge v3, p0, :cond_5

    aget-boolean v4, p1, v3

    if-nez v4, :cond_5

    aput-boolean v6, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-static {v2}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void

    :cond_7
    invoke-static {v2}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lmd;->n(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([I)V
    .locals 6

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    array-length v0, p1

    .line 111
    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 112
    aget v4, p1, v3

    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    aget-boolean v5, v1, v4

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 113
    aput-boolean v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const-string p0, "array is not a permutation vector"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 115
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    .line 116
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 10

    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    sget v2, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    neg-int v1, v1

    :cond_1
    move v4, v2

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_2
    :goto_1
    mul-int v1, v0, v4

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->a(I[BI)V

    :goto_2
    if-ge v2, v0, :cond_4

    aget v5, p0, v2

    mul-int v6, v2, v4

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v4, -0x1

    :goto_3
    if-ltz v7, :cond_3

    add-int v8, v6, v7

    mul-int/lit8 v9, v7, 0x8

    ushr-int v9, v5, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->a([I[I)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-static {v0, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
