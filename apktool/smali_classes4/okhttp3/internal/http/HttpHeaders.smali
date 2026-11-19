.class public abstract Lokhttp3/internal/http/HttpHeaders;
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
.field public static final a:Lokio/ByteString;

.field public static final b:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString$Companion;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->a:Lokio/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString$Companion;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->b:Lokio/ByteString;

    return-void
.end method

.method public static final a(Lokhttp3/Response;)Z
    .locals 4

    iget-object v0, p0, Lokhttp3/Response;->b:Lokhttp3/Request;

    iget-object v0, v0, Lokhttp3/Request;->b:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lokhttp3/Response;->e:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->e(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const-string v0, "Transfer-Encoding"

    iget-object p0, p0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    :cond_3
    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lokio/Buffer;Ljava/util/ArrayList;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    :goto_0
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->e(Lokio/Buffer;)Z

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->c(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->e(Lokio/Buffer;)Z

    move-result v4

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->c(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lokio/Buffer;->Z0()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    new-instance v0, Lokhttp3/Challenge;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->p(Lokio/Buffer;)I

    move-result v6

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->e(Lokio/Buffer;)Z

    move-result v7

    if-nez v4, :cond_4

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lokio/Buffer;->Z0()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    new-instance v4, Lokhttp3/Challenge;

    invoke-static {v5}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->H(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3, v5}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->p(Lokio/Buffer;)I

    move-result v7

    add-int/2addr v7, v6

    :goto_2
    if-nez v5, :cond_5

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->c(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->e(Lokio/Buffer;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->p(Lokio/Buffer;)I

    move-result v6

    move v7, v6

    :cond_5
    if-eqz v7, :cond_10

    const/4 v6, 0x1

    if-le v7, v6, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->e(Lokio/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v0}, Lokio/Buffer;->Z0()Z

    move-result v6

    if-nez v6, :cond_c

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->w(J)B

    move-result v6

    const/16 v8, 0x22

    if-ne v6, v8, :cond_c

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_b

    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    :goto_3
    sget-object v9, Lokhttp3/internal/http/HttpHeaders;->a:Lokio/ByteString;

    invoke-virtual {v0, v9}, Lokio/Buffer;->W(Lokio/ByteString;)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v11, v9, v11

    if-nez v11, :cond_8

    :goto_4
    move-object v6, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->w(J)B

    move-result v11

    if-ne v11, v8, :cond_9

    invoke-virtual {v6, v0, v9, v10}, Lokio/Buffer;->D(Lokio/Buffer;J)V

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v6}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_9
    iget-wide v11, v0, Lokio/Buffer;->c:J

    const-wide/16 v13, 0x1

    add-long v15, v9, v13

    cmp-long v11, v11, v15

    if-nez v11, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v6, v0, v9, v10}, Lokio/Buffer;->D(Lokio/Buffer;J)V

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v6, v0, v13, v14}, Lokio/Buffer;->D(Lokio/Buffer;J)V

    goto :goto_3

    :cond_b
    const-string v0, "Failed requirement."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->c(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v6

    :goto_5
    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->e(Lokio/Buffer;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0}, Lokio/Buffer;->Z0()Z

    move-result v5

    if-nez v5, :cond_f

    :goto_6
    return-void

    :cond_f
    move-object v5, v2

    goto/16 :goto_2

    :cond_10
    new-instance v6, Lokhttp3/Challenge;

    invoke-direct {v6, v3, v4}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto/16 :goto_1
.end method

.method public static final c(Lokio/Buffer;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->b:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokio/Buffer;->W(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lokio/Buffer;->c:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    if-ne v1, v0, :cond_0

    goto/16 :goto_10

    :cond_0
    sget-object v0, Lokhttp3/Cookie;->k:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Set-Cookie"

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Lokhttp3/Headers;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v4, :cond_21

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/16 v12, 0x3b

    const/4 v13, 0x6

    invoke-static {v9, v12, v5, v5, v13}, Lokhttp3/internal/_UtilCommonKt;->g(Ljava/lang/String;CIII)I

    move-result v0

    const/4 v14, 0x2

    const/16 v15, 0x3d

    invoke-static {v9, v15, v5, v0, v14}, Lokhttp3/internal/_UtilCommonKt;->g(Ljava/lang/String;CIII)I

    move-result v14

    if-ne v14, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5, v14, v9}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v6

    invoke-static {v6, v14, v9}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/_UtilCommonKt;->i(Ljava/lang/String;)I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    invoke-static {v14, v0, v9}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v6

    invoke-static {v6, v0, v9}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lokhttp3/internal/_UtilCommonKt;->i(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v13, :cond_4

    :goto_1
    move v15, v5

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    const-wide/16 v19, -0x1

    const-wide v21, 0xe677d21fdbffL

    move/from16 v25, v5

    move/from16 v27, v25

    move/from16 v31, v27

    move-wide/from16 v23, v19

    move-wide/from16 v29, v21

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v26, 0x1

    const/16 v28, 0x0

    :goto_2
    const-wide v32, 0x7fffffffffffffffL

    const-wide/high16 v34, -0x8000000000000000L

    if-ge v0, v6, :cond_12

    invoke-static {v9, v0, v6, v12}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v5

    invoke-static {v9, v0, v5, v15}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v12

    invoke-static {v0, v12, v9}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v12, v9}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-ge v12, v5, :cond_5

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12, v5, v9}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v12

    invoke-static {v12, v5, v9}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_5
    const-string v12, ""

    :goto_3
    const-string v15, "expires"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v12}, Lokhttp3/Cookie$Companion;->b(ILjava/lang/String;)J

    move-result-wide v29
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_4
    move/from16 v27, v16

    goto/16 :goto_5

    :cond_7
    const-string v15, "max-age"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    :try_start_1
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v32, 0x0

    cmp-long v0, v23, v32

    if-gtz v0, :cond_6

    move-wide/from16 v23, v34

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v15, Lkotlin/text/Regex;

    move-object/from16 v36, v0

    const-string v0, "-?\\d+"

    invoke-direct {v15, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Lkotlin/text/Regex;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-"

    const/4 v15, 0x0

    invoke-static {v12, v0, v15}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide/from16 v32, v34

    :cond_8
    move-wide/from16 v23, v32

    goto :goto_4

    :cond_9
    throw v36
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    const-string v15, "domain"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    :try_start_3
    const-string v0, "."

    const/4 v15, 0x0

    invoke-static {v12, v0, v15}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_c

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object v14, v0

    const/16 v26, 0x0

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    const-string v0, "Failed requirement."

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_d
    const-string v15, "path"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object v13, v12

    goto :goto_5

    :cond_e
    const-string v15, "secure"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    move/from16 v31, v16

    goto :goto_5

    :cond_f
    const-string v15, "httponly"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    move/from16 v25, v16

    goto :goto_5

    :cond_10
    const-string v15, "samesite"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v28, v12

    :catch_1
    :cond_11
    :goto_5
    add-int/lit8 v0, v5, 0x1

    const/4 v5, 0x0

    const/16 v12, 0x3b

    const/16 v15, 0x3d

    goto/16 :goto_2

    :cond_12
    cmp-long v0, v23, v34

    if-nez v0, :cond_13

    move-wide/from16 v19, v34

    goto :goto_7

    :cond_13
    cmp-long v0, v23, v19

    if-eqz v0, :cond_17

    const-wide v5, 0x20c49ba5e353f7L

    cmp-long v0, v23, v5

    if-gtz v0, :cond_14

    const-wide/16 v5, 0x3e8

    mul-long v32, v23, v5

    :cond_14
    add-long v32, v10, v32

    cmp-long v0, v32, v10

    if-ltz v0, :cond_16

    cmp-long v0, v32, v21

    if-lez v0, :cond_15

    goto :goto_6

    :cond_15
    move-wide/from16 v19, v32

    goto :goto_7

    :cond_16
    :goto_6
    move-wide/from16 v19, v21

    goto :goto_7

    :cond_17
    move-wide/from16 v19, v29

    :goto_7
    iget-object v0, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    if-nez v14, :cond_18

    move-object v14, v0

    goto :goto_8

    :cond_18
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_8

    :cond_19
    const/4 v15, 0x0

    invoke-static {v0, v14, v15}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1a

    sget-object v5, Lokhttp3/internal/_HostnamesCommonKt;->a:Lkotlin/text/Regex;

    invoke-virtual {v5, v0}, Lkotlin/text/Regex;->f(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_1b

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0, v14}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_1a
    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_c

    :cond_1b
    const-string v0, "/"

    const/4 v15, 0x0

    if-eqz v13, :cond_1d

    invoke-static {v13, v0, v15}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_a

    :cond_1c
    :goto_9
    move-object/from16 v22, v13

    goto :goto_b

    :cond_1d
    :goto_a
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    const/4 v9, 0x6

    invoke-static {v5, v6, v15, v9}, Lkotlin/text/StringsKt;->z(Ljava/lang/CharSequence;CII)I

    move-result v6

    if-eqz v6, :cond_1e

    invoke-virtual {v5, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    move-object v13, v0

    goto :goto_9

    :goto_b
    new-instance v16, Lokhttp3/Cookie;

    move/from16 v24, v25

    move/from16 v25, v27

    move-object/from16 v27, v28

    const/16 v28, 0x0

    move-object/from16 v21, v14

    move/from16 v23, v31

    invoke-direct/range {v16 .. v28}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_c
    move-object/from16 v0, v16

    :goto_d
    if-nez v0, :cond_1f

    goto :goto_e

    :cond_1f
    if-nez v8, :cond_20

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    :cond_20
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move v5, v15

    goto/16 :goto_0

    :cond_21
    if-eqz v8, :cond_22

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_f

    :cond_22
    const/4 v6, 0x0

    :goto_f
    if-nez v6, :cond_23

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_23
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_10
    return-void

    :cond_24
    invoke-interface {v1, v2, v6}, Lokhttp3/CookieJar;->b(Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method public static final e(Lokio/Buffer;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->Z0()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->w(J)B

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_0

    :cond_2
    return v0
.end method
