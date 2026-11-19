.class Lorg/spongycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Lorg/spongycastle/asn1/ASN1StreamParser;

.field public c:Z

.field public d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->c:Z

    iput-object p1, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    const/4 v2, -0x1

    if-nez v0, :cond_2

    .line 70
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1StreamParser;->a()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x0

    .line 72
    iput-boolean v3, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->c:Z

    .line 73
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    .line 74
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_3

    return v0

    .line 75
    :cond_3
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1StreamParser;->a()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    return v2

    .line 77
    :cond_4
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    goto :goto_1
.end method

.method public final read([BII)I
    .locals 5

    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->c:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1StreamParser;->a()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->c:Z

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_2

    return v1

    :cond_3
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1StreamParser;->a()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-nez v0, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_4

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_4
    return v1

    :cond_5
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->d:Ljava/io/InputStream;

    goto :goto_0
.end method
