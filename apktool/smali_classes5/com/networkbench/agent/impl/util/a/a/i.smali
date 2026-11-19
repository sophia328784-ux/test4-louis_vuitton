.class public Lcom/networkbench/agent/impl/util/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/util/a/a/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "SM3withSM2"


# instance fields
.field private b:J

.field private c:Lorg/bouncycastle/asn1/x500/X500Name;

.field private d:Lcom/networkbench/agent/impl/util/a/a/a;

.field private e:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;JLorg/bouncycastle/asn1/x500/X500Name;Lcom/networkbench/agent/impl/util/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/a/a/i;->e:Ljava/security/KeyPair;

    iput-wide p2, p0, Lcom/networkbench/agent/impl/util/a/a/i;->b:J

    iput-object p4, p0, Lcom/networkbench/agent/impl/util/a/a/i;->c:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p5, p0, Lcom/networkbench/agent/impl/util/a/a/i;->d:Lcom/networkbench/agent/impl/util/a/a/a;

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/util/a/a/i$a;Ljava/lang/Integer;[BLorg/bouncycastle/asn1/x509/KeyUsage;[Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/security/cert/X509Certificate;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    sget-object v4, Lcom/networkbench/agent/impl/util/a/a/i$a;->c:Lcom/networkbench/agent/impl/util/a/a/i$a;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "keyusage keyCertSign is not allowed in EndEntity Certificate"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v5

    :cond_1
    :goto_0
    new-instance v4, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    move-object/from16 v6, p3

    invoke-direct {v4, v6}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v12

    iget-object v6, v0, Lcom/networkbench/agent/impl/util/a/a/i;->e:Ljava/security/KeyPair;

    invoke-virtual {v6}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v13

    iget-object v6, v0, Lcom/networkbench/agent/impl/util/a/a/i;->e:Ljava/security/KeyPair;

    invoke-virtual {v6}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v4}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v5

    move-object v10, v9

    const/4 v8, 0x0

    :goto_1
    array-length v11, v6

    if-ge v8, v11, :cond_4

    aget-object v11, v6, v8

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v15, Lorg/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    sget-object v15, Lorg/bouncycastle/asn1/x500/style/BCStyle;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v10

    :cond_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    goto :goto_1

    :cond_4
    move-object/from16 v17, v5

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/4 v15, 0x1

    if-eqz v9, :cond_5

    new-instance v4, Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v6, 0x0

    new-array v8, v6, [Lorg/bouncycastle/asn1/x500/RDN;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>([Lorg/bouncycastle/asn1/x500/RDN;)V

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v7, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v7, v9, v15}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v6, v15, v7}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v6, Lcom/networkbench/agent/impl/util/a/a/i$1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x2

    if-eq v6, v15, :cond_9

    iget-object v8, v0, Lcom/networkbench/agent/impl/util/a/a/i;->c:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eq v6, v7, :cond_6

    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, v0, Lcom/networkbench/agent/impl/util/a/a/i;->c:Lorg/bouncycastle/asn1/x500/X500Name;

    move-object v11, v4

    move v4, v15

    goto :goto_4

    :cond_6
    invoke-virtual {v8, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    :goto_3
    move-object v11, v4

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    const-string v0, "subject MUST not equals issuer for certLevel "

    invoke-static {v1, v0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v17

    :cond_9
    iget-object v6, v0, Lcom/networkbench/agent/impl/util/a/a/i;->c:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/networkbench/agent/impl/util/a/a/i;->c:Lorg/bouncycastle/asn1/x500/X500Name;

    goto :goto_3

    :goto_4
    iget-object v6, v0, Lcom/networkbench/agent/impl/util/a/a/i;->d:Lcom/networkbench/agent/impl/util/a/a/a;

    invoke-interface {v6}, Lcom/networkbench/agent/impl/util/a/a/a;->a()Ljava/math/BigInteger;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    move-object v6, v10

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-object/from16 v20, v8

    iget-wide v7, v0, Lcom/networkbench/agent/impl/util/a/a/i;->b:J

    add-long v7, v18, v7

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v7, v6

    new-instance v6, Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    move-object v8, v7

    iget-object v7, v0, Lcom/networkbench/agent/impl/util/a/a/i;->c:Lorg/bouncycastle/asn1/x500/X500Name;

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    invoke-direct/range {v6 .. v12}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    new-instance v7, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;

    invoke-direct {v7}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;-><init>()V

    sget-object v8, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v12}, Lorg/bouncycastle/cert/X509ExtensionUtils;->createSubjectKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10, v9}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    sget-object v8, Lcom/networkbench/agent/impl/util/a/a/i$a;->a:Lcom/networkbench/agent/impl/util/a/a/i$a;

    if-eq v1, v8, :cond_a

    if-nez v4, :cond_a

    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/cert/X509ExtensionUtils;->createAuthorityKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v7

    invoke-virtual {v6, v4, v10, v7}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    :cond_a
    sget-object v4, Lcom/networkbench/agent/impl/util/a/a/i$a;->c:Lcom/networkbench/agent/impl/util/a/a/i$a;

    if-ne v1, v4, :cond_b

    new-instance v1, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {v1, v10}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Z)V

    goto :goto_5

    :cond_b
    if-nez p2, :cond_c

    new-instance v1, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {v1, v15}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Z)V

    goto :goto_5

    :cond_c
    new-instance v1, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(I)V

    :goto_5
    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v4, v15, v1}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v1, v15, v2}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    if-eqz v3, :cond_f

    new-instance v1, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;-><init>([Lorg/bouncycastle/asn1/x509/KeyPurposeId;)V

    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v10, 0x0

    invoke-virtual {v6, v2, v10, v1}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    array-length v1, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_f

    aget-object v4, v3, v2

    sget-object v7, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-virtual {v7, v4}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v7, v21

    if-eqz v7, :cond_d

    new-instance v1, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v2, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v2, v7, v15}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    const-string v0, "commonName must not be null"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v17

    :cond_e
    move-object/from16 v7, v21

    const/4 v4, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralNames;

    const/4 v10, 0x0

    new-array v3, v10, [Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>([Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v6, v1, v10, v2}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    :cond_10
    invoke-direct {v0, v14}, Lcom/networkbench/agent/impl/util/a/a/i;->a(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    const-string v2, "BC"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object v1

    invoke-virtual {v0, v13}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    return-object v0

    :cond_11
    const-string v0, "subject != issuer for certLevel "

    sget-object v1, Lcom/networkbench/agent/impl/util/a/a/i$a;->a:Lcom/networkbench/agent/impl/util/a/a/i$a;

    invoke-static {v1, v0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v17
.end method

.method private a(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 454
    new-instance p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string p1, "SM3withSM2"

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    const-string p1, "BC"

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    return-object p0

    .line 456
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported PublicKey Algorithm:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a([B)Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 451
    new-instance v4, Lorg/bouncycastle/asn1/x509/KeyUsage;

    const/4 v0, 0x6

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    .line 452
    sget-object v1, Lcom/networkbench/agent/impl/util/a/a/i$a;->a:Lcom/networkbench/agent/impl/util/a/a/i$a;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/util/a/a/i;->a(Lcom/networkbench/agent/impl/util/a/a/i$a;Ljava/lang/Integer;[BLorg/bouncycastle/asn1/x509/KeyUsage;[Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public a([B[Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    new-instance v4, Lorg/bouncycastle/asn1/x509/KeyUsage;

    const/16 v0, 0xb8

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    .line 450
    sget-object v1, Lcom/networkbench/agent/impl/util/a/a/i$a;->b:Lcom/networkbench/agent/impl/util/a/a/i$a;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/util/a/a/i;->a(Lcom/networkbench/agent/impl/util/a/a/i$a;Ljava/lang/Integer;[BLorg/bouncycastle/asn1/x509/KeyUsage;[Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public b([B)Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v4, Lorg/bouncycastle/asn1/x509/KeyUsage;

    const/4 v0, 0x6

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    sget-object v1, Lcom/networkbench/agent/impl/util/a/a/i$a;->b:Lcom/networkbench/agent/impl/util/a/a/i$a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/util/a/a/i;->a(Lcom/networkbench/agent/impl/util/a/a/i$a;Ljava/lang/Integer;[BLorg/bouncycastle/asn1/x509/KeyUsage;[Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public c([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    filled-new-array {v0, v1}, [Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/util/a/a/i;->a([B[Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method
