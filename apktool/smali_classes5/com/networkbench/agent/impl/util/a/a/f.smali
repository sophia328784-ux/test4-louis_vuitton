.class public Lcom/networkbench/agent/impl/util/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/pkcs/PKCS12PfxPdu;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 177
    new-instance p0, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;

    invoke-direct {p0}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;-><init>()V

    .line 178
    new-instance v0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 179
    sget-object p3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DERBMPString;

    const-string v2, "User Key"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    .line 180
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 181
    invoke-virtual {p0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->createSubjectKeyIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    .line 182
    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    .line 183
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    .line 184
    new-instance v3, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;

    new-instance v4, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v7, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v7}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 185
    invoke-virtual {v4, p4}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;->build([C)Lorg/bouncycastle/operator/OutputEncryptor;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;-><init>(Ljava/security/PrivateKey;Lorg/bouncycastle/operator/OutputEncryptor;)V

    .line 186
    new-instance p1, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {p1, v2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, p1}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    .line 187
    invoke-virtual {p0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->createSubjectKeyIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    .line 188
    invoke-virtual {v3, v1, p0}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    .line 189
    new-instance p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    invoke-direct {p0}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;-><init>()V

    .line 190
    invoke-virtual {v0}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->build()Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p1

    filled-new-array {p1}, [Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p1

    .line 191
    new-instance p2, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;

    sget-object p3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p2, p3, v0}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 192
    invoke-virtual {p2, p4}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;->build([C)Lorg/bouncycastle/operator/OutputEncryptor;

    move-result-object p2

    .line 193
    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;[Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    .line 194
    invoke-virtual {v3}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->build()Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addData(Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    .line 195
    new-instance p1, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;

    invoke-direct {p1}, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;-><init>()V

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->build(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;[C)Lorg/bouncycastle/pkcs/PKCS12PfxPdu;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/security/PrivateKey;Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/pkcs/PKCS12PfxPdu;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    new-instance p0, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;

    invoke-direct {p0}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;-><init>()V

    new-instance v0, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;-><init>(Ljava/security/cert/X509Certificate;)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DERBMPString;

    const-string v3, "Primary Certificate"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    new-instance v2, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;

    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;-><init>(Ljava/security/cert/X509Certificate;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERBMPString;

    const-string v4, "Intermediate Certificate"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    new-instance v3, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;

    const/4 v4, 0x0

    aget-object p3, p3, v4

    invoke-direct {v3, p3}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;-><init>(Ljava/security/cert/X509Certificate;)V

    new-instance p3, Lorg/bouncycastle/asn1/DERBMPString;

    const-string v4, "User Key"

    invoke-direct {p3, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, p3}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    sget-object p3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->createSubjectKeyIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-virtual {v3, p3, v5}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    new-instance v5, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;

    new-instance v6, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;

    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v9, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v9}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v8, v9}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-virtual {v6, p4}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;->build([C)Lorg/bouncycastle/operator/OutputEncryptor;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;-><init>(Ljava/security/PrivateKey;Lorg/bouncycastle/operator/OutputEncryptor;)V

    new-instance p1, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {p1, v4}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, p1}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->createSubjectKeyIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    invoke-virtual {v5, p3, p0}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->addBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;

    new-instance p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    invoke-direct {p0}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->build()Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p1

    invoke-virtual {v2}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->build()Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p2

    invoke-virtual {v0}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->build()Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;

    sget-object p3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p2, p3, v0}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-virtual {p2, p4}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;->build([C)Lorg/bouncycastle/operator/OutputEncryptor;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;[Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    invoke-virtual {v5}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;->build()Lorg/bouncycastle/pkcs/PKCS12SafeBag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addData(Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    new-instance p1, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;

    invoke-direct {p1}, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;-><init>()V

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->build(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;[C)Lorg/bouncycastle/pkcs/PKCS12PfxPdu;

    move-result-object p0

    return-object p0
.end method
