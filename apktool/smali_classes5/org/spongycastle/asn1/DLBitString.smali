.class public Lorg/spongycastle/asn1/DLBitString;
.super Lorg/spongycastle/asn1/ASN1BitString;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 16
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1BitString;->s(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1BitString;->t(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DLBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public final l(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1BitString;->b:[B

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    iget p0, p0, Lorg/spongycastle/asn1/ASN1BitString;->c:I

    int-to-byte p0, p0

    const/4 v3, 0x0

    aput-byte p0, v2, v3

    const/4 p0, 0x1

    invoke-static {v0, v3, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->d(I[B)V

    return-void
.end method

.method public final m()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1BitString;->b:[B

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length p0, p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
