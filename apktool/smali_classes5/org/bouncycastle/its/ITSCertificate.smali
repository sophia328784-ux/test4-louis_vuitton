.class public Lorg/bouncycastle/its/ITSCertificate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private final certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object p0

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getPublicEncryptionKey()Lorg/bouncycastle/its/ITSPublicEncryptionKey;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/its/ITSPublicEncryptionKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValidityPeriod()Lorg/bouncycastle/its/ITSValidityPeriod;
    .locals 1

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod;

    iget-object p0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getValidityPeriod()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ITSValidityPeriod;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;)V

    return-object v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;->getChoice()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object p0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toX962(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p0

    return p0
.end method

.method public toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    return-object p0
.end method
