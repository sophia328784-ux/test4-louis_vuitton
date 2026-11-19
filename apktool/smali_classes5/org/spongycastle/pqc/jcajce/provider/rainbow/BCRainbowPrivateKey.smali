.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final b:[[S

.field public final c:[S

.field public final d:[[S

.field public final e:[S

.field public final f:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field public final g:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;)V
    .locals 7

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->c:[[S

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->d:[S

    iget-object v3, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->e:[[S

    iget-object v4, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->f:[S

    iget-object v5, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->g:[I

    iget-object v6, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->h:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;)V
    .locals 7

    .line 24
    iget-object v1, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->b:[[S

    .line 25
    iget-object v2, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->c:[S

    .line 26
    iget-object v3, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->d:[[S

    .line 27
    iget-object v4, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->e:[S

    .line 28
    iget-object v5, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->f:[I

    .line 29
    iget-object v6, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->g:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object v0, p0

    .line 30
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b:[[S

    .line 19
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->c:[S

    .line 20
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->d:[[S

    .line 21
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->e:[S

    .line 22
    iput-object p5, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->g:[I

    .line 23
    iput-object p6, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->f:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    iget-object v1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->f:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b:[[S

    iget-object v3, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b:[[S

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->h([[S[[S)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->d:[[S

    iget-object v4, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->d:[[S

    invoke-static {v2, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->h([[S[[S)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->c:[S

    iget-object v4, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->c:[S

    invoke-static {v2, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->g([S[S)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->e:[S

    iget-object v4, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->e:[S

    invoke-static {v2, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->g([S[S)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->g:[I

    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->g:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->f:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v2, p0

    array-length v4, v1

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    array-length v0, p0

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_3

    aget-object v2, p0, v0

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr p1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "Rainbow"

    return-object p0
.end method

.method public final getEncoded()[B
    .locals 7

    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    iget-object v5, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->g:[I

    iget-object v6, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->f:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b:[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->c:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->d:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->e:[S

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->a:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->b:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v2, v1, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Object;->f()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->f:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b:[[S

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->k([[S)I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->c:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->j([S)I

    move-result v1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->d:[[S

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->k([[S)I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->e:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->j([S)I

    move-result v1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->g:[I

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->h([I)I

    move-result p0

    add-int/2addr p0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    mul-int/lit8 p0, p0, 0x25

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->hashCode()I

    move-result v2

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return p0
.end method
