.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/spongycastle/pqc/jcajce/interfaces/XMSSMTKey;


# instance fields
.field public final b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public final c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 176
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->c:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->c:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iget-object v1, v0, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;->e:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->m()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v3, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    :try_start_0
    new-instance p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget v5, v0, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;->c:I

    iget v0, v0, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;->d:I

    invoke-static {v1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/DigestUtil;->a(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/ExtendedDigest;

    move-result-object v1

    invoke-direct {v4, v5, v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/spongycastle/crypto/Digest;)V

    invoke-direct {p1, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    iget v0, v3, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->b:I

    iget-object v1, v3, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->g:[B

    int-to-long v4, v0

    iput-wide v4, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->b:J

    iget-object v0, v3, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->c:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->c:[B

    iget-object v0, v3, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->d:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->d:[B

    iget-object v0, v3, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->e:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->e:[B

    iget-object v0, v3, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->f:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->f:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    iput-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->g:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    const-string p1, "ClassNotFoundException processing BDS state: "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Laz;->y(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a()Lorg/spongycastle/pqc/asn1/XMSSMTPrivateKey;
    .locals 12

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->a()[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->a()I

    move-result v1

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->b:I

    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-static {v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->a(I[B)J

    move-result-wide v3

    long-to-int v6, v3

    int-to-long v3, v6

    invoke-static {p0, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->f(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->e([BII)[B

    move-result-object v7

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->e([BII)[B

    move-result-object v8

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->e([BII)[B

    move-result-object v9

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->e([BII)[B

    move-result-object v10

    add-int/2addr v2, v1

    array-length p0, v0

    sub-int/2addr p0, v2

    invoke-static {v0, v2, p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->e([BII)[B

    move-result-object v11

    new-instance v5, Lorg/spongycastle/pqc/asn1/XMSSMTPrivateKey;

    invoke-direct/range {v5 .. v11}, Lorg/spongycastle/pqc/asn1/XMSSMTPrivateKey;-><init>(I[B[B[B[B[B)V

    return-object v5

    :cond_0
    const-string p0, "index out of bounds"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->a()[B

    move-result-object p0

    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->a()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "XMSSMT"

    return-object p0
.end method

.method public final getEncoded()[B
    .locals 7

    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->g:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    iget-object v3, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->b:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget v4, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->b:I

    iget v3, v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->c:I

    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v2, v4, v3, v5}, Lorg/spongycastle/pqc/asn1/XMSSMTKeyParams;-><init>(IILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->a()Lorg/spongycastle/pqc/asn1/XMSSMTPrivateKey;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Object;->f()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->c:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->a()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->g([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, v0

    return p0
.end method
