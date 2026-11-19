.class public Lorg/bouncycastle/asn1/cmp/CRLSource;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

.field private final issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void

    :cond_1
    const-string p0, "unknown tag "

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void

    :cond_2
    const-string p0, "either dpn or issuer must be set"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CRLSource;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/CRLSource;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CRLSource;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/CRLSource;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDpn()Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object p0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v1, v1, p0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
