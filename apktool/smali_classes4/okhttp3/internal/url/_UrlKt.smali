.class public abstract Lokhttp3/internal/url/_UrlKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "okhttp"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/internal/url/_UrlKt;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a(Ljava/lang/String;IZLjava/lang/String;II)Ljava/lang/String;
    .locals 12

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    move v4, p1

    goto :goto_1

    :cond_1
    move/from16 v4, p4

    :goto_1
    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, p2

    :goto_2
    and-int/lit8 p1, p5, 0x10

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, p2

    :goto_3
    and-int/lit8 p1, p5, 0x20

    if-eqz p1, :cond_4

    move v8, v1

    goto :goto_4

    :cond_4
    move v8, p2

    :goto_4
    and-int/lit8 p1, p5, 0x40

    if-eqz p1, :cond_5

    move v9, v1

    goto :goto_5

    :cond_5
    move v9, p2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    const/16 v11, 0x80

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v2 .. v11}, Lokhttp3/internal/url/_UrlKt;->b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p9

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    :goto_0
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move/from16 v6, p4

    :goto_2
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move/from16 v7, p5

    :goto_3
    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v4, p7

    :goto_4
    const/16 v8, 0x80

    and-int/2addr v2, v8

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v2, p8

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, v3

    :goto_6
    if-ge v10, v5, :cond_17

    invoke-virtual {v0, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    const/16 v12, 0x20

    const/16 v13, 0x2b

    const/16 v14, 0x25

    const/16 v15, 0x7f

    if-lt v11, v12, :cond_9

    if-eq v11, v15, :cond_9

    if-lt v11, v8, :cond_6

    if-eqz v4, :cond_9

    :cond_6
    int-to-char v9, v11

    invoke-static {v1, v9}, Lkotlin/text/StringsKt;->l(Ljava/lang/CharSequence;C)Z

    move-result v9

    if-nez v9, :cond_9

    if-ne v11, v14, :cond_7

    if-eqz v6, :cond_9

    if-eqz v7, :cond_7

    invoke-static {v10, v5, v0}, Lokhttp3/internal/url/_UrlKt;->c(IILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_7
    if-ne v11, v13, :cond_8

    if-eqz p6, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v10, v9

    goto :goto_6

    :cond_9
    :goto_7
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    invoke-virtual {v9, v3, v10, v0}, Lokio/Buffer;->I0(IILjava/lang/String;)V

    const/4 v3, 0x0

    :goto_8
    if-ge v10, v5, :cond_16

    invoke-virtual {v0, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    if-eqz v6, :cond_a

    const/16 v14, 0x9

    if-eq v11, v14, :cond_10

    const/16 v14, 0xa

    if-eq v11, v14, :cond_10

    const/16 v14, 0xc

    if-eq v11, v14, :cond_10

    const/16 v14, 0xd

    if-ne v11, v14, :cond_a

    goto :goto_b

    :cond_a
    const-string v14, "+"

    if-ne v11, v12, :cond_b

    const-string v8, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    if-ne v1, v8, :cond_b

    invoke-virtual {v9, v14}, Lokio/Buffer;->M0(Ljava/lang/String;)V

    :goto_9
    const/16 v8, 0x80

    goto :goto_b

    :cond_b
    if-ne v11, v13, :cond_d

    if-eqz p6, :cond_d

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    const-string v14, "%2B"

    :goto_a
    invoke-virtual {v9, v14}, Lokio/Buffer;->M0(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    if-lt v11, v12, :cond_11

    if-eq v11, v15, :cond_11

    const/16 v8, 0x80

    if-lt v11, v8, :cond_e

    if-eqz v4, :cond_12

    :cond_e
    int-to-char v14, v11

    invoke-static {v1, v14}, Lkotlin/text/StringsKt;->l(Ljava/lang/CharSequence;C)Z

    move-result v14

    if-nez v14, :cond_12

    const/16 v14, 0x25

    if-ne v11, v14, :cond_f

    if-eqz v6, :cond_12

    if-eqz v7, :cond_f

    invoke-static {v10, v5, v0}, Lokhttp3/internal/url/_UrlKt;->c(IILjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_c

    :cond_f
    invoke-virtual {v9, v11}, Lokio/Buffer;->P0(I)V

    :cond_10
    :goto_b
    const/16 v12, 0x25

    goto :goto_f

    :cond_11
    const/16 v8, 0x80

    :cond_12
    :goto_c
    if-nez v3, :cond_13

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    :cond_13
    if-eqz v2, :cond_15

    sget-object v14, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_d

    :cond_14
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v3, v0, v10, v14, v2}, Lokio/Buffer;->E0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    goto :goto_e

    :cond_15
    :goto_d
    invoke-virtual {v3, v11}, Lokio/Buffer;->P0(I)V

    :goto_e
    invoke-virtual {v3}, Lokio/Buffer;->Z0()Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    move-result v14

    and-int/lit16 v8, v14, 0xff

    const/16 v12, 0x25

    invoke-virtual {v9, v12}, Lokio/Buffer;->m0(I)V

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    sget-object v16, Lokhttp3/internal/url/_UrlKt;->a:[C

    aget-char v8, v16, v8

    invoke-virtual {v9, v8}, Lokio/Buffer;->m0(I)V

    and-int/lit8 v8, v14, 0xf

    aget-char v8, v16, v8

    invoke-virtual {v9, v8}, Lokio/Buffer;->m0(I)V

    const/16 v8, 0x80

    const/16 v12, 0x20

    goto :goto_e

    :goto_f
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v10, v8

    move v14, v12

    const/16 v8, 0x80

    const/16 v12, 0x20

    goto/16 :goto_8

    :cond_16
    invoke-virtual {v9}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c(IILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->n(C)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->n(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(IIILjava/lang/String;)Ljava/lang/String;
    .locals 8

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    :cond_1
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p2, p0

    :goto_1
    if-ge p2, p1, :cond_8

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    const/16 v3, 0x25

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p0, p2, p3}, Lokio/Buffer;->I0(IILjava/lang/String;)V

    :goto_3
    if-ge p2, p1, :cond_7

    invoke-virtual {p3, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    if-ne p0, v3, :cond_5

    add-int/lit8 v4, p2, 0x2

    if-ge v4, p1, :cond_5

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokhttp3/internal/_UtilCommonKt;->n(C)I

    move-result v5

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lokhttp3/internal/_UtilCommonKt;->n(C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    if-eq v6, v7, :cond_6

    shl-int/lit8 p2, v5, 0x4

    add-int/2addr p2, v6

    invoke-virtual {v0, p2}, Lokio/Buffer;->m0(I)V

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int p2, p0, v4

    goto :goto_3

    :cond_5
    if-ne p0, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Lokio/Buffer;->m0(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p0}, Lokio/Buffer;->P0(I)V

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p2, p0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
