.class public Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field public b:I

.field public c:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    const/4 p1, -0x1

    .line 229
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    const/4 p1, 0x1

    .line 230
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;I)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 238
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    add-int/lit8 p1, p2, 0x1

    .line 239
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    const/4 p0, 0x1

    .line 240
    aput p0, p1, p2

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    const/16 v5, 0x49

    if-ne v3, v5, :cond_9

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x1

    aput v5, v3, v2

    invoke-virtual {v1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a(Ljava/security/SecureRandom;)I

    move-result v6

    iget v7, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a:I

    const/4 v8, 0x0

    aput v6, v3, v8

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_0

    shl-int v9, v5, v7

    invoke-static {v4, v9}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->a(Ljava/security/SecureRandom;I)I

    move-result v9

    aput v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    aget v6, v3, v8

    if-nez v6, :cond_1

    move/from16 p3, v5

    goto/16 :goto_7

    :cond_1
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v6

    shr-int/2addr v6, v5

    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v8, v9, v8

    aput v5, v9, v5

    filled-new-array {v8, v5}, [I

    move-result-object v10

    move v11, v8

    :goto_2
    if-ge v11, v6, :cond_8

    add-int/lit8 v12, v7, -0x1

    :goto_3
    if-ltz v12, :cond_2

    invoke-virtual {v0, v9, v9}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->i([I[I)[I

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->f([I[I)[I

    move-result-object v9

    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_2
    invoke-static {v9}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->j([I)[I

    move-result-object v9

    invoke-virtual {v0, v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    move/from16 p3, v5

    move-object v5, v3

    goto :goto_6

    :cond_3
    move-object v13, v3

    :goto_4
    invoke-static {v13}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v15

    if-eq v15, v14, :cond_4

    invoke-virtual {v0, v12, v13}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->f([I[I)[I

    move-result-object v12

    array-length v15, v13

    move/from16 p3, v5

    new-array v5, v15, [I

    invoke-static {v13, v8, v5, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v12

    new-array v15, v13, [I

    invoke-static {v12, v8, v15, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v5

    move-object v13, v15

    move/from16 v5, p3

    goto :goto_4

    :cond_4
    move/from16 p3, v5

    invoke-static {v12}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v5

    if-ne v5, v14, :cond_5

    move v5, v8

    goto :goto_5

    :cond_5
    aget v5, v12, v5

    :goto_5
    invoke-virtual {v1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b(I)I

    move-result v5

    invoke-virtual {v0, v12, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->g([II)[I

    move-result-object v5

    :goto_6
    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v5

    if-eqz v5, :cond_7

    :goto_7
    invoke-static {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->a(Ljava/security/SecureRandom;I)I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a(Ljava/security/SecureRandom;)I

    move-result v5

    aput v5, v3, v8

    goto :goto_8

    :cond_6
    shl-int v6, p3, v7

    invoke-static {v4, v6}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->a(Ljava/security/SecureRandom;I)I

    move-result v6

    aput v6, v3, v5

    :goto_8
    move/from16 v5, p3

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, p3

    goto :goto_2

    :cond_8
    iput-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Error: type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " is not defined for GF2smallmPolynomial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .locals 10

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v1

    .line 247
    :goto_0
    iget v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a:I

    if-le v3, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 248
    :cond_0
    array-length p1, p2

    rem-int/2addr p1, v2

    const/4 v3, 0x0

    const-string v4, " Error: byte array is not encoded polynomial over given finite field GF2m"

    if-nez p1, :cond_6

    .line 249
    array-length p1, p2

    div-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    const/4 p1, 0x0

    move v2, p1

    move v5, v2

    .line 250
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v7, v6

    if-ge v2, v7, :cond_3

    move v6, p1

    :goto_2
    if-ge v6, v0, :cond_1

    .line 251
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    aget v8, v7, v2

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    xor-int/2addr v5, v8

    aput v5, v7, v2

    add-int/lit8 v6, v6, 0x8

    move v5, v9

    goto :goto_2

    .line 252
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    :cond_2
    invoke-static {v4}, Lmd;->n(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_3
    array-length p1, v6

    if-eq p1, v1, :cond_5

    array-length p1, v6

    sub-int/2addr p1, v1

    aget p1, v6, p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 255
    :cond_4
    invoke-static {v4}, Lmd;->n(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()V

    return-void

    .line 257
    :cond_6
    invoke-static {v4}, Lmd;->n(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 243
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->j([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    .line 244
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;)V
    .locals 4

    .line 231
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 232
    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->b:[I

    .line 233
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 234
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 3

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 260
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    .line 261
    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    .line 262
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 263
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    return-void
.end method

.method public static b([I)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static h([II)[I
    .locals 4

    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    new-array p0, v2, [I

    return-object p0

    :cond_0
    add-int v1, v0, p1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/4 v3, 0x0

    add-int/2addr v0, v2

    invoke-static {p0, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static j([I)[I
    .locals 3

    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    new-array p0, v2, [I

    return-object p0

    :cond_0
    array-length v1, p0

    add-int/2addr v0, v2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    new-array v1, v0, [I

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final a([I[I)[I
    .locals 4

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    array-length v0, p2

    new-array v0, v0, [I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    :goto_0
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    aget v1, v0, p2

    aget v2, p1, p2

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v1, v2

    aput v1, v0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()[B
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget v2, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a:I

    if-le v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v2, v2

    mul-int/2addr v2, v1

    new-array v1, v2, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v0, :cond_1

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    aget v7, v7, v3

    ushr-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v5, v5, 0x8

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b:I

    if-ne v1, v2, :cond_4

    iget-object p0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v1

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_3

    aget v3, p0, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public final f([I[I)[I
    .locals 7

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    array-length v2, p1

    new-array v3, v2, [I

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    aget v4, p2, v4

    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b(I)I

    move-result v4

    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result p1

    if-gt v0, p1, :cond_2

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result p1

    if-ne p1, v1, :cond_1

    move p1, v5

    goto :goto_2

    :cond_1
    aget p1, v3, p1

    :goto_2
    iget v2, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b:I

    invoke-static {p1, v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->d(III)I

    move-result p1

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->h([II)[I

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->g([II)[I

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    const-string p0, "Division by zero"

    invoke-static {p0}, Llc0;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g([II)[I
    .locals 4

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v2, :cond_1

    array-length p0, p1

    new-array p0, p0, [I

    const/4 p2, 0x0

    array-length v0, p1

    invoke-static {p1, p2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    :goto_0
    if-ltz v0, :cond_2

    aget v2, p1, v0

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget v3, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b:I

    invoke-static {v2, p2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->d(III)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    new-array p0, v2, [I

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget v0, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final i([I[I)[I
    .locals 8

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v0

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->b([I)I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :cond_0
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->j([I)[I

    move-result-object p1

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->j([I)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget p2, p2, v2

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->g([II)[I

    move-result-object p0

    return-object p0

    :cond_1
    array-length v0, p1

    array-length v3, p2

    add-int v4, v0, v3

    sub-int/2addr v4, v1

    new-array v4, v4, [I

    if-eq v3, v0, :cond_2

    new-array v1, v3, [I

    sub-int/2addr v0, v3

    new-array v4, v0, [I

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->i([I[I)[I

    move-result-object p1

    invoke-virtual {p0, v4, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->i([I[I)[I

    move-result-object p2

    invoke-static {p2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->h([II)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v1, v3, 0x1

    sub-int/2addr v0, v1

    new-array v3, v1, [I

    new-array v4, v1, [I

    new-array v5, v0, [I

    new-array v6, v0, [I

    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object p1

    invoke-virtual {p0, v4, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object p2

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->i([I[I)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->i([I[I)[I

    move-result-object p1

    invoke-virtual {p0, v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->i([I[I)[I

    move-result-object p2

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object p1

    invoke-static {p2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->h([II)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object p1

    invoke-static {p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->h([II)[I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Polynomial over "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->a:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c:[I

    aget v4, v4, v3

    const-string v5, ""

    move v6, v2

    :goto_1
    iget v7, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->a:I

    if-ge v6, v7, :cond_1

    int-to-byte v7, v4

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    const-string v7, "0"

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_0
    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Y^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
