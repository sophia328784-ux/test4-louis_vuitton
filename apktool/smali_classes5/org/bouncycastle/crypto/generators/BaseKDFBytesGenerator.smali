.class public Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DigestDerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    array-length v3, v1

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    move/from16 v5, p2

    if-lt v3, v5, :cond_5

    int-to-long v6, v2

    iget-object v3, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    const-wide v8, 0x1ffffffffL

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    int-to-long v8, v3

    add-long v10, v6, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    div-long/2addr v10, v8

    long-to-int v8, v10

    iget-object v9, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v9, v9, [B

    const/4 v10, 0x4

    new-array v11, v10, [B

    iget v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    invoke-static {v12, v11, v4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    and-int/lit16 v12, v12, -0x100

    move v13, v4

    :goto_0
    iget-object v14, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    if-ge v13, v8, :cond_3

    iget-object v15, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v10, v15

    invoke-interface {v14, v15, v4, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v10, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v15, 0x4

    invoke-interface {v10, v11, v4, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v10, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v10, :cond_0

    iget-object v14, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v10

    invoke-interface {v14, v10, v4, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    iget-object v10, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v10, v9, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le v2, v3, :cond_1

    invoke-static {v9, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_1
    invoke-static {v9, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const/4 v10, 0x3

    aget-byte v14, v11, v10

    add-int/lit8 v14, v14, 0x1

    int-to-byte v14, v14

    aput-byte v14, v11, v10

    if-nez v14, :cond_2

    add-int/lit16 v12, v12, 0x100

    invoke-static {v12, v11, v4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x4

    goto :goto_0

    :cond_3
    invoke-interface {v14}, Lorg/bouncycastle/crypto/Digest;->reset()V

    long-to-int v0, v6

    return v0

    :cond_4
    const-string v0, "Output length too large"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return v4

    :cond_5
    const-string v0, "output buffer too small"

    invoke-static {v0}, Lmt;->n(Ljava/lang/String;)V

    return v4
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object p0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    return-void

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    return-void

    :cond_1
    const-string p0, "KDF parameters required for generator"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
