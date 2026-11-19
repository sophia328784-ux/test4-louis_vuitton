.class public Lcom/networkbench/agent/impl/util/a/g;
.super Lcom/networkbench/agent/impl/util/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/a/b;-><init>()V

    return-void
.end method

.method public static a([B[B)Z
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/g;->a([B)[B

    move-result-object p0

    .line 21
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a([B)[B
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->update([BII)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0, p0, v2}, Lorg/bouncycastle/crypto/digests/SM3Digest;->doFinal([BI)I

    return-object p0
.end method

.method public static b([B[B)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    array-length p0, p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p0}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v1, p0, v0}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-object p0
.end method
