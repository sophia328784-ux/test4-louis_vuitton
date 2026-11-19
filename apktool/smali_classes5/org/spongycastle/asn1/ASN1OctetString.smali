.class public abstract Lorg/spongycastle/asn1/ASN1OctetString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1OctetStringParser;


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    return-void

    :cond_0
    const-string p0, "string cannot be null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->n([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->r(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct OCTET STRING from byte[]: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ln00;->o(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v2, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0

    :cond_2
    const-string v0, "illegal object in getInstance: "

    invoke-static {p0, v0}, Lo60;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1OctetString;

    return-object p0
.end method


# virtual methods
.method public final getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method public final getOctetStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->s()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->g([B)I

    move-result p0

    return p0
.end method

.method public final i(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1OctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->a([B[B)Z

    move-result p0

    return p0
.end method

.method public final p()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public final q()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public s()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/spongycastle/util/encoders/Hex;->a:Lorg/spongycastle/util/encoders/HexEncoder;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->b:[B

    array-length v0, p0

    invoke-static {v0, p0}, Lorg/spongycastle/util/encoders/Hex;->b(I[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->a([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
