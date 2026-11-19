.class public Lorg/spongycastle/asn1/DERUTF8String;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    sget v0, Lorg/spongycastle/util/Strings;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {p1, v0}, Lorg/spongycastle/util/Strings;->d([CLjava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    return-void

    :catch_0
    const-string p0, "cannot encode string to byte array!"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->g([B)I

    move-result p0

    return p0
.end method

.method public final i(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/asn1/DERUTF8String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/DERUTF8String;

    iget-object p0, p0, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->a([B[B)Z

    move-result p0

    return p0
.end method

.method public final l(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 1

    const/16 v0, 0xc

    iget-object p0, p0, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    invoke-virtual {p1, v0, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->d(I[B)V

    return-void
.end method

.method public final m()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    sget v0, Lorg/spongycastle/util/Strings;->a:I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/DERUTF8String;->b:[B

    array-length v4, v3

    const/16 v5, 0xc0

    const/16 v6, 0xe0

    const/16 v7, 0xf0

    if-ge v1, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v1

    and-int/lit16 v8, v3, 0xf0

    if-ne v8, v7, :cond_0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    and-int/lit16 v2, v3, 0xe0

    if-ne v2, v6, :cond_1

    add-int/lit8 v1, v1, 0x3

    :goto_1
    move v2, v4

    goto :goto_0

    :cond_1
    and-int/lit16 v2, v3, 0xc0

    if-ne v2, v5, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-array p0, v2, [C

    move v1, v0

    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_8

    aget-byte v2, v3, v0

    and-int/lit16 v4, v2, 0xf0

    if-ne v4, v7, :cond_4

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    const/high16 v4, 0x10000

    sub-int/2addr v2, v4

    shr-int/lit8 v4, v2, 0xa

    const v8, 0xd800

    or-int/2addr v4, v8

    int-to-char v4, v4

    and-int/lit16 v2, v2, 0x3ff

    const v8, 0xdc00

    or-int/2addr v2, v8

    int-to-char v2, v2

    add-int/lit8 v8, v1, 0x1

    aput-char v4, p0, v1

    add-int/lit8 v0, v0, 0x4

    move v1, v8

    goto :goto_4

    :cond_4
    and-int/lit16 v4, v2, 0xe0

    if-ne v4, v6, :cond_5

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    :cond_5
    and-int/lit16 v4, v2, 0xd0

    const/16 v8, 0xd0

    if-ne v4, v8, :cond_6

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    :goto_3
    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_6
    and-int/lit16 v4, v2, 0xc0

    if-ne v4, v5, :cond_7

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    goto :goto_3

    :cond_7
    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    :goto_4
    add-int/lit8 v4, v1, 0x1

    aput-char v2, p0, v1

    move v1, v4

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
