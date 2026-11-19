.class public final Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper$Companion;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/io/encoding/Base64;->f:Lkotlin/io/encoding/Base64$Default;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/io/encoding/Base64;->h:Lkotlin/io/encoding/Base64;

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lkotlin/io/encoding/Base64;->d:Lkotlin/io/encoding/Base64$PaddingOption;

    array-length v4, v0

    sget-object v5, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-static {v6, v2, v4}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    invoke-virtual {v1, v2}, Lkotlin/io/encoding/Base64;->a(I)I

    move-result v4

    new-array v7, v4, [B

    array-length v8, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2, v8}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    invoke-virtual {v1, v2}, Lkotlin/io/encoding/Base64;->a(I)I

    move-result v5

    const/4 v8, 0x0

    if-ltz v4, :cond_d

    if-ltz v5, :cond_c

    if-gt v5, v4, :cond_c

    iget-boolean v4, v1, Lkotlin/io/encoding/Base64;->a:Z

    if-eqz v4, :cond_0

    sget-object v4, Lkotlin/io/encoding/Base64Kt;->c:[B

    goto :goto_0

    :cond_0
    sget-object v4, Lkotlin/io/encoding/Base64Kt;->a:[B

    :goto_0
    iget-boolean v5, v1, Lkotlin/io/encoding/Base64;->b:Z

    if-eqz v5, :cond_1

    iget v1, v1, Lkotlin/io/encoding/Base64;->e:I

    goto :goto_1

    :cond_1
    const v1, 0x7fffffff

    :goto_1
    move v5, v6

    move v9, v5

    :cond_2
    :goto_2
    add-int/lit8 v10, v5, 0x2

    const/4 v11, 0x1

    if-ge v10, v2, :cond_4

    sub-int v10, v2, v5

    div-int/lit8 v10, v10, 0x3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v12, v6

    :goto_3
    if-ge v12, v10, :cond_3

    add-int/lit8 v13, v5, 0x1

    aget-byte v14, v0, v5

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v5, 0x2

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v5, v5, 0x3

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v14, v14, 0x10

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v15

    add-int/lit8 v14, v9, 0x1

    ushr-int/lit8 v15, v13, 0x12

    aget-byte v15, v4, v15

    aput-byte v15, v7, v9

    add-int/lit8 v15, v9, 0x2

    ushr-int/lit8 v16, v13, 0xc

    and-int/lit8 v16, v16, 0x3f

    aget-byte v16, v4, v16

    aput-byte v16, v7, v14

    add-int/lit8 v14, v9, 0x3

    ushr-int/lit8 v16, v13, 0x6

    and-int/lit8 v16, v16, 0x3f

    aget-byte v16, v4, v16

    aput-byte v16, v7, v15

    add-int/lit8 v9, v9, 0x4

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v4, v13

    aput-byte v13, v7, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    if-ne v10, v1, :cond_2

    if-eq v5, v2, :cond_2

    add-int/lit8 v10, v9, 0x1

    sget-object v12, Lkotlin/io/encoding/Base64;->g:[B

    aget-byte v13, v12, v6

    aput-byte v13, v7, v9

    add-int/lit8 v9, v9, 0x2

    aget-byte v11, v12, v11

    aput-byte v11, v7, v10

    goto :goto_2

    :cond_4
    sub-int v1, v2, v5

    const/16 v6, 0x3d

    if-eq v1, v11, :cond_8

    const/4 v11, 0x2

    if-eq v1, v11, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v5, 0xa

    shl-int/2addr v0, v11

    or-int/2addr v0, v1

    add-int/lit8 v1, v9, 0x1

    ushr-int/lit8 v5, v0, 0xc

    aget-byte v5, v4, v5

    aput-byte v5, v7, v9

    add-int/lit8 v5, v9, 0x2

    ushr-int/lit8 v11, v0, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v4, v11

    aput-byte v11, v7, v1

    add-int/lit8 v9, v9, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v4, v0

    aput-byte v0, v7, v5

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v3, v0, :cond_7

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v3, v0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v10

    goto :goto_8

    :cond_7
    :goto_5
    aput-byte v6, v7, v9

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v5, 0x1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v5, v9, 0x1

    ushr-int/lit8 v10, v0, 0x6

    aget-byte v10, v4, v10

    aput-byte v10, v7, v9

    add-int/lit8 v10, v9, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v4, v0

    aput-byte v0, v7, v5

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v3, v0, :cond_a

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v3, v0, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move v5, v1

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v9, v9, 0x3

    aput-byte v6, v7, v10

    aput-byte v6, v7, v9

    goto :goto_6

    :goto_8
    if-ne v5, v2, :cond_b

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->d:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "="

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "Check failed."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_c
    const-string v0, "The destination array does not have enough capacity, destination offset: 0, destination size: "

    const-string v1, ", capacity needed: "

    invoke-static {v4, v5, v0, v1}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->v(Ljava/lang/String;)V

    return-object v8

    :cond_d
    const-string v0, "destination offset: 0, destination size: "

    invoke-static {v4, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->v(Ljava/lang/String;)V

    return-object v8
.end method
