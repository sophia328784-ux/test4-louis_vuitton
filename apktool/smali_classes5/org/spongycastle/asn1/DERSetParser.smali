.class public Lorg/spongycastle/asn1/DERSetParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1SetParser;


# instance fields
.field public b:Lorg/spongycastle/asn1/ASN1StreamParser;


# virtual methods
.method public final getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    iget-object p0, p0, Lorg/spongycastle/asn1/DERSetParser;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->c()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/ASN1Set;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V

    const/4 p0, -0x1

    iput p0, v0, Lorg/spongycastle/asn1/DERSet;->d:I

    return-object v0
.end method

.method public final toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSetParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
