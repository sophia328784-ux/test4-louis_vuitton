.class public Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field public final b:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field public final c:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field public final d:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->b:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v0, p2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v3, -0x1

    if-nez v0, :cond_0

    move v1, v3

    :cond_0
    new-array v0, v1, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->c:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    shr-int/lit8 v5, v1, 0x1

    if-ge v4, v5, :cond_1

    shl-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    new-array v6, v6, [I

    aput v2, v6, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->c:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v7, p1, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v5, v1, :cond_2

    shl-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v4, 0x1

    new-array v6, v6, [I

    aput v2, v6, v4

    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v4, p1, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->c:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v7, v4, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    iget-object v8, p2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v4, v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->f([I[I)[I

    move-result-object v7

    new-instance v8, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, v4, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v8, v4, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->b:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object p2, p2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v1, p2

    sub-int/2addr v1, v2

    aget p2, p2, v1

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    new-array p2, v3, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    add-int/lit8 v1, v3, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_4

    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->c:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    aput-object v5, p2, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_4
    new-array v4, v3, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->d:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    :goto_4
    if-ltz v1, :cond_5

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->d:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v5, p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;I)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, p2, v1

    invoke-virtual {v4, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->d(I)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_9

    add-int/lit8 v4, v1, 0x1

    move v6, v0

    :goto_6
    if-ge v4, v3, :cond_7

    aget-object v7, p2, v4

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->d(I)I

    move-result v7

    if-eqz v7, :cond_6

    aget-object v6, p2, v1

    aget-object v7, p2, v4

    aput-object v7, p2, v1

    aput-object v6, p2, v4

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->d:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v7, v6, v1

    aget-object v8, v6, v4

    aput-object v8, v6, v1

    aput-object v7, v6, v4

    move v6, v2

    move v4, v3

    :cond_6
    add-int/2addr v4, v2

    goto :goto_6

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    const-string p0, "Squaring matrix is not invertible."

    invoke-static {p0}, Llc0;->l(Ljava/lang/String;)V

    throw v5

    :cond_9
    :goto_7
    aget-object v4, p2, v1

    invoke-virtual {v4, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->d(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b(I)I

    move-result v4

    aget-object v6, p2, v1

    iget-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->c(I)Z

    move-result v7

    const-string v8, "Not an element of the finite field this polynomial is defined over."

    if-eqz v7, :cond_f

    iget-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6, v7, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->g([II)[I

    move-result-object v7

    iput-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()V

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->d:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v6, v6, v1

    iget-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->c(I)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6, v7, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->g([II)[I

    move-result-object v4

    iput-object v4, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()V

    move v4, v0

    :goto_8
    if-ge v4, v3, :cond_d

    if-eq v4, v1, :cond_c

    aget-object v6, p2, v4

    invoke-virtual {v6, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->d(I)I

    move-result v6

    if-eqz v6, :cond_c

    aget-object v7, p2, v1

    iget-object v9, v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v9, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->c(I)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v7, v10, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->g([II)[I

    move-result-object v7

    new-instance v10, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v10, v9, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->d:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v7, v7, v1

    iget-object v9, v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v9, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->c(I)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v7, v11, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->g([II)[I

    move-result-object v6

    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v7, v9, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aget-object v6, p2, v4

    iget-object v9, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    iget-object v10, v10, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6, v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object v9

    iput-object v9, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()V

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->d:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v6, v6, v4

    iget-object v9, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    iget-object v7, v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6, v9, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object v7

    iput-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()V

    goto :goto_9

    :cond_a
    invoke-static {v8}, Llc0;->l(Ljava/lang/String;)V

    throw v5

    :cond_b
    invoke-static {v8}, Llc0;->l(Ljava/lang/String;)V

    throw v5

    :cond_c
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_e
    invoke-static {v8}, Llc0;->l(Ljava/lang/String;)V

    throw v5

    :cond_f
    invoke-static {v8}, Llc0;->l(Ljava/lang/String;)V

    throw v5

    :cond_10
    return-void
.end method
