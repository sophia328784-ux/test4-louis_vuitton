.class public final Lorg/teleal/common/util/HexBin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lorg/teleal/common/util/HexBin;->a:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Lorg/teleal/common/util/HexBin;->b:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lorg/teleal/common/util/HexBin;->a:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    sget-object v2, Lorg/teleal/common/util/HexBin;->a:[B

    add-int/lit8 v3, v0, -0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x46

    :goto_2
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    sget-object v2, Lorg/teleal/common/util/HexBin;->a:[B

    add-int/lit8 v3, v0, -0x37

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x66

    :goto_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    sget-object v2, Lorg/teleal/common/util/HexBin;->a:[B

    add-int/lit8 v3, v0, -0x57

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v0, 0xa

    if-ge v1, v0, :cond_4

    sget-object v0, Lorg/teleal/common/util/HexBin;->b:[B

    add-int/lit8 v2, v1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    sget-object v1, Lorg/teleal/common/util/HexBin;->b:[B

    add-int/lit8 v2, v0, 0x37

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p0

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    mul-int/lit8 v4, v3, 0x2

    aget-byte v5, p0, v4

    sget-object v6, Lorg/teleal/common/util/HexBin;->a:[B

    aget-byte v5, v6, v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v6, v4

    if-eq v4, v7, :cond_2

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    return-object v2
.end method

.method public static b([B)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    sget-object v5, Lorg/teleal/common/util/HexBin;->b:[B

    aget-byte v4, v5, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    aget-byte v4, v5, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
