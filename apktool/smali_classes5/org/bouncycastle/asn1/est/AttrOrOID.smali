.class public Lorg/bouncycastle/asn1/est/AttrOrOID;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

.field private final oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/Attribute;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/AttrOrOID;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/est/AttrOrOID;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    instance-of v1, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/est/AttrOrOID;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object p0

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/est/AttrOrOID;-><init>(Lorg/bouncycastle/asn1/pkcs/Attribute;)V

    return-object p0

    :cond_2
    instance-of v1, p0, [B

    if-eqz v1, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/est/AttrOrOID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "unknown encoding in getInstance()"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v1, "unknown object in getInstance(): "

    invoke-static {p0, v1}, Lo60;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getAttribute()Lorg/bouncycastle/asn1/pkcs/Attribute;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object p0
.end method

.method public getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public isOid()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/Attribute;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method
