.class public Lorg/spongycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/BERTags;


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 18
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lorg/spongycastle/asn1/ASN1InputStream;->b:I

    iput-boolean p3, p0, Lorg/spongycastle/asn1/ASN1InputStream;->c:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1InputStream;->d:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 17
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 14
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 15
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public static c(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->j()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static e(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/16 v3, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p0, v0, :cond_c

    if-eq p0, v2, :cond_b

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p1, "unknown tag "

    const-string p2, " encountered"

    invoke-static {p0, p1, p2}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    new-instance p0, Lorg/spongycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERUniversalString;-><init>([B)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/spongycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERGeneralString;-><init>([B)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/spongycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERVisibleString;-><init>([B)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/spongycastle/asn1/DERGraphicString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERGraphicString;-><init>([B)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->b:[B

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->b:[B

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERIA5String;-><init>([B)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/spongycastle/asn1/DERVideotexString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERVideotexString;-><init>([B)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/spongycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERT61String;-><init>([B)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/spongycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERPrintableString;-><init>([B)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/spongycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERNumericString;-><init>([B)V

    return-object p0

    :pswitch_b
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->g(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    sget-object p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    sget-object p2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez p1, :cond_0

    new-instance p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    :cond_0
    return-object p1

    :pswitch_c
    sget-object p0, Lorg/spongycastle/asn1/DERNull;->b:Lorg/spongycastle/asn1/DERNull;

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object p0

    :pswitch_e
    iget p0, p1, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-lt p0, v4, :cond_3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result p2

    add-int/lit8 v0, p0, -0x1

    new-array v2, v0, [B

    if-eqz v0, :cond_2

    invoke-static {p1, v2}, Lorg/spongycastle/util/io/Streams;->a(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p1, v0, :cond_1

    if-lez p2, :cond_2

    const/16 p1, 0x8

    if-ge p2, p1, :cond_2

    add-int/lit8 p0, p0, -0x2

    aget-byte p0, v2, p0

    shl-int p1, v3, p2

    and-int/2addr p1, p0

    int-to-byte p1, p1

    if-eq p0, p1, :cond_2

    new-instance p0, Lorg/spongycastle/asn1/DLBitString;

    invoke-direct {p0, v2, p2}, Lorg/spongycastle/asn1/DLBitString;-><init>([BI)V

    return-object p0

    :cond_1
    const-string p0, "EOF encountered in middle of BIT STRING"

    invoke-static {p0}, Ld20;->g(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance p0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v2, p2}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object p0

    :cond_3
    const-string p0, "truncated BIT STRING detected"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :pswitch_f
    new-instance p0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object p0

    :pswitch_10
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->g(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    sget-object p1, Lorg/spongycastle/asn1/ASN1Boolean;->c:[B

    array-length p1, p0

    if-ne p1, v4, :cond_6

    aget-byte p1, p0, v5

    if-nez p1, :cond_4

    sget-object p0, Lorg/spongycastle/asn1/ASN1Boolean;->e:Lorg/spongycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_4
    and-int/2addr p1, v3

    if-ne p1, v3, :cond_5

    sget-object p0, Lorg/spongycastle/asn1/ASN1Boolean;->f:Lorg/spongycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_5
    new-instance p1, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>([B)V

    return-object p1

    :cond_6
    const-string p0, "BOOLEAN value should have 1 byte in it"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_7
    new-instance p0, Lorg/spongycastle/asn1/DERBMPString;

    iget p2, p1, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [C

    :goto_0
    if-ge v5, p2, :cond_a

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v2

    if-gez v2, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v5, 0x1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, v5

    move v5, v3

    goto :goto_0

    :cond_a
    :goto_1
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>([C)V

    return-object p0

    :cond_b
    new-instance p0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>([B)V

    return-object p0

    :cond_c
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->g(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    array-length p1, p0

    if-le p1, v4, :cond_d

    new-instance p1, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object p1

    :cond_d
    array-length p1, p0

    if-eqz p1, :cond_10

    aget-byte p1, p0, v5

    and-int/2addr p1, v3

    if-lt p1, v2, :cond_e

    new-instance p1, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object p1

    :cond_e
    sget-object p2, Lorg/spongycastle/asn1/ASN1Enumerated;->c:[Lorg/spongycastle/asn1/ASN1Enumerated;

    aget-object v0, p2, p1

    if-nez v0, :cond_f

    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    aput-object v0, p2, p1

    :cond_f
    return-object v0

    :cond_10
    const-string p0, "ENUMERATED has zero length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 2

    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_0
    invoke-static {p0, v1}, Lorg/spongycastle/util/io/Streams;->a(Ljava/io/InputStream;[B)I

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;I)I
    .locals 5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_7

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v2, 0x7f

    if-le v0, v2, :cond_6

    and-int/2addr v0, v2

    const/4 v2, 0x4

    if-gt v0, v2, :cond_5

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "EOF found reading length"

    invoke-static {p0}, Ld20;->g(Ljava/lang/String;)V

    return v1

    :cond_2
    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_3

    return v3

    :cond_3
    const-string p0, "corrupted stream - out of bounds length found"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return v1

    :cond_4
    const-string p0, "corrupted stream - negative length found"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return v1

    :cond_5
    const-string p0, "DER length more than 4 bytes: "

    invoke-static {v0, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return v1

    :cond_6
    return v0

    :cond_7
    const-string p0, "EOF found when length expected"

    invoke-static {p0}, Ld20;->g(Ljava/lang/String;)V

    return v1
.end method

.method public static k(Ljava/io/InputStream;I)I
    .locals 3

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    and-int/lit8 v0, p1, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-ltz p1, :cond_0

    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    and-int/lit8 p1, p1, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    and-int/lit8 p0, p1, 0x7f

    or-int/2addr p0, v0

    return p0

    :cond_1
    const-string p0, "EOF found inside tag value."

    invoke-static {p0}, Ld20;->g(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p0, "corrupted stream - invalid high tag number found"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return v1

    :cond_3
    return p1
.end method


# virtual methods
.method public final d(III)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v3, p0, p3}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1

    new-instance p0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0, p2, p1, v0}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;-><init>(I[BZ)V

    return-object p0

    :cond_1
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    new-instance p0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p2, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->b(IZ)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_b

    const/4 p1, 0x4

    if-eq p2, p1, :cond_9

    const/16 p1, 0x8

    if-eq p2, p1, :cond_8

    const/16 p1, 0x10

    if-eq p2, p1, :cond_5

    const/16 p0, 0x11

    if-ne p2, p0, :cond_4

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->c(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    sget-object p1, Lorg/spongycastle/asn1/DERFactory;->a:Lorg/spongycastle/asn1/DERSequence;

    iget-object p1, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge p1, v2, :cond_3

    sget-object p0, Lorg/spongycastle/asn1/DERFactory;->b:Lorg/spongycastle/asn1/DERSet;

    return-object p0

    :cond_3
    new-instance p1, Lorg/spongycastle/asn1/DLSet;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/DLSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p1

    :cond_4
    const-string p0, "unknown tag "

    const-string p1, " encountered"

    invoke-static {p2, p0, p1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_5
    iget-boolean p0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->c:Z

    if-eqz p0, :cond_6

    new-instance p0, Lorg/spongycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->k()[B

    move-result-object p1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Sequence;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    return-object p0

    :cond_6
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->c(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    sget-object p1, Lorg/spongycastle/asn1/DERFactory;->a:Lorg/spongycastle/asn1/DERSequence;

    iget-object p1, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge p1, v2, :cond_7

    sget-object p0, Lorg/spongycastle/asn1/DERFactory;->a:Lorg/spongycastle/asn1/DERSequence;

    return-object p0

    :cond_7
    new-instance p1, Lorg/spongycastle/asn1/DLSequence;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/DLSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p1

    :cond_8
    new-instance p0, Lorg/spongycastle/asn1/DERExternal;

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->c(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERExternal;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :cond_9
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->c(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    iget-object p1, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p2, p1, [Lorg/spongycastle/asn1/ASN1OctetString;

    :goto_1
    if-eq v1, p1, :cond_a

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->b(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p3

    check-cast p3, Lorg/spongycastle/asn1/ASN1OctetString;

    aput-object p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    new-instance p0, Lorg/spongycastle/asn1/BEROctetString;

    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/BEROctetString;-><init>([Lorg/spongycastle/asn1/ASN1OctetString;)V

    return-object p0

    :cond_b
    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->d:[[B

    invoke-static {p2, v3, p0}, Lorg/spongycastle/asn1/ASN1InputStream;->e(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public final j()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "unexpected end-of-contents marker"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->k(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lorg/spongycastle/asn1/ASN1InputStream;->b:I

    invoke-static {p0, v5}, Lorg/spongycastle/asn1/ASN1InputStream;->h(Ljava/io/InputStream;I)I

    move-result v6

    if-gez v6, :cond_a

    if-eqz v3, :cond_9

    new-instance v3, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    invoke-direct {v3, p0, v5}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance p0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {p0, v3, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_3

    new-instance v0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v0, v2, p0}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v0, v4, v2, p0}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x4

    if-eq v2, v0, :cond_8

    const/16 v0, 0x8

    if-eq v2, v0, :cond_7

    const/16 v0, 0x10

    if-eq v2, v0, :cond_6

    const/16 v0, 0x11

    if-ne v2, v0, :cond_5

    new-instance v0, Lorg/spongycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSetParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "unknown BER object encountered"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_6
    new-instance v0, Lorg/spongycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Lorg/spongycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERExternalParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v0, Lorg/spongycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BEROctetStringParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "indefinite-length primitive encoding encountered"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_a
    :try_start_0
    invoke-virtual {p0, v0, v2, v6}, Lorg/spongycastle/asn1/ASN1InputStream;->d(III)Lorg/spongycastle/asn1/ASN1Primitive;

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
.end method
