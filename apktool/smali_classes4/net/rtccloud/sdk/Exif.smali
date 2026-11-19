.class public Lnet/rtccloud/sdk/Exif;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([B)I
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    array-length v3, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-ge v2, v3, :cond_8

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p0, v1

    const/16 v9, 0xff

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_7

    aget-byte v3, p0, v2

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_2

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, 0x2

    const/16 v9, 0xd8

    if-eq v3, v9, :cond_1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v9, 0xd9

    if-eq v3, v9, :cond_7

    const/16 v9, 0xda

    if-ne v3, v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, v2, v8, v0}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result v9

    if-lt v9, v8, :cond_6

    add-int/2addr v2, v9

    array-length v10, p0

    if-le v2, v10, :cond_5

    goto :goto_2

    :cond_5
    const/16 v10, 0xe1

    if-ne v3, v10, :cond_1

    if-lt v9, v7, :cond_1

    add-int/lit8 v3, v1, 0x4

    invoke-static {p0, v3, v6, v0}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result v3

    const v10, 0x45786966

    if-ne v3, v10, :cond_1

    add-int/lit8 v3, v1, 0x8

    invoke-static {p0, v3, v8, v0}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v9, v9, -0x8

    goto :goto_4

    :cond_6
    :goto_2
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "Invalid length"

    invoke-virtual {p0, v1, v5}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_7
    :goto_3
    move v9, v0

    move v1, v2

    goto :goto_4

    :cond_8
    move v9, v0

    :goto_4
    if-le v9, v7, :cond_12

    invoke-static {p0, v1, v6, v0}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result v2

    const v3, 0x49492a00    # 823968.0f

    if-eq v2, v3, :cond_9

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq v2, v10, :cond_9

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "Invalid byte order"

    invoke-virtual {p0, v1, v5}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_9
    if-ne v2, v3, :cond_a

    move v2, v4

    goto :goto_5

    :cond_a
    move v2, v0

    :goto_5
    add-int/lit8 v3, v1, 0x4

    invoke-static {p0, v3, v6, v2}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result v3

    add-int/2addr v3, v8

    const/16 v6, 0xa

    if-lt v3, v6, :cond_11

    if-le v3, v9, :cond_b

    goto :goto_7

    :cond_b
    add-int/2addr v1, v3

    sub-int/2addr v9, v3

    add-int/lit8 v3, v1, -0x2

    invoke-static {p0, v3, v8, v2}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result v3

    :goto_6
    add-int/lit8 v6, v3, -0x1

    if-lez v3, :cond_12

    const/16 v3, 0xc

    if-lt v9, v3, :cond_12

    invoke-static {p0, v1, v8, v2}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result v3

    const/16 v10, 0x112

    if-ne v3, v10, :cond_10

    add-int/2addr v1, v7

    invoke-static {p0, v1, v8, v2}, Lnet/rtccloud/sdk/Exif;->pack([BIIZ)I

    move-result p0

    if-eq p0, v4, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x6

    if-eq p0, v1, :cond_d

    if-eq p0, v7, :cond_c

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "Unsupported orientation"

    invoke-virtual {p0, v1, v5}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_c
    const/16 p0, 0x10e

    return p0

    :cond_d
    const/16 p0, 0x5a

    return p0

    :cond_e
    const/16 p0, 0xb4

    return p0

    :cond_f
    return v0

    :cond_10
    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v9, v9, -0xc

    move v3, v6

    goto :goto_6

    :cond_11
    :goto_7
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "Invalid offset"

    invoke-virtual {p0, v1, v5}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_12
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "Orientation not found"

    invoke-virtual {p0, v1, v5}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method
