.class public Lcom/networkbench/agent/impl/util/a/f;
.super Lcom/networkbench/agent/impl/util/a/b;
.source "SourceFile"


# static fields
.field public static final a:Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;

.field public static final b:Ljava/math/BigInteger;

.field public static final c:Ljava/math/BigInteger;

.field public static final d:Ljava/math/BigInteger;

.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;

.field public static final g:Ljava/math/BigInteger;

.field public static final h:Ljava/math/BigInteger;

.field public static final i:Lorg/bouncycastle/math/ec/ECPoint;

.field public static final j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field public static final k:I

.field public static final l:Ljava/security/spec/EllipticCurve;

.field public static final m:Ljava/security/spec/ECPoint;

.field public static final n:Ljava/security/spec/ECParameterSpec;

.field public static final o:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/a/f;->a:Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/networkbench/agent/impl/util/a/f;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/networkbench/agent/impl/util/a/f;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lcom/networkbench/agent/impl/util/a/f;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/networkbench/agent/impl/util/a/f;->e:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    sput-object v5, Lcom/networkbench/agent/impl/util/a/f;->f:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "32C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/networkbench/agent/impl/util/a/f;->g:Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0"

    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/networkbench/agent/impl/util/a/f;->h:Ljava/math/BigInteger;

    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    sput-object v6, Lcom/networkbench/agent/impl/util/a/f;->i:Lorg/bouncycastle/math/ec/ECPoint;

    new-instance v7, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v7, v0, v6, v4, v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v7, Lcom/networkbench/agent/impl/util/a/f;->j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {v7}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/crypto/params/ECDomainParameters;)I

    move-result v0

    sput v0, Lcom/networkbench/agent/impl/util/a/f;->k:I

    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v7, Ljava/security/spec/ECFieldFp;

    invoke-direct {v7, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v7, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v0, Lcom/networkbench/agent/impl/util/a/f;->l:Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v1, Lcom/networkbench/agent/impl/util/a/f;->m:Ljava/security/spec/ECPoint;

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v1, v4, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v2, Lcom/networkbench/agent/impl/util/a/f;->n:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/a/b;-><init>()V

    return-void
.end method

.method public static a(II[B)Lcom/networkbench/agent/impl/util/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-static {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)Lcom/networkbench/agent/impl/util/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)Lcom/networkbench/agent/impl/util/a/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [B

    array-length v1, p3

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    new-array v2, v1, [B

    new-array v3, p2, [B

    const/4 v4, 0x0

    invoke-static {p3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C2C3:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    if-ne p0, v5, :cond_0

    invoke-static {p3, p1, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v1

    invoke-static {p3, p1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    if-ne p0, v5, :cond_1

    invoke-static {p3, p1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p2

    invoke-static {p3, p1, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance p0, Lcom/networkbench/agent/impl/util/a/c;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/a/c;->a([B)V

    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/util/a/c;->b([B)V

    invoke-virtual {p0, v3}, Lcom/networkbench/agent/impl/util/a/c;->c([B)V

    invoke-virtual {p0, p3}, Lcom/networkbench/agent/impl/util/a/c;->d([B)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported mode:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;[B)Lcom/networkbench/agent/impl/util/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/networkbench/agent/impl/util/a/f;->j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/crypto/params/ECDomainParameters;)I

    move-result v0

    const/16 v1, 0x20

    .line 102
    invoke-static {p0, v0, v1, p1}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)Lcom/networkbench/agent/impl/util/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Lcom/networkbench/agent/impl/util/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/networkbench/agent/impl/util/a/f;->j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/crypto/params/ECDomainParameters;)I

    move-result v0

    .line 100
    sget-object v1, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    const/16 v2, 0x20

    invoke-static {v1, v0, v2, p0}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)Lcom/networkbench/agent/impl/util/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    .line 104
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 105
    sget-object v1, Lcom/networkbench/agent/impl/util/a/f;->j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B[B)Z
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B[B[B)Z

    move-result p0

    return p0
.end method

.method public static a(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B[B[B)Z
    .locals 2

    .line 119
    new-instance v0, Lorg/bouncycastle/crypto/signers/SM2Signer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/SM2Signer;-><init>()V

    if-eqz p1, :cond_0

    .line 120
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object p0, v1

    :cond_0
    const/4 p1, 0x0

    .line 121
    invoke-virtual {v0, p1, p0}, Lorg/bouncycastle/crypto/signers/SM2Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 122
    array-length p0, p2

    invoke-virtual {v0, p2, p1, p0}, Lorg/bouncycastle/crypto/signers/SM2Signer;->update([BII)V

    .line 123
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/signers/SM2Signer;->verifySignature([B)Z

    move-result p0

    return p0
.end method

.method public static a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;[B[B)Z
    .locals 1

    .line 114
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 115
    invoke-static {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B[B[B)Z

    move-result p0

    return p0
.end method

.method public static a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;[B[B[B)Z
    .locals 0

    .line 117
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p0

    .line 118
    invoke-static {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B[B[B)Z

    move-result p0

    return p0
.end method

.method public static a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/bouncycastle/crypto/engines/SM2Engine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/SM2Engine;-><init>(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;)V

    const/4 p0, 0x0

    .line 97
    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/crypto/engines/SM2Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 98
    array-length p1, p2

    invoke-virtual {v0, p2, p0, p1}, Lorg/bouncycastle/crypto/engines/SM2Engine;->processBlock([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/bouncycastle/crypto/engines/SM2Engine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/SM2Engine;-><init>(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;)V

    .line 88
    new-instance p0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 p1, 0x1

    .line 89
    invoke-virtual {v0, p1, p0}, Lorg/bouncycastle/crypto/engines/SM2Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p0, 0x0

    .line 90
    array-length p1, p2

    invoke-virtual {v0, p2, p0, p1}, Lorg/bouncycastle/crypto/engines/SM2Engine;->processBlock([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    .line 94
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    .line 85
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 95
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-static {v0, p0, p1}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/bouncycastle/crypto/signers/SM2Signer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/SM2Signer;-><init>()V

    .line 109
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    if-eqz p1, :cond_0

    .line 110
    new-instance p0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v1, p0

    :cond_0
    const/4 p0, 0x1

    .line 111
    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/crypto/signers/SM2Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p0, 0x0

    .line 112
    array-length p1, p2

    invoke-virtual {v0, p2, p0, p1}, Lorg/bouncycastle/crypto/signers/SM2Signer;->update([BII)V

    .line 113
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/SM2Signer;->generateSignature()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 86
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-static {v0, p0, p1}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)[B
    .locals 0

    .line 78
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/f;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p0

    .line 92
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-static {v0, p0, p1}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p0

    .line 107
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)[B
    .locals 4

    .line 79
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    .line 80
    sget v1, Lcom/networkbench/agent/impl/util/a/f;->k:I

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x1

    .line 81
    invoke-static {p0, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p0

    .line 83
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-static {v0, p0, p1}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([BII)[B
    .locals 2

    .line 124
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 125
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b()Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 149
    sget-object v1, Lcom/networkbench/agent/impl/util/a/f;->j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/a/a;->b(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static b(II[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-static {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/util/a/f;->b(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-array v0, p1, [B

    new-array v1, p1, [B

    array-length v2, p3

    sub-int/2addr v2, p1

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    new-array v4, v2, [B

    new-array v5, p2, [B

    const/4 v6, 0x0

    invoke-static {p3, v3, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, p1, 0x1

    invoke-static {p3, v7, v1, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, p1

    sget-object p1, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C2C3:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    if-ne p0, p1, :cond_0

    invoke-static {p3, v7, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v2

    invoke-static {p3, v7, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object v8, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    if-ne p0, v8, :cond_3

    invoke-static {p3, v7, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, p2

    invoke-static {p3, v7, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p2, 0x4

    new-array p2, p2, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance p3, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p3, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object p3, p2, v6

    new-instance p3, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object p3, p2, v3

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-ne p0, p1, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object p0, p2, v0

    new-instance p0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object p0, p2, p3

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    if-ne p0, p1, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object p0, p2, v0

    new-instance p0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object p0, p2, p3

    :cond_2
    :goto_1
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported mode:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/networkbench/agent/impl/util/a/f;->j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/crypto/params/ECDomainParameters;)I

    move-result v0

    const/16 v1, 0x20

    .line 146
    invoke-static {p0, v0, v1, p1}, Lcom/networkbench/agent/impl/util/a/f;->b(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-static {p0, v0, p1}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, v0, p1}, Lcom/networkbench/agent/impl/util/a/f;->a(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/networkbench/agent/impl/util/a/f;->j:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/a/a;->a(Lorg/bouncycastle/crypto/params/ECDomainParameters;)I

    move-result v0

    .line 144
    sget-object v1, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    const/16 v2, 0x20

    invoke-static {v1, v0, v2, p0}, Lcom/networkbench/agent/impl/util/a/f;->b(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;II[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/a/f;->f([B)[B

    move-result-object v1

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/a/f;->f([B)[B

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C2C3:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne p0, v4, :cond_0

    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v7, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    if-ne p0, v7, :cond_3

    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    move-object v8, v6

    move-object v6, p1

    move-object p1, v8

    :goto_0
    array-length v5, v1

    add-int/2addr v5, v2

    array-length v7, v3

    add-int/2addr v5, v7

    array-length v7, v6

    add-int/2addr v5, v7

    array-length v7, p1

    add-int/2addr v5, v7

    new-array v5, v5, [B

    const/4 v7, 0x4

    aput-byte v7, v5, v0

    array-length v7, v1

    invoke-static {v1, v0, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v2, v1

    array-length v1, v3

    invoke-static {v3, v0, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v3

    add-int/2addr v2, v1

    if-ne p0, v4, :cond_1

    array-length p0, v6

    invoke-static {v6, v0, v5, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v6

    add-int/2addr v2, p0

    array-length p0, p1

    invoke-static {p1, v0, v5, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :cond_1
    sget-object v1, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    if-ne p0, v1, :cond_2

    array-length p0, p1

    invoke-static {p1, v0, v5, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    add-int/2addr v2, p0

    array-length p0, v6

    invoke-static {v6, v0, v5, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v5

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/a/f;->c(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([B)[B
    .locals 4

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/a/f;->f([B)[B

    move-result-object v1

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/a/f;->f([B)[B

    move-result-object p0

    array-length v2, v1

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, p0

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static e([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p0, v1, v2}, Lcom/networkbench/agent/impl/util/a/f;->a([BII)[B

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p0, v2, v2}, Lcom/networkbench/agent/impl/util/a/f;->a([BII)[B

    move-result-object p0

    invoke-direct {v1, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string p0, "DER"

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static f([B)[B
    .locals 4

    array-length v0, p0

    sget v1, Lcom/networkbench/agent/impl/util/a/f;->k:I

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-array v0, v1, [B

    array-length v2, p0

    const/4 v3, 0x0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    array-length v2, p0

    sub-int/2addr v1, v2

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
