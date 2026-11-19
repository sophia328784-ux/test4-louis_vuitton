.class public abstract Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a:I

    iget v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b:I

    const/4 v4, 0x1

    shl-int v5, v4, v2

    iget-object v6, v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v7, v6

    sub-int/2addr v7, v4

    aget v6, v6, v7

    if-nez v6, :cond_0

    const/4 v7, -0x1

    :cond_0
    const/4 v6, 0x2

    new-array v8, v6, [I

    aput v5, v8, v4

    const/4 v9, 0x0

    aput v7, v8, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    new-array v11, v6, [I

    aput v5, v11, v4

    aput v7, v11, v9

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    move v12, v9

    :goto_0
    if-ge v12, v5, :cond_2

    aget-object v13, v11, v9

    iget-object v14, v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    iget v15, v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    aget v14, v14, v15

    sub-int/2addr v15, v4

    :goto_1
    if-ltz v15, :cond_1

    move/from16 v16, v4

    iget-object v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget v4, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b:I

    invoke-static {v14, v12, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->d(III)I

    move-result v4

    iget-object v14, v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    aget v14, v14, v15

    xor-int/2addr v14, v4

    add-int/lit8 v15, v15, -0x1

    move/from16 v4, v16

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    invoke-virtual {v0, v14}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b(I)I

    move-result v4

    aput v4, v13, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    goto :goto_0

    :cond_2
    move/from16 v16, v4

    move/from16 v0, v16

    :goto_2
    if-ge v0, v7, :cond_4

    move v4, v9

    :goto_3
    if-ge v4, v5, :cond_3

    aget-object v12, v11, v0

    add-int/lit8 v13, v0, -0x1

    aget-object v13, v11, v13

    aget v13, v13, v4

    invoke-static {v13, v4, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->d(III)I

    move-result v13

    aput v13, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v9

    :goto_4
    if-ge v0, v7, :cond_7

    move v4, v9

    :goto_5
    if-ge v4, v5, :cond_6

    move v12, v9

    :goto_6
    if-gt v12, v0, :cond_5

    aget-object v13, v8, v0

    aget v14, v13, v4

    aget-object v15, v11, v12

    aget v15, v15, v4

    add-int v17, v7, v12

    move/from16 v18, v9

    sub-int v9, v17, v0

    invoke-virtual {v1, v9}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->d(I)I

    move-result v9

    invoke-static {v15, v9, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->d(III)I

    move-result v9

    xor-int/2addr v9, v14

    aput v9, v13, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v18

    goto :goto_6

    :cond_5
    move/from16 v18, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move/from16 v18, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move/from16 v18, v9

    mul-int v0, v7, v2

    add-int/lit8 v1, v5, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    new-array v3, v6, [I

    aput v1, v3, v16

    aput v0, v3, v18

    invoke-static {v10, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move/from16 v1, v18

    :goto_7
    if-ge v1, v5, :cond_b

    ushr-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, v1, 0x1f

    shl-int v4, v16, v4

    move/from16 v6, v18

    :goto_8
    if-ge v6, v7, :cond_a

    aget-object v9, v8, v6

    aget v9, v9, v1

    move/from16 v10, v18

    :goto_9
    if-ge v10, v2, :cond_9

    ushr-int v11, v9, v10

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_8

    add-int/lit8 v11, v6, 0x1

    mul-int/2addr v11, v2

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v0, v11

    aget v12, v11, v3

    xor-int/2addr v12, v4

    aput v12, v11, v3

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v1, v5, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1
.end method
