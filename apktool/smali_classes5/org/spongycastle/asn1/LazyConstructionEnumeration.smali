.class Lorg/spongycastle/asn1/LazyConstructionEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public final a:Lorg/spongycastle/asn1/ASN1InputStream;

.field public b:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([BZ)V

    iput-object v0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->a:Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->a()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->b:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->a:Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->j()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string v1, "malformed DER construction: "

    invoke-static {v1, p0}, Lo60;->m(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hasMoreElements()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->b:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->b:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->a()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->b:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method
