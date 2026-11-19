.class public Lorg/spongycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/encoders/Encoder;


# instance fields
.field public final a:[B

.field public final b:[B


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->a:[B

    const/16 v0, 0x80

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->b:[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, -0x1

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->a:[B

    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-byte v0, v0, v2

    int-to-byte v3, v2

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 p0, 0x41

    const/16 v0, 0x61

    aget-byte v0, v1, v0

    aput-byte v0, v1, p0

    const/16 p0, 0x42

    const/16 v0, 0x62

    aget-byte v0, v1, v0

    aput-byte v0, v1, p0

    const/16 p0, 0x43

    const/16 v0, 0x63

    aget-byte v0, v1, v0

    aput-byte v0, v1, p0

    const/16 p0, 0x44

    const/16 v0, 0x64

    aget-byte v0, v1, v0

    aput-byte v0, v1, p0

    const/16 p0, 0x45

    const/16 v0, 0x65

    aget-byte v0, v1, v0

    aput-byte v0, v1, p0

    const/16 p0, 0x46

    const/16 v0, 0x66

    aget-byte v0, v1, v0

    aput-byte v0, v1, p0

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public static b(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/util/encoders/HexEncoder;->b(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_2
    if-ge v2, v0, :cond_5

    :goto_3
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/spongycastle/util/encoders/HexEncoder;->b(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v5, p0, Lorg/spongycastle/util/encoders/HexEncoder;->b:[B

    aget-byte v2, v5, v2

    :goto_4
    if-ge v4, v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/spongycastle/util/encoders/HexEncoder;->b(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    or-int v5, v2, v4

    if-ltz v5, :cond_4

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v4

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_2

    :cond_4
    const-string p0, "invalid characters encountered in Hex string"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return v1

    :cond_5
    return v3
.end method
