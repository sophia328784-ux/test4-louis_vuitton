.class public Lorg/spongycastle/crypto/digests/SHAKEDigest;
.super Lorg/spongycastle/crypto/digests/KeccakDigest;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/Xof;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    .line 26
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "\'bitLength\' "

    const-string v0, " not supported for SHAKE"

    invoke-static {p1, p0, v0}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHAKEDigest;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(Lorg/spongycastle/crypto/digests/KeccakDigest;)V

    return-void
.end method


# virtual methods
.method public final b([B)I
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    return v0
.end method

.method public final doFinal([BI)I
    .locals 4

    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->f:Z

    if-nez v0, :cond_2

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    rem-int/lit8 v2, v1, 0x8

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    shr-int/lit8 v0, v1, 0x3

    const/16 v2, 0xf

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    aput-byte v2, v3, v0

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    goto :goto_0

    :cond_0
    const-string p0, "attempt to absorb while squeezing"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v3

    :cond_1
    const-string p0, "attempt to absorb with odd length queue"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v3

    :cond_2
    :goto_0
    int-to-long v0, p2

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->h(J[B)V

    iget p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->f(I)V

    return p2
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHAKE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
