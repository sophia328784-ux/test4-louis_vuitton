.class public Lorg/bouncycastle/crypto/macs/DSTU7624Mac;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private c:[B

.field private cTemp:[B

.field private engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

.field private initCalled:Z

.field private kDelta:[B

.field private macSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->initCalled:Z

    new-instance v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    return-void
.end method

.method private processBlock([BI)V
    .locals 6

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v2, 0x0

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    iget-object p0, v0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    iget-object p1, v0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    const/4 p2, 0x0

    iget-object v0, v0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-virtual {p0, p1, p2, v0, p2}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    return-void
.end method

.method private xor([BI[BI[B)V
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v0, v1, :cond_1

    array-length v0, p3

    sub-int/2addr v0, p4

    if-lt v0, v1, :cond_1

    array-length v0, p5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    aget-byte v1, p1, v1

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p0, "some of input buffers too short"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v2, v3

    rem-int/2addr v1, v2

    const/4 v6, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-virtual {v1, v2, v6, v2, v6}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    add-int v2, v1, p2

    array-length v3, p1

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-static {v2, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    return v0

    :cond_0
    const-string v0, "output buffer too short"

    invoke-static {v0}, Lmt;->n(Ljava/lang/String;)V

    return v6

    :cond_1
    const-string v0, "input must be a multiple of blocksize"

    invoke-static {v0}, Lb21;->q(Ljava/lang/String;)V

    return v6
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "DSTU7624Mac"

    return-object p0
.end method

.method public getMacSize()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->initCalled:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->reset()V

    return-void

    :cond_0
    const-string p0, "Invalid parameter passed to DSTU7624Mac"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->reset()V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->initCalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-virtual {v0, v2, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 56
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    iput v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 4

    if-ltz p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_0
    if-le p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    return-void

    :cond_1
    const-string p0, "can\'t have a negative input length!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
