.class public Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private ephemeralPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private staticPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-nez v1, :cond_1

    instance-of v2, p1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "only X25519 and X448 paramaters can be used"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p3, :cond_3

    instance-of p3, p2, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, p2

    check-cast p3, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object p3

    goto :goto_2

    :cond_3
    instance-of v2, p3, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    const-string v3, "ephemeral public key has different domain parameters"

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    instance-of v1, p3, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    if-eqz v1, :cond_7

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void

    :cond_8
    const-string p0, "static and ephemeral private keys have different domain parameters"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p0, "ephemeralPrivateKey cannot be null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string p0, "staticPrivateKey cannot be null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object p0
.end method

.method public getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object p0
.end method

.method public getStaticPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object p0
.end method
