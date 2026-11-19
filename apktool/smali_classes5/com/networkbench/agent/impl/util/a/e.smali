.class public Lcom/networkbench/agent/impl/util/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECConstants;


# static fields
.field private static final a:I = 0x20


# instance fields
.field private final b:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

.field private c:Lorg/bouncycastle/crypto/Digest;

.field private d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field private e:Lorg/bouncycastle/math/ec/ECPoint;

.field private f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

.field private g:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->b:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private a(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 191
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object p0

    const/4 p2, 0x0

    .line 192
    array-length v0, p0

    invoke-interface {p1, p0, p2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private a(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 1

    .line 187
    array-length p0, p2

    mul-int/lit8 p0, p0, 0x8

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 188
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 189
    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    const/4 p0, 0x0

    .line 190
    array-length v0, p2

    invoke-interface {p1, p2, p0, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private a([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 177
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/a/e;->b([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 180
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 181
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/networkbench/agent/impl/util/a/e;->f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 183
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0, p3, v2, v1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result p3

    if-eqz p3, :cond_3

    return v3

    .line 185
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 186
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v3
.end method

.method private c()[B
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 60
    iget-object v1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 61
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/a/e;->a()V

    return-object v0
.end method

.method private d([B)[B
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/util/a/e;->a(Lorg/bouncycastle/crypto/Digest;[B)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/util/a/e;->a(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/util/a/e;->a(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/util/a/e;->a(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/util/a/e;->a(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->e:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/util/a/e;->a(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->e:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/util/a/e;->a(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public a(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 151
    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/networkbench/agent/impl/util/a/e;->a(ZLorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public a(ZLorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iput-object p2, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    instance-of p2, p3, Lorg/bouncycastle/crypto/params/ParametersWithID;

    if-eqz p2, :cond_0

    check-cast p3, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object p3

    iput-object p3, p0, Lcom/networkbench/agent/impl/util/a/e;->g:[B

    move-object p3, p2

    goto :goto_0

    :cond_0
    const-string p2, "31323334353637383132333435363738"

    invoke-static {p2}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/util/a/e;->g:[B

    :goto_0
    if-eqz p1, :cond_2

    instance-of p1, p3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_1

    check-cast p3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    iget-object p2, p0, Lcom/networkbench/agent/impl/util/a/e;->b:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_1

    :cond_1
    check-cast p3, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    iput-object p3, p0, Lcom/networkbench/agent/impl/util/a/e;->f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    iget-object p2, p0, Lcom/networkbench/agent/impl/util/a/e;->b:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/a/e;->b()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object p1

    iget-object p2, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    iget-object p3, p0, Lcom/networkbench/agent/impl/util/a/e;->f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast p3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->e:Lorg/bouncycastle/math/ec/ECPoint;

    return-void

    :cond_2
    check-cast p3, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    iput-object p3, p0, Lcom/networkbench/agent/impl/util/a/e;->f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/a/e;->e:Lorg/bouncycastle/math/ec/ECPoint;

    return-void

    :cond_3
    const-string p0, "Digest size must be 32"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public a([B[B)Z
    .locals 3

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/util/a/e;->c([B)[Ljava/math/BigInteger;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 158
    aget-object v1, p2, v0

    const/4 v2, 0x1

    aget-object p2, p2, v2

    invoke-direct {p0, p1, v1, p2}, Lcom/networkbench/agent/impl/util/a/e;->a([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 194
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 195
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 196
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string p0, "DER"

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public a([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 161
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/a/e;->b([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 162
    iget-object v1, p0, Lcom/networkbench/agent/impl/util/a/e;->f:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/a/e;->b()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v2

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/util/a/e;->b:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/networkbench/agent/impl/util/a/e;->d:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 167
    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    sget-object v6, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 169
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 170
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 171
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p0, v4, v3}, Lcom/networkbench/agent/impl/util/a/e;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to encode signature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {p0, v0}, Ln00;->o(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public a([BII)[B
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->g:[B

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/a/e;->d([B)[B

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 154
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/16 p1, 0x20

    .line 155
    new-array p1, p1, [B

    .line 156
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/a/e;->c:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p1
.end method

.method public b([B)Ljava/math/BigInteger;
    .locals 1

    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public b()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 0

    .line 7
    new-instance p0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object p0
.end method

.method public c([B)[Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/agent/impl/util/a/e;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    filled-new-array {v1, v0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
