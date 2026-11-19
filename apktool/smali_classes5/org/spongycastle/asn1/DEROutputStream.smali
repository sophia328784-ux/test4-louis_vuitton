.class public Lorg/spongycastle/asn1/DEROutputStream;
.super Lorg/spongycastle/asn1/ASN1OutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/asn1/DEROutputStream;
    .locals 0

    return-object p0
.end method

.method public final b()Lorg/spongycastle/asn1/ASN1OutputStream;
    .locals 0

    return-object p0
.end method

.method public final g(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->p()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/spongycastle/asn1/ASN1Primitive;->l(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    return-void

    :cond_0
    const-string p0, "null object detected"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method
