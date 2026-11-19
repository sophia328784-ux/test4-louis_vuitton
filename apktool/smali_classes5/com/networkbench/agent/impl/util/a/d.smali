.class public Lcom/networkbench/agent/impl/util/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/util/a/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZI[BLorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[BLorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B)Lcom/networkbench/agent/impl/util/a/d$a;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    new-instance v2, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;

    invoke-direct {v2, p0, p3, p4}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;-><init>(ZLorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v1, v2, p5}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithID;

    new-instance p4, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    invoke-direct {p4, p6, p7}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    invoke-direct {p3, p4, p8}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateKeyWithConfirmation(I[BLorg/bouncycastle/crypto/CipherParameters;)[[B

    move-result-object p1

    new-instance p2, Lcom/networkbench/agent/impl/util/a/d$a;

    invoke-direct {p2}, Lcom/networkbench/agent/impl/util/a/d$a;-><init>()V

    const/4 p3, 0x0

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Lcom/networkbench/agent/impl/util/a/d$a;->a([B)V

    const/4 p3, 0x1

    if-eqz p0, :cond_0

    aget-object p0, p1, p3

    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/util/a/d$a;->c([B)V

    return-object p2

    :cond_0
    aget-object p0, p1, p3

    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/util/a/d$a;->b([B)V

    const/4 p0, 0x2

    aget-object p0, p1, p0

    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/util/a/d$a;->c([B)V

    return-object p2
.end method

.method public static a([B[B)Z
    .locals 0

    .line 67
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static a(ZILorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[BLorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B)[B
    .locals 3

    .line 64
    new-instance v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;-><init>()V

    .line 65
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    new-instance v2, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;

    invoke-direct {v2, p0, p2, p3}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;-><init>(ZLorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v1, v2, p4}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 66
    new-instance p0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    new-instance p2, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    invoke-direct {p2, p5, p6}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    invoke-direct {p0, p2, p7}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, p1, p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateKey(ILorg/bouncycastle/crypto/CipherParameters;)[B

    move-result-object p0

    return-object p0
.end method
