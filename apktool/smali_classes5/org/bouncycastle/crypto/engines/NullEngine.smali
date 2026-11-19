.class public Lorg/bouncycastle/crypto/engines/NullEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final DEFAULT_BLOCK_SIZE:I = 0x1


# instance fields
.field private final blockSize:I

.field private initialised:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/NullEngine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "Null"

    return-object p0
.end method

.method public getBlockSize()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    return p0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    add-int v2, p2, v0

    array-length v3, p1

    if-gt v2, v3, :cond_2

    add-int/2addr v0, p4

    array-length v2, p3

    if-gt v0, v2, :cond_1

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    if-ge v1, v0, :cond_0

    add-int v0, p4, v1

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    aput-byte v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const-string p0, "output buffer too short"

    invoke-static {p0}, Lmt;->n(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p0, "input buffer too short"

    invoke-static {p0}, Lb21;->q(Ljava/lang/String;)V

    return v1

    :cond_3
    const-string p0, "Null engine not initialised"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
