.class public Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;
    }
.end annotation


# instance fields
.field private digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field private final parentData:[B

.field private pubParams:Ljava/security/interfaces/ECPublicKey;

.field private sigChoice:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void

    :cond_0
    const-string p0, "not public verification key"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unable to extract parent data: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ln00;->o(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSPublicVerificationKey;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;)Ljava/security/interfaces/ECPublicKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    return-object p0
.end method

.method private initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_0
    const-string p0, "unknown key type"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-virtual {v0}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;->getKey()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    const-string v0, "choice "

    iget v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    if-ne v1, p1, :cond_4

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v6

    :try_start_1
    invoke-interface {v6}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    invoke-virtual {v5, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-interface {v6}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v9

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/its/ITSCertificate;->getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v1

    array-length v3, v1

    invoke-virtual {v5, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {v6}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "SHA384withECDSA"

    :goto_2
    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not supported"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "SHA256withECDSA"

    goto :goto_2

    :goto_3
    new-instance v3, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;-><init>(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/operator/DigestCalculator;Ljava/security/Signature;[B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Laz;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :cond_4
    new-instance p0, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v0, "wrong verifier for algorithm: "

    invoke-static {p1, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object p0
.end method

.method public hasAssociatedCertificate()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
