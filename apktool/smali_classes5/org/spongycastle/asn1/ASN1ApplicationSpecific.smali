.class public abstract Lorg/spongycastle/asn1/ASN1ApplicationSpecific;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:[B


# direct methods
.method public constructor <init>(I[BZ)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-boolean p3, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->b:Z

    iput p1, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->c:I

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->d:[B

    return-void
.end method

.method public static r([B)I
    .locals 3

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    and-int/2addr p0, v1

    const/4 v0, 0x4

    if-gt p0, v0, :cond_1

    add-int/2addr p0, v2

    return p0

    :cond_1
    const-string v0, "DER length more than 4 bytes: "

    invoke-static {p0, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->b:Z

    iget v1, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->c:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->d:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->g([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->b:Z

    iget-boolean v2, p1, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->b:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->c:I

    iget v2, p1, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->c:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->d:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->d:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final m()I
    .locals 2

    iget v0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->c:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->b(I)I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->d:[B

    array-length v1, p0

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final o()Z
    .locals 0

    iget-boolean p0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->b:Z

    return p0
.end method
