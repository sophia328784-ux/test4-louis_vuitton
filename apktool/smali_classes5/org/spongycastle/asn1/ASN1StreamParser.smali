.class public Lorg/spongycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:I

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 14
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->a:Ljava/io/InputStream;

    iput p2, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->b:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->c:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 15
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 12

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    :cond_0
    instance-of v2, v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    iput-boolean v4, v2, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->g:Z

    invoke-virtual {v2}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->k()Z

    :cond_1
    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;->k(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v5, v1, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v4, v6

    :cond_2
    iget v5, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->b:I

    invoke-static {v0, v5}, Lorg/spongycastle/asn1/ASN1InputStream;->h(Ljava/io/InputStream;I)I

    move-result v7

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/16 v10, 0x8

    const/4 v11, 0x4

    if-gez v7, :cond_a

    if-eqz v4, :cond_9

    new-instance p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p0, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p0, v1, 0x40

    if-eqz p0, :cond_3

    new-instance p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_3
    and-int/lit16 p0, v1, 0x80

    if-eqz p0, :cond_4

    new-instance p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    invoke-direct {p0, v6, v2, v0}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_4
    if-eq v2, v11, :cond_8

    if-eq v2, v10, :cond_7

    if-eq v2, v9, :cond_6

    if-ne v2, v8, :cond_5

    new-instance p0, Lorg/spongycastle/asn1/BERSetParser;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/BERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_5
    new-instance p0, Lorg/spongycastle/asn1/ASN1Exception;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown BER object encountered: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/spongycastle/asn1/BERSequenceParser;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/BERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_7
    new-instance p0, Lorg/spongycastle/asn1/DERExternalParser;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_8
    new-instance p0, Lorg/spongycastle/asn1/BEROctetStringParser;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_9
    const-string p0, "indefinite-length primitive encoding encountered"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v3

    :cond_a
    new-instance v5, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v5, v0, v7}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_b

    new-instance p0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object v0

    invoke-direct {p0, v2, v0, v4}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;-><init>(I[BZ)V

    return-object p0

    :cond_b
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_c

    new-instance p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v4, v2, v0}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_c
    if-eqz v4, :cond_11

    if-eq v2, v11, :cond_10

    if-eq v2, v10, :cond_f

    if-eq v2, v9, :cond_e

    if-ne v2, v8, :cond_d

    new-instance p0, Lorg/spongycastle/asn1/DERSetParser;

    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/DERSetParser;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    return-object p0

    :cond_d
    const-string p0, "unknown tag "

    const-string v0, " encountered"

    invoke-static {v2, p0, v0}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v3

    :cond_e
    new-instance p0, Lorg/spongycastle/asn1/DERSequenceParser;

    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/DERSequenceParser;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    return-object p0

    :cond_f
    new-instance p0, Lorg/spongycastle/asn1/DERExternalParser;

    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_10
    new-instance p0, Lorg/spongycastle/asn1/BEROctetStringParser;

    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p0

    :cond_11
    if-eq v2, v11, :cond_12

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->c:[[B

    invoke-static {v2, v5, p0}, Lorg/spongycastle/asn1/ASN1InputStream;->e(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/asn1/ASN1Exception;

    const-string v1, "corrupted stream detected"

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    throw v0

    :cond_12
    new-instance p0, Lorg/spongycastle/asn1/DEROctetStringParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lorg/spongycastle/asn1/DEROctetStringParser;->b:Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    return-object p0
.end method

.method public final b(IZ)Lorg/spongycastle/asn1/ASN1TaggedObject;
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    check-cast v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    new-instance p0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance p2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v1, p1, p2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->c()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    iget-object p2, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->a:Ljava/util/Vector;

    instance-of v0, v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance p2, Lorg/spongycastle/asn1/BERTaggedObject;

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->b(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-direct {p2, v2, p1, p0}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p2

    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObject;

    sget-object v3, Lorg/spongycastle/asn1/BERFactory;->a:Lorg/spongycastle/asn1/BERSequence;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-ge p2, v2, :cond_2

    sget-object p0, Lorg/spongycastle/asn1/BERFactory;->a:Lorg/spongycastle/asn1/BERSequence;

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {p2, p0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object p0, p2

    :goto_0
    invoke-direct {v0, v1, p1, p0}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_3
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    new-instance p2, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->b(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-direct {p2, v2, p1, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p2

    :cond_4
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    sget-object v3, Lorg/spongycastle/asn1/DERFactory;->a:Lorg/spongycastle/asn1/DERSequence;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-ge p2, v2, :cond_5

    sget-object p0, Lorg/spongycastle/asn1/DERFactory;->a:Lorg/spongycastle/asn1/DERSequence;

    goto :goto_1

    :cond_5
    new-instance p2, Lorg/spongycastle/asn1/DLSequence;

    invoke-direct {p2, p0}, Lorg/spongycastle/asn1/DLSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object p0, p2

    :goto_1
    invoke-direct {v0, v1, p1, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public final c()Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->a()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/spongycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/spongycastle/asn1/InMemoryRepresentable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
