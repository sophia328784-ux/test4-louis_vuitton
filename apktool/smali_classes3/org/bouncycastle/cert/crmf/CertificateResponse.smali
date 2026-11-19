.class public Lorg/bouncycastle/cert/crmf/CertificateResponse;
.super Ljava/lang/Object;


# instance fields
.field private final certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    return-void
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateResponse;->hasEncryptedCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertResponse;->getCertifiedKeyPair()Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->getCertificate()Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "plaintext certificate asked for, none found"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCertificate(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateResponse;->getEncryptedCertificate()Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/cms/RecipientInformation;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptedCertificate()Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateResponse;->hasEncryptedCertificate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertResponse;->getCertifiedKeyPair()Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedData;

    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->getEncryptedCert()Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/RecipientInformationStore;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const-string p0, "data encrypted for more than one recipient"

    :goto_0
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "encrypted certificate asked for, none found"

    goto :goto_0
.end method

.method public hasEncryptedCertificate()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertResponse;->getCertifiedKeyPair()Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->hasEncryptedCertificate()Z

    move-result p0

    return p0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertResponse;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    return-object p0
.end method
