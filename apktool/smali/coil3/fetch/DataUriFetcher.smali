.class public final Lcoil3/fetch/DataUriFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/DataUriFetcher$Companion;,
        Lcoil3/fetch/DataUriFetcher$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u0008\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/fetch/DataUriFetcher;",
        "Lcoil3/fetch/Fetcher;",
        "Lcoil3/Uri;",
        "uri",
        "Lcoil3/request/Options;",
        "options",
        "<init>",
        "(Lcoil3/Uri;Lcoil3/request/Options;)V",
        "Factory",
        "Companion",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcoil3/Uri;

.field public final b:Lcoil3/request/Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/fetch/DataUriFetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/fetch/DataUriFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/Uri;Lcoil3/request/Options;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/fetch/DataUriFetcher;->a:Lcoil3/Uri;

    iput-object p2, p0, Lcoil3/fetch/DataUriFetcher;->b:Lcoil3/request/Options;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcoil3/fetch/DataUriFetcher;->a:Lcoil3/Uri;

    iget-object v2, v1, Lcoil3/Uri;->a:Ljava/lang/String;

    iget-object v3, v1, Lcoil3/Uri;->a:Ljava/lang/String;

    const-string v4, ";base64,"

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v2, v4, v5, v5, v6}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    const-string v7, "invalid data uri: "

    const/4 v8, -0x1

    if-eq v2, v8, :cond_23

    const/16 v9, 0x3a

    invoke-static {v3, v9, v5, v6}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v9

    if-eq v9, v8, :cond_22

    const/4 v1, 0x1

    add-int/2addr v9, v1

    invoke-virtual {v3, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lkotlin/io/encoding/Base64;->f:Lkotlin/io/encoding/Base64$Default;

    const/16 v10, 0x8

    add-int/2addr v2, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lkotlin/io/encoding/Base64;->d:Lkotlin/io/encoding/Base64$PaddingOption;

    iget-boolean v13, v9, Lkotlin/io/encoding/Base64;->b:Z

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    sget-object v15, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v11, v14}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    invoke-virtual {v3, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkotlin/text/Charsets;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v2

    array-length v11, v2

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3, v11}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    const/16 v11, 0x3d

    const/4 v14, -0x2

    if-nez v3, :cond_0

    move/from16 p1, v1

    move v1, v5

    move v15, v6

    move-object/from16 v16, v7

    goto :goto_4

    :cond_0
    if-eq v3, v1, :cond_21

    if-eqz v13, :cond_4

    move/from16 v16, v3

    move v15, v5

    :goto_0
    move/from16 p1, v1

    if-ge v15, v3, :cond_1

    aget-byte v1, v2, v15

    and-int/lit16 v1, v1, 0xff

    sget-object v17, Lkotlin/io/encoding/Base64Kt;->b:[I

    aget v1, v17, v1

    if-gez v1, :cond_3

    if-ne v1, v14, :cond_2

    sub-int v1, v3, v15

    sub-int v16, v16, v1

    :cond_1
    :goto_1
    move v15, v6

    move/from16 v1, v16

    :goto_2
    move-object/from16 v16, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v16, v16, -0x1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    goto :goto_0

    :cond_4
    move/from16 p1, v1

    add-int/lit8 v1, v3, -0x1

    aget-byte v1, v2, v1

    if-ne v1, v11, :cond_5

    add-int/lit8 v16, v3, -0x1

    add-int/lit8 v1, v3, -0x2

    aget-byte v1, v2, v1

    if-ne v1, v11, :cond_1

    add-int/lit8 v16, v3, -0x2

    goto :goto_1

    :cond_5
    move v1, v3

    move v15, v6

    goto :goto_2

    :goto_3
    int-to-long v6, v1

    const-wide/16 v17, 0x6

    mul-long v6, v6, v17

    const-wide/16 v17, 0x8

    div-long v6, v6, v17

    long-to-int v1, v6

    :goto_4
    new-array v6, v1, [B

    iget-boolean v7, v9, Lkotlin/io/encoding/Base64;->a:Z

    if-eqz v7, :cond_6

    sget-object v7, Lkotlin/io/encoding/Base64Kt;->d:[I

    goto :goto_5

    :cond_6
    sget-object v7, Lkotlin/io/encoding/Base64Kt;->b:[I

    :goto_5
    const/4 v9, -0x8

    move v4, v5

    move/from16 v19, v4

    move/from16 v17, v10

    move/from16 v18, v15

    const/16 v20, 0x0

    move/from16 v10, v19

    move v15, v9

    :goto_6
    const-string v5, ") at index "

    const-string v11, "\'("

    if-ge v10, v3, :cond_17

    if-ne v15, v9, :cond_7

    add-int/lit8 v8, v10, 0x3

    if-ge v8, v3, :cond_7

    add-int/lit8 v21, v10, 0x1

    aget-byte v9, v2, v10

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    add-int/lit8 v22, v10, 0x2

    aget-byte v14, v2, v21

    and-int/lit16 v14, v14, 0xff

    aget v14, v7, v14

    move-object/from16 v21, v2

    aget-byte v2, v21, v22

    and-int/lit16 v2, v2, 0xff

    aget v2, v7, v2

    add-int/lit8 v22, v10, 0x4

    aget-byte v8, v21, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v9, v9, 0x12

    shl-int/lit8 v14, v14, 0xc

    or-int/2addr v9, v14

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v9

    or-int/2addr v2, v8

    if-ltz v2, :cond_8

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v8, v2, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    add-int/lit8 v8, v4, 0x2

    shr-int/lit8 v9, v2, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v5

    add-int/lit8 v4, v4, 0x3

    int-to-byte v2, v2

    aput-byte v2, v6, v8

    move-object/from16 v2, v21

    move/from16 v10, v22

    const/4 v8, -0x1

    const/4 v9, -0x8

    const/16 v11, 0x3d

    :goto_7
    const/4 v14, -0x2

    goto :goto_6

    :cond_7
    move-object/from16 v21, v2

    :cond_8
    aget-byte v2, v21, v10

    and-int/lit16 v2, v2, 0xff

    aget v8, v7, v2

    if-gez v8, :cond_15

    const/4 v9, -0x2

    if-ne v8, v9, :cond_13

    const/4 v8, -0x8

    if-eq v15, v8, :cond_12

    const/4 v2, -0x6

    const-string v7, "The padding option is set to ABSENT, but the input has a pad character at index "

    if-eq v15, v2, :cond_10

    const/4 v2, -0x4

    if-eq v15, v2, :cond_a

    if-ne v15, v9, :cond_9

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_9
    const-string v0, "Unreachable"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v20

    :cond_a
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v12, v2, :cond_f

    add-int/lit8 v10, v10, 0x1

    if-nez v13, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    if-ge v10, v3, :cond_d

    aget-byte v2, v21, v10

    and-int/lit16 v2, v2, 0xff

    sget-object v7, Lkotlin/io/encoding/Base64Kt;->b:[I

    aget v2, v7, v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    if-eq v10, v3, :cond_e

    aget-byte v2, v21, v10

    const/16 v9, 0x3d

    if-ne v2, v9, :cond_e

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_e
    const-string v0, "Missing one pad character at index "

    invoke-static {v10, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_f
    invoke-static {v10, v7}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_10
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v12, v2, :cond_11

    goto :goto_8

    :goto_b
    move/from16 v2, p1

    const/4 v9, -0x2

    goto :goto_d

    :cond_11
    invoke-static {v10, v7}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_12
    const-string v0, "Redundant pad character at index "

    invoke-static {v10, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_13
    const/16 v9, 0x3d

    if-eqz v13, :cond_14

    add-int/lit8 v10, v10, 0x1

    :goto_c
    move v11, v9

    move-object/from16 v2, v21

    const/4 v8, -0x1

    const/4 v9, -0x8

    goto/16 :goto_7

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid symbol \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v5, v0}, Ld21;->f(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_15
    const/16 v9, 0x3d

    add-int/lit8 v10, v10, 0x1

    shl-int/lit8 v2, v19, 0x6

    or-int v19, v2, v8

    add-int/lit8 v8, v15, 0x6

    if-ltz v8, :cond_16

    add-int/lit8 v2, v4, 0x1

    ushr-int v5, v19, v8

    int-to-byte v5, v5

    aput-byte v5, v6, v4

    shl-int v4, p1, v8

    add-int/lit8 v4, v4, -0x1

    and-int v19, v19, v4

    add-int/lit8 v15, v15, -0x2

    move v4, v2

    goto :goto_c

    :cond_16
    move v15, v8

    goto :goto_c

    :cond_17
    move-object/from16 v21, v2

    move v9, v14

    const/4 v2, 0x0

    :goto_d
    if-eq v15, v9, :cond_20

    const/4 v8, -0x8

    if-eq v15, v8, :cond_19

    if-nez v2, :cond_19

    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v12, v2, :cond_18

    goto :goto_e

    :cond_18
    const-string v0, "The padding option is set to PRESENT, but the input is not properly padded"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_19
    :goto_e
    if-nez v19, :cond_1f

    if-nez v13, :cond_1a

    goto :goto_10

    :cond_1a
    :goto_f
    if-ge v10, v3, :cond_1c

    aget-byte v2, v21, v10

    and-int/lit16 v2, v2, 0xff

    sget-object v7, Lkotlin/io/encoding/Base64Kt;->b:[I

    aget v2, v7, v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_1b

    goto :goto_10

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1c
    :goto_10
    if-lt v10, v3, :cond_1e

    if-ne v4, v1, :cond_1d

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3, v1}, Lokio/Buffer;->write([BII)V

    iget-object v0, v0, Lcoil3/fetch/DataUriFetcher;->b:Lcoil3/request/Options;

    iget-object v0, v0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    new-instance v1, Lcoil3/decode/SourceImageSource;

    move-object/from16 v3, v20

    invoke-direct {v1, v2, v0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    sget-object v0, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    move-object/from16 v3, v16

    invoke-direct {v2, v1, v3, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    return-object v2

    :cond_1d
    move-object/from16 v3, v20

    const-string v0, "Check failed."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1e
    aget-byte v0, v21, v10

    and-int/lit16 v0, v0, 0xff

    new-instance v1, Ljava/lang/IllegalArgumentException;

    int-to-char v2, v0

    invoke-static/range {v17 .. v17}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v10, v10, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Symbol \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is prohibited after the pad character"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const-string v0, "The pad bits must be zeros"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/16 v20, 0x0

    return-object v20

    :cond_20
    const-string v0, "The last unit of input does not have enough bits"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_21
    const/16 v20, 0x0

    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "

    invoke-static {v3, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v20

    :cond_22
    const/16 v20, 0x0

    invoke-static {v1, v7}, Ltg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v20

    :cond_23
    const/16 v20, 0x0

    invoke-static {v1, v7}, Ltg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v20
.end method
