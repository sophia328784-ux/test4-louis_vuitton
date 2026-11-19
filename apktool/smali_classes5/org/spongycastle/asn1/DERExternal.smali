.class public Lorg/spongycastle/asn1/DERExternal;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field public final b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public final c:Lorg/spongycastle/asn1/ASN1Integer;

.field public final d:Lorg/spongycastle/asn1/ASN1Primitive;

.field public final e:I

.field public final f:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 4

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/spongycastle/asn1/DERExternal;->r(ILorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3, p1}, Lorg/spongycastle/asn1/DERExternal;->r(ILorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    move v0, v3

    :cond_0
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->c:Lorg/spongycastle/asn1/ASN1Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/spongycastle/asn1/DERExternal;->r(ILorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->d:Lorg/spongycastle/asn1/ASN1Primitive;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/spongycastle/asn1/DERExternal;->r(ILorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_2
    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1EncodableVector;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    add-int/2addr v0, v3

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    instance-of p1, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz p1, :cond_4

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    iget p1, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    if-ltz p1, :cond_3

    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    iput p1, p0, Lorg/spongycastle/asn1/DERExternal;->e:I

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->s()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/DERExternal;->f:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void

    :cond_3
    const-string p0, "invalid encoding value: "

    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p0, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p0, "input vector too large"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Primitive;ILorg/spongycastle/asn1/ASN1Primitive;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/spongycastle/asn1/DERExternal;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    iput-object p2, p0, Lorg/spongycastle/asn1/DERExternal;->c:Lorg/spongycastle/asn1/ASN1Integer;

    .line 105
    iput-object p3, p0, Lorg/spongycastle/asn1/DERExternal;->d:Lorg/spongycastle/asn1/ASN1Primitive;

    if-ltz p4, :cond_0

    const/4 p1, 0x2

    if-gt p4, p1, :cond_0

    .line 106
    iput p4, p0, Lorg/spongycastle/asn1/DERExternal;->e:I

    .line 107
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    iput-object p5, p0, Lorg/spongycastle/asn1/DERExternal;->f:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void

    .line 109
    :cond_0
    const-string p0, "invalid encoding value: "

    .line 110
    invoke-static {p4, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Primitive;Lorg/spongycastle/asn1/DERTaggedObject;)V
    .locals 6

    .line 112
    iget v4, p4, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 113
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/DERExternal;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Primitive;ILorg/spongycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public static r(ILorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p1, Lorg/spongycastle/asn1/ASN1EncodableVector;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p0, :cond_0

    invoke-virtual {p1, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->b(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "too few objects in input vector"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->c:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->d:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object p0, p0, Lorg/spongycastle/asn1/DERExternal;->f:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/asn1/DERExternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/asn1/DERExternal;

    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/spongycastle/asn1/DERExternal;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->c:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lorg/spongycastle/asn1/DERExternal;->c:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->d:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lorg/spongycastle/asn1/DERExternal;->d:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object p0, p0, Lorg/spongycastle/asn1/DERExternal;->f:Lorg/spongycastle/asn1/ASN1Primitive;

    iget-object p1, p1, Lorg/spongycastle/asn1/DERExternal;->f:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final l(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "DER"

    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->b:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->c:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/DERExternal;->d:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v3, p0, Lorg/spongycastle/asn1/DERExternal;->e:I

    iget-object p0, p0, Lorg/spongycastle/asn1/DERExternal;->f:Lorg/spongycastle/asn1/ASN1Primitive;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x20

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->h(II)V

    array-length v0, p0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->f(I)V

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1OutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final m()I
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->f()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
