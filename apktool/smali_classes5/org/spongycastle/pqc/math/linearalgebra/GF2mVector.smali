.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
.super Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.source "SourceFile"


# instance fields
.field public final a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field public final b:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .locals 10

    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_0
    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a:I

    if-le v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    array-length v2, p2

    rem-int/2addr v2, v1

    const/4 v3, 0x0

    const-string v4, "Byte array is not an encoded vector over the given finite field."

    if-nez v2, :cond_4

    array-length v2, p2

    div-int/2addr v2, v1

    new-array v1, v2, [I

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    const/4 v1, 0x0

    move v2, v1

    move v5, v2

    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    move v6, v1

    :goto_2
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    if-ge v6, v0, :cond_1

    aget v8, v7, v2

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    aput v5, v7, v2

    add-int/lit8 v6, v6, 0x8

    move v5, v9

    goto :goto_2

    :cond_1
    aget v6, v7, v2

    invoke-virtual {p1, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lmd;->n(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-void

    :cond_4
    invoke-static {v4}, Lmd;->n(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .locals 2

    .line 84
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 86
    array-length v0, p2

    .line 87
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 88
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 89
    :cond_0
    const-string p0, "Element array is not specified over the given finite field."

    invoke-static {p0}, Llc0;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 90
    :cond_1
    array-length p1, p2

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 91
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;)V
    .locals 3

    .line 93
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 94
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 95
    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    .line 96
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 97
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->a([I[I)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget v0, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    move v4, v1

    :goto_1
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget v5, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a:I

    if-ge v4, v5, :cond_1

    and-int/lit8 v5, v4, 0x1f

    const/4 v6, 0x1

    shl-int v5, v6, v5

    aget v6, v3, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/16 v5, 0x31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
