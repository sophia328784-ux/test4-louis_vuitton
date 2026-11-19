.class public final Lcom/sightcall/universal/api/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;->BODY:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->level:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private static appendFirstHeaders(Ljava/lang/StringBuilder;Lokhttp3/RequestBody;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Content-Type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lokhttp3/RequestBody;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Content-Length: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/RequestBody;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static appendHeaders(Ljava/lang/StringBuilder;Lokhttp3/Headers;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-Authorization-Token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "Content-Type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Content-Length"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private bodyEncoded(Lokhttp3/Headers;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "Content-Encoding"

    invoke-virtual {p1, p0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "identity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private static isPlaintext(Lokio/Buffer;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    iget-wide v3, p0, Lokio/Buffer;->c:J

    const-wide/16 v5, 0x40

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    move-wide v5, v3

    :cond_0
    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->u(Lokio/Buffer;JJ)V

    move p0, v0

    :goto_0
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3

    invoke-virtual {v2}, Lokio/Buffer;->Z0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lokio/Buffer;->i0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    :goto_2
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getLevel()Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->level:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, v0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->level:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    invoke-interface {v1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    sget-object v5, Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;->NONE:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    if-ne v3, v5, :cond_0

    invoke-interface {v1, v4}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v5, Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;->BODY:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    if-ne v3, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    sget-object v8, Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;->HEADERS:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    if-ne v3, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iget-object v8, v4, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v1}, Lokhttp3/Interceptor$Chain;->d()Lokhttp3/internal/connection/RealConnection;

    move-result-object v10

    const-string v11, "--> "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v12, ""

    if-eqz v10, :cond_5

    iget-object v13, v10, Lokhttp3/internal/connection/RealConnection;->h:Lokhttp3/Protocol;

    goto :goto_4

    :cond_5
    move-object v13, v12

    :goto_4
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "-byte body)"

    if-nez v3, :cond_6

    if-eqz v9, :cond_6

    const-string v14, "\n ("

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->a()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v14, " ("

    const-string v15, "-byte body omitted)"

    const-wide/16 v16, 0xc00

    const/16 v6, 0xa

    if-eqz v3, :cond_a

    if-eqz v9, :cond_7

    invoke-static {v2, v8}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->appendFirstHeaders(Ljava/lang/StringBuilder;Lokhttp3/RequestBody;)V

    :cond_7
    iget-object v11, v4, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-static {v2, v11}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->appendHeaders(Ljava/lang/StringBuilder;Lokhttp3/Headers;)V

    const-string v11, "--> END "

    if-eqz v5, :cond_8

    if-nez v9, :cond_9

    :cond_8
    move/from16 v18, v3

    move/from16 v21, v5

    move v7, v6

    goto/16 :goto_c

    :cond_9
    iget-object v9, v4, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-direct {v0, v9}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (encoded body omitted)"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    move/from16 v18, v3

    move/from16 v21, v5

    goto/16 :goto_d

    :cond_b
    instance-of v9, v8, Lokhttp3/MultipartBody;

    if-eqz v9, :cond_13

    move-object v9, v8

    check-cast v9, Lokhttp3/MultipartBody;

    iget-object v7, v9, Lokhttp3/MultipartBody;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lokhttp3/MultipartBody$Part;

    move/from16 v18, v3

    const-string v3, "\n--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lokhttp3/MultipartBody;->c:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lokhttp3/MultipartBody$Part;->b:Lokhttp3/RequestBody;

    if-eqz v3, :cond_c

    const/16 v20, 0x1

    goto :goto_6

    :cond_c
    const/16 v20, 0x0

    :goto_6
    if-eqz v20, :cond_d

    invoke-static {v2, v3}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->appendFirstHeaders(Ljava/lang/StringBuilder;Lokhttp3/RequestBody;)V

    :cond_d
    move/from16 v21, v5

    iget-object v5, v6, Lokhttp3/MultipartBody$Part;->a:Lokhttp3/Headers;

    invoke-static {v2, v5}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->appendHeaders(Ljava/lang/StringBuilder;Lokhttp3/Headers;)V

    if-nez v20, :cond_e

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v5

    move-object/from16 v20, v7

    goto/16 :goto_9

    :cond_e
    const/16 v5, 0xa

    iget-object v6, v6, Lokhttp3/MultipartBody$Part;->a:Lokhttp3/Headers;

    invoke-direct {v0, v6}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "(encoded body omitted)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v7

    const/16 v3, 0xa

    goto :goto_9

    :cond_f
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {v3, v5}, Lokhttp3/RequestBody;->e(Lokio/BufferedSink;)V

    invoke-static {v5}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object/from16 v20, v7

    iget-wide v6, v5, Lokio/Buffer;->c:J

    move-object/from16 v22, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-wide/from16 v23, v6

    int-to-long v6, v3

    add-long v6, v6, v23

    cmp-long v6, v6, v16

    if-lez v6, :cond_10

    rsub-int v3, v3, 0xc00

    int-to-long v6, v3

    :goto_7
    const/16 v3, 0xa

    goto :goto_8

    :cond_10
    move-wide/from16 v6, v23

    goto :goto_7

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v5, v6, v7, v3}, Lokio/Buffer;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lokhttp3/RequestBody;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_11
    move-object/from16 v22, v3

    move-object/from16 v20, v7

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "(binary "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lokhttp3/RequestBody;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v6, v3

    move/from16 v3, v18

    move-object/from16 v7, v20

    move/from16 v5, v21

    goto/16 :goto_5

    :cond_12
    move/from16 v18, v3

    move/from16 v21, v5

    move v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lokhttp3/MultipartBody;->c:Lokio/ByteString;

    invoke-virtual {v6}, Lokio/ByteString;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_13
    move/from16 v18, v3

    move/from16 v21, v5

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {v8, v3}, Lokhttp3/RequestBody;->e(Lokio/BufferedSink;)V

    invoke-static {v3}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-wide v5, v3, Lokio/Buffer;->c:J

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-wide/from16 v22, v5

    int-to-long v5, v7

    add-long v5, v5, v22

    cmp-long v5, v5, v16

    if-lez v5, :cond_14

    rsub-int v5, v7, 0xc00

    int-to-long v5, v5

    :goto_a
    const/16 v7, 0xa

    goto :goto_b

    :cond_14
    move-wide/from16 v5, v22

    goto :goto_a

    :goto_b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v9

    invoke-static {v9}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v3, v5, v6, v9}, Lokio/Buffer;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_15
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (binary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :goto_c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    :try_start_0
    invoke-interface {v1, v4}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v4, 0xf4240

    div-long/2addr v7, v4

    iget-object v4, v1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_16

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-byte"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_e
    const/16 v10, 0xa

    goto :goto_f

    :cond_16
    const-string v9, "unknown-length"

    goto :goto_e

    :goto_f
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, "<-- "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lokhttp3/Response;->e:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    move-object v10, v12

    goto :goto_10

    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_10
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lokhttp3/Response;->b:Lokhttp3/Request;

    iget-object v10, v10, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v18, :cond_18

    const-string v7, ", "

    const-string v8, " body"

    invoke-static {v7, v9, v8}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_18
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_20

    iget-object v7, v1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v8

    :goto_11
    if-ge v3, v8, :cond_19

    const/16 v10, 0xa

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_19
    if-eqz v21, :cond_1a

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_1a
    const/16 v10, 0xa

    goto/16 :goto_13

    :cond_1b
    iget-object v3, v1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-direct {v0, v3}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "<-- END HTTP (encoded body omitted)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_1c
    const/16 v3, 0xa

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    const-wide v7, 0x7fffffffffffffffL

    invoke-interface {v0, v7, v8}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {v0}, Lokio/BufferedSource;->L()Lokio/Buffer;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "<-- END HTTP (binary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lokio/Buffer;->c:J

    invoke-static {v3, v4, v15, v2}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object v1

    :cond_1d
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Lokio/Buffer;->j()Lokio/Buffer;

    move-result-object v3

    iget-wide v5, v3, Lokio/Buffer;->c:J

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    int-to-long v8, v7

    add-long/2addr v8, v5

    cmp-long v8, v8, v16

    if-lez v8, :cond_1e

    rsub-int v5, v7, 0xc00

    int-to-long v5, v5

    :cond_1e
    const/16 v10, 0xa

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->getCharset(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v5, v6, v4}, Lokio/Buffer;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_1f
    const/16 v10, 0xa

    :goto_12
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "<-- END HTTP ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lokio/Buffer;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :goto_13
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "<-- END HTTP"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    :goto_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<-- HTTP FAILED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_21

    iget-object v3, v10, Lokhttp3/internal/connection/RealConnection;->h:Lokhttp3/Protocol;

    goto :goto_15

    :cond_21
    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    throw v0
.end method

.method public setLevel(Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;)Lcom/sightcall/universal/api/HttpLoggingInterceptor;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->level:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    return-object p0

    :cond_0
    const-string p0, "level == null. Use Level.NONE instead."

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
