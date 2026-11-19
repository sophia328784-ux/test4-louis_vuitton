.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
.super Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
.source "SourceFile"


# instance fields
.field public c:[[I

.field public d:I


# direct methods
.method public constructor <init>(IC)V
    .locals 1

    .line 558
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    const/4 v4, 0x0

    if-lez v1, :cond_17

    const/16 v5, 0x49

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v2, v5, :cond_13

    const/16 v5, 0x4c

    if-eq v2, v5, :cond_10

    const/16 v10, 0x52

    const/16 v11, 0x55

    if-eq v2, v10, :cond_5

    if-eq v2, v11, :cond_1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->a(II)V

    return-void

    :cond_0
    const-string v0, "Unknown matrix type."

    invoke-static {v0}, Llc0;->l(Ljava/lang/String;)V

    throw v4

    :cond_1
    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/lit8 v2, v1, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    iput v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    new-array v4, v9, [I

    aput v2, v4, v8

    aput v1, v4, v7

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    shl-int v1, v8, v1

    sub-int/2addr v1, v8

    :goto_0
    move v2, v7

    :goto_1
    iget v4, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v2, v4, :cond_16

    ushr-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, v2, 0x1f

    move v6, v7

    :goto_2
    iget-object v9, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    if-ge v6, v4, :cond_3

    aget-object v9, v9, v2

    aput v7, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    aget-object v6, v9, v2

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v9

    or-int/2addr v9, v8

    shl-int v5, v9, v5

    aput v5, v6, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    iget-object v6, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    if-ge v4, v5, :cond_4

    aget-object v5, v6, v2

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v6

    aput v6, v5, v4

    goto :goto_3

    :cond_4
    aget-object v4, v6, v2

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    and-int/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/lit8 v2, v1, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    iput v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    new-array v9, v9, [I

    aput v2, v9, v8

    aput v1, v9, v7

    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v2, v1, v5, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v5, v1, v11, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    iget v6, v5, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iget v9, v2, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    if-ne v6, v9, :cond_f

    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v9, v2, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iget v10, v5, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    invoke-direct {v6}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    if-lez v10, :cond_e

    if-lez v9, :cond_e

    invoke-virtual {v6, v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->a(II)V

    iget v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    and-int/lit8 v4, v4, 0x1f

    iget v9, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, -0x1

    :goto_4
    move v10, v7

    :goto_5
    iget v11, v2, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v10, v11, :cond_d

    move v11, v7

    move v12, v11

    :goto_6
    iget-object v13, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    if-ge v11, v9, :cond_a

    aget-object v13, v13, v10

    aget v13, v13, v11

    move v14, v7

    :goto_7
    const/16 v15, 0x20

    if-ge v14, v15, :cond_9

    shl-int v15, v8, v14

    and-int/2addr v15, v13

    if-eqz v15, :cond_7

    move v15, v7

    move/from16 v16, v8

    :goto_8
    iget v8, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-ge v15, v8, :cond_8

    iget-object v8, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v8, v8, v10

    aget v17, v8, v15

    iget-object v7, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v7, v7, v12

    aget v7, v7, v15

    xor-int v7, v17, v7

    aput v7, v8, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_8

    :cond_7
    move/from16 v16, v8

    :cond_8
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    move/from16 v16, v8

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    move/from16 v16, v8

    aget-object v7, v13, v10

    iget v8, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_c

    shl-int v11, v16, v8

    and-int/2addr v11, v7

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    :goto_a
    iget v13, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-ge v11, v13, :cond_b

    iget-object v13, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v13, v13, v10

    aget v14, v13, v11

    iget-object v15, v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v15, v15, v12

    aget v15, v15, v11

    xor-int/2addr v14, v15

    aput v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_5

    :cond_d
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v2, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    iget-object v2, v2, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a:[I

    array-length v3, v2

    new-array v3, v3, [I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v5

    :goto_b
    if-ge v2, v1, :cond_16

    iget-object v4, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v4, v4, v2

    iget-object v7, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget v8, v3, v2

    aget-object v7, v7, v8

    iget v8, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    invoke-static {v4, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    goto :goto_b

    :cond_e
    const-string v0, "size of matrix is non-positive"

    invoke-static {v0}, Llc0;->l(Ljava/lang/String;)V

    throw v4

    :cond_f
    const-string v0, "length mismatch"

    invoke-static {v0}, Llc0;->l(Ljava/lang/String;)V

    throw v4

    :cond_10
    move/from16 v16, v8

    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/lit8 v2, v1, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    iput v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    new-array v4, v9, [I

    aput v2, v4, v16

    const/16 v18, 0x0

    aput v1, v4, v18

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    const/4 v1, 0x0

    :goto_c
    iget v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v1, v2, :cond_16

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v4, v1, 0x1f

    rsub-int/lit8 v5, v4, 0x1f

    shl-int v4, v16, v4

    const/4 v6, 0x0

    :goto_d
    iget-object v7, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    if-ge v6, v2, :cond_11

    aget-object v7, v7, v1

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_11
    aget-object v6, v7, v1

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v7

    ushr-int v5, v7, v5

    or-int/2addr v4, v5

    aput v4, v6, v2

    :goto_e
    add-int/lit8 v2, v2, 0x1

    iget v4, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-ge v2, v4, :cond_12

    iget-object v4, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v4, v4, v1

    const/16 v18, 0x0

    aput v18, v4, v2

    goto :goto_e

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    move/from16 v16, v8

    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iput v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/lit8 v2, v1, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    iput v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    new-array v3, v9, [I

    aput v2, v3, v16

    const/16 v18, 0x0

    aput v1, v3, v18

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    const/4 v5, 0x0

    :goto_f
    iget v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v5, v1, :cond_15

    const/4 v1, 0x0

    :goto_10
    iget v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-ge v1, v2, :cond_14

    iget-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v2, v2, v5

    const/16 v18, 0x0

    aput v18, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_14
    const/16 v18, 0x0

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_15
    const/16 v18, 0x0

    move/from16 v7, v18

    :goto_11
    iget v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v7, v1, :cond_16

    and-int/lit8 v1, v7, 0x1f

    iget-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v2, v2, v7

    ushr-int/lit8 v3, v7, 0x5

    shl-int v1, v16, v1

    aput v1, v2, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_16
    return-void

    :cond_17
    const-string v0, "Size of matrix is non-positive."

    invoke-static {v0}, Llc0;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(I[[I)V
    .locals 5

    .line 549
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    const/4 v0, 0x0

    .line 550
    aget-object v1, p2, v0

    array-length v2, v1

    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    if-ne v2, v3, :cond_2

    .line 551
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    .line 552
    array-length v2, p2

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    .line 553
    array-length v1, v1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    .line 554
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v0, v2, :cond_1

    .line 555
    aget-object v2, p2, v0

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    sub-int/2addr v3, v1

    aget v4, v2, v3

    and-int/2addr v4, p1

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    return-void

    .line 557
    :cond_2
    const-string p0, "Int array does not match given number of columns."

    invoke-static {p0}, Llc0;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 6

    .line 573
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 574
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    .line 575
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    .line 576
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    .line 577
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    .line 578
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    .line 579
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    const/4 v0, 0x0

    move v1, v0

    .line 580
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 581
    iget-object v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v3, v3, v1

    .line 582
    array-length v4, v3

    new-array v4, v4, [I

    .line 583
    array-length v5, v3

    invoke-static {v3, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    .line 559
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 560
    array-length v0, p1

    const/16 v1, 0x9

    const/4 v2, 0x0

    const-string v3, "given array is not an encoded matrix over GF(2)"

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    .line 561
    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->b([BI)I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    const/4 v1, 0x4

    .line 562
    invoke-static {p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->b([BI)I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/lit8 v4, v1, 0x7

    ushr-int/lit8 v4, v4, 0x3

    .line 563
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    mul-int/2addr v4, v5

    if-lez v5, :cond_3

    .line 564
    array-length v6, p1

    const/16 v7, 0x8

    sub-int/2addr v6, v7

    if-ne v4, v6, :cond_3

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    .line 565
    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    const/4 v2, 0x2

    .line 566
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput v5, v2, v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    .line 567
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v3, v0

    .line 568
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v3, v4, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 569
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v5, v5, v3

    invoke-static {p1, v7}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->b([BI)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x4

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_1

    .line 570
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v5, v5, v3

    aget v6, v5, v2

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v4, v4, 0x8

    move v7, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 571
    :cond_3
    invoke-static {v3}, Llc0;->l(Ljava/lang/String;)V

    throw v2

    .line 572
    :cond_4
    invoke-static {v3}, Llc0;->l(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/lit8 p2, p2, 0x1f

    ushr-int/lit8 p2, p2, 0x5

    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 p2, 0x0

    aput p1, v0, p2

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    move p1, p2

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge p1, v0, :cond_1

    move v0, p2

    :goto_1
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v1, v1, p1

    aput p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()[B
    .locals 9

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    mul-int/2addr v0, v1

    const/16 v2, 0x8

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->a(I[BI)V

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->a(I[BI)V

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v5, v3

    :goto_0
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v5, v6, :cond_2

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_0

    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v7, v7, v5

    aget v7, v7, v6

    invoke-static {v7, v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->a(I[BI)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_1

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v8, v8, v5

    aget v8, v8, v4

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    add-int/lit8 v6, v6, 0x8

    move v2, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->a([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->b:I

    and-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->a:I

    if-ge v4, v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v3

    :goto_2
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->c:[[I

    const/16 v7, 0x31

    const/16 v8, 0x30

    if-ge v5, v1, :cond_3

    aget-object v6, v6, v4

    aget v6, v6, v5

    move v9, v3

    :goto_3
    const/16 v10, 0x20

    if-ge v9, v10, :cond_2

    ushr-int v10, v6, v9

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    aget-object v5, v6, v4

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->d:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    move v6, v3

    :goto_5
    if-ge v6, v0, :cond_5

    ushr-int v9, v5, v6

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
