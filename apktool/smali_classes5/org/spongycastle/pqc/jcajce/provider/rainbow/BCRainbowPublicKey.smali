.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final b:[[S

.field public final c:[[S

.field public final d:[S

.field public final e:I


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->e:I

    .line 19
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->b:[[S

    .line 20
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->c:[[S

    .line 21
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->d:[S

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;)V
    .locals 3

    iget v0, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->b:I

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->c:[[S

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->d:[[S

    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->e:[S

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;)V
    .locals 3

    .line 12
    iget v0, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->e:I

    .line 13
    iget-object v1, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->b:[[S

    .line 14
    iget-object v2, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->c:[[S

    .line 15
    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->d:[S

    .line 16
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->e:I

    iget v2, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->e:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->b:[[S

    iget-object v2, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->b:[[S

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->h([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->c:[[S

    array-length v2, v1

    new-array v2, v2, [[S

    move v3, v0

    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->d([S)[S

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->c:[[S

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->h([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->d:[S

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->d([S)[S

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->d:[S

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->g([S[S)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "Rainbow"

    return-object p0
.end method

.method public final getEncoded()[B
    .locals 4

    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->c:[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->d:[S

    iget v3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->e:I

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->b:[[S

    invoke-direct {v0, v3, p0, v1, v2}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;-><init>(I[[S[[S[S)V

    new-instance p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->a:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->b:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v2, p0, v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    const-string p0, "DER"

    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->e:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->b:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->k([[S)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->c:[[S

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->k([[S)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->d:[S

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->j([S)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
