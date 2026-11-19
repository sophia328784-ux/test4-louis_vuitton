.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/http/CallServerInterceptor;",
        "Lokhttp3/Interceptor;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/http/CallServerInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lokhttp3/internal/http/CallServerInterceptor;->a:Lokhttp3/internal/http/CallServerInterceptor;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 21

    const-string v1, "close"

    move-object/from16 v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v3, v0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    iget-object v0, v9, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v2, v9, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    iget-object v4, v9, Lokhttp3/Request;->c:Lokhttp3/Headers;

    const-string v14, "Connection"

    invoke-virtual {v4, v14}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "upgrade"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    const/16 v17, 0x0

    :try_start_0
    invoke-virtual {v3, v9}, Lokhttp3/internal/connection/Exchange;->h(Lokhttp3/Request;)V

    if-eqz v2, :cond_5

    const-string v2, "100-continue"

    const-string v4, "Expect"

    iget-object v5, v9, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v5, v4}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, v3, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->h()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v3, v13}, Lokhttp3/internal/connection/Exchange;->e(Z)Lokhttp3/Response$Builder;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v4, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v4, v4, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v5, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4, v5}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v18, v2

    move/from16 v19, v12

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v19, v13

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v2, v17

    goto/16 :goto_5

    :catch_2
    move-exception v0

    :try_start_4
    iget-object v2, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v4, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2, v4, v0}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v3, v0}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    move/from16 v19, v13

    move-object/from16 v18, v17

    :goto_1
    if-nez v18, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v9}, Lokhttp3/internal/connection/Exchange;->b(Lokhttp3/Request;)Lokio/Sink;

    move-result-object v2

    new-instance v4, Lokio/RealBufferedSink;

    invoke-direct {v4, v2}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    invoke-virtual {v0, v4}, Lokhttp3/RequestBody;->e(Lokio/BufferedSink;)V

    invoke-virtual {v4}, Lokio/RealBufferedSink;->close()V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_5

    :cond_2
    iget-object v2, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    sget v0, Lokhttp3/internal/connection/RealCall;->v:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lokhttp3/internal/connection/RealCall;->f(Lokhttp3/internal/connection/Exchange;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->l:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_3

    move v0, v13

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, v3, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->j()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_3
    move-object/from16 v2, v18

    goto :goto_4

    :cond_5
    :try_start_6
    iget-object v2, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    sget v0, Lokhttp3/internal/connection/RealCall;->v:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lokhttp3/internal/connection/RealCall;->f(Lokhttp3/internal/connection/Exchange;ZZZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v19, v13

    move-object/from16 v2, v17

    :goto_4
    :try_start_7
    iget-object v0, v3, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v0, v2

    move-object/from16 v2, v17

    goto :goto_6

    :catch_4
    move-exception v0

    :try_start_8
    iget-object v4, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v4, v4, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v5, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4, v5, v0}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v3, v0}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception v0

    :goto_5
    instance-of v4, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v4, :cond_19

    iget-boolean v4, v3, Lokhttp3/internal/connection/Exchange;->d:Z

    if-eqz v4, :cond_18

    move-object/from16 v20, v2

    move-object v2, v0

    move-object/from16 v0, v20

    :goto_6
    if-nez v0, :cond_6

    :try_start_9
    invoke-virtual {v3, v12}, Lokhttp3/internal/connection/Exchange;->e(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v19, :cond_6

    iget-object v4, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v4, v4, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v5, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4, v5}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    move/from16 v19, v12

    goto :goto_7

    :catch_6
    move-exception v0

    goto/16 :goto_e

    :cond_6
    :goto_7
    iput-object v9, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    iget-object v4, v4, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/Handshake;

    iput-object v4, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    iput-wide v10, v0, Lokhttp3/Response$Builder;->l:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lokhttp3/Response$Builder;->m:J

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    iget v4, v0, Lokhttp3/Response;->e:I

    :goto_8
    const/16 v5, 0x64

    if-ne v4, v5, :cond_7

    goto :goto_9

    :cond_7
    const/16 v5, 0x66

    if-gt v5, v4, :cond_9

    const/16 v5, 0xc8

    if-ge v4, v5, :cond_9

    :goto_9
    invoke-virtual {v3, v12}, Lokhttp3/internal/connection/Exchange;->e(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v19, :cond_8

    iget-object v4, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v4, v4, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v5, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4, v5}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    :cond_8
    iput-object v9, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    iget-object v4, v4, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/Handshake;

    iput-object v4, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    iput-wide v10, v0, Lokhttp3/Response$Builder;->l:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lokhttp3/Response$Builder;->m:J

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    iget v4, v0, Lokhttp3/Response;->e:I

    goto :goto_8

    :cond_9
    iget-object v5, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v6, v3, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v5, v6, v0}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    const/16 v5, 0x65

    if-ne v4, v5, :cond_a

    move v5, v13

    goto :goto_a

    :cond_a
    move v5, v12

    :goto_a
    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object v6

    iget-object v6, v6, Lokhttp3/internal/connection/RealConnection;->l:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v6, :cond_b

    move v6, v13

    goto :goto_b

    :cond_b
    move v6, v12

    :goto_b
    if-nez v6, :cond_c

    goto :goto_c

    :cond_c
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected 101 code on HTTP/2 connection"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_c
    if-eqz v5, :cond_f

    iget-object v5, v0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v5, v14}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    move-object/from16 v5, v17

    :cond_e
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v12, v13

    :cond_f
    if-eqz v16, :cond_10

    if-eqz v12, :cond_10

    new-instance v5, Lokhttp3/Response$Builder;

    invoke-direct {v5, v0}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    new-instance v6, Lokhttp3/internal/UnreadableResponseBody;

    iget-object v7, v0, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    iget-object v0, v0, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lokhttp3/internal/UnreadableResponseBody;-><init>(Lokhttp3/MediaType;J)V

    iput-object v6, v5, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->g()Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;

    move-result-object v0

    iput-object v0, v5, Lokhttp3/Response$Builder;->h:Lokio/Socket;

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    goto :goto_d

    :cond_10
    invoke-virtual {v3, v0}, Lokhttp3/internal/connection/Exchange;->d(Lokhttp3/Response;)Lokhttp3/internal/http/RealResponseBody;

    move-result-object v5

    new-instance v6, Lokhttp3/Response$Builder;

    invoke-direct {v6, v0}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    iput-object v5, v6, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    :goto_d
    iget-object v5, v0, Lokhttp3/Response;->b:Lokhttp3/Request;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v5, v14}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v5, v14}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    move-object/from16 v5, v17

    :cond_11
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    iget-object v1, v3, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->j()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->c()V

    :cond_13
    const/16 v1, 0xcc

    if-eq v4, v1, :cond_14

    const/16 v1, 0xcd

    if-ne v4, v1, :cond_15

    :cond_14
    iget-object v1, v0, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_16

    :cond_15
    return-object v0

    :cond_16
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " had non-zero Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_e
    if-eqz v2, :cond_17

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :cond_17
    throw v0

    :cond_18
    throw v0

    :cond_19
    throw v0
.end method
