.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/http/RetryAndFollowUpInterceptor;",
        "Lokhttp3/Interceptor;",
        "<init>",
        "()V",
        "Companion",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Request;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p0, Lokhttp3/Response;->e:I

    iget-object v3, p0, Lokhttp3/Response;->b:Lokhttp3/Request;

    iget-object v4, v3, Lokhttp3/Request;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x134

    const/16 v8, 0x133

    if-eq v2, v8, :cond_e

    if-eq v2, v7, :cond_e

    const/16 v9, 0x191

    if-eq v2, v9, :cond_d

    const/16 v9, 0x1a5

    if-eq v2, v9, :cond_a

    const/16 p1, 0x1f7

    if-eq v2, p1, :cond_8

    const/16 p1, 0x197

    if-eq v2, p1, :cond_6

    const/16 p1, 0x198

    if-eq v2, p1, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :cond_1
    iget-boolean p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->s:Z

    if-nez p2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p2, v3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lokhttp3/RequestBody;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p2, p0, Lokhttp3/Response;->l:Lokhttp3/Response;

    if-eqz p2, :cond_4

    iget p2, p2, Lokhttp3/Response;->e:I

    if-ne p2, p1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {p0, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->c(Lokhttp3/Response;I)I

    move-result p1

    if-lez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object p0, p0, Lokhttp3/Response;->b:Lokhttp3/Request;

    return-object p0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_7

    iget-object p1, p2, Lokhttp3/internal/http/RealInterceptorChain;->q:Lokhttp3/Authenticator;

    invoke-interface {p1, v1, p0}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p2, p0, Lokhttp3/Response;->l:Lokhttp3/Response;

    if-eqz p2, :cond_9

    iget p2, p2, Lokhttp3/Response;->e:I

    if-ne p2, p1, :cond_9

    goto/16 :goto_1

    :cond_9
    const p1, 0x7fffffff

    invoke-static {p0, p1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->c(Lokhttp3/Response;I)I

    move-result p1

    if-nez p1, :cond_13

    iget-object p0, p0, Lokhttp3/Response;->b:Lokhttp3/Request;

    return-object p0

    :cond_a
    iget-object p2, v3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lokhttp3/RequestBody;->d()Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_1

    :cond_b
    if-eqz p1, :cond_13

    iget-object p2, p1, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-interface {p2}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/internal/connection/RoutePlanner;->b()Lokhttp3/Address;

    move-result-object p2

    iget-object p2, p2, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object p2, p2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    iget-object v1, p1, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->j()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->getRoute()Lokhttp3/Route;

    move-result-object v1

    iget-object v1, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v1, v1, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iput-boolean v6, p1, Lokhttp3/internal/connection/RealConnection;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p0, p0, Lokhttp3/Response;->b:Lokhttp3/Request;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_d
    iget-object p1, p2, Lokhttp3/internal/http/RealInterceptorChain;->i:Lokhttp3/Authenticator;

    invoke-interface {p1, v1, p0}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_e
    :pswitch_0
    const-string p1, "PROPFIND"

    iget-object v1, p2, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v1, v1, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    iget-boolean v1, v1, Lokhttp3/OkHttpClient;->h:Z

    if-nez v1, :cond_f

    goto :goto_1

    :cond_f
    const-string v1, "Location"

    iget-object v2, p0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v2, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v1, v0

    :cond_10
    iget-object v2, p0, Lokhttp3/Response;->b:Lokhttp3/Request;

    if-nez v1, :cond_11

    goto :goto_1

    :cond_11
    iget-object v3, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v3, v1}, Lokhttp3/HttpUrl;->i(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_1

    :cond_12
    iget-object v3, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    iget-object v9, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v9, v9, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object p2, p2, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    iget-boolean p2, p2, Lokhttp3/OkHttpClient;->i:Z

    if-nez p2, :cond_14

    :cond_13
    :goto_1
    return-object v0

    :cond_14
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2, v2}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget p0, p0, Lokhttp3/Response;->e:I

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    if-eq p0, v7, :cond_15

    if-ne p0, v8, :cond_16

    :cond_15
    move v5, v6

    :cond_16
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    if-eq p0, v7, :cond_17

    if-eq p0, v8, :cond_17

    const-string p0, "GET"

    invoke-virtual {p2, p0, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    goto :goto_2

    :cond_17
    if-eqz v5, :cond_18

    iget-object v0, v2, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    :cond_18
    invoke-virtual {p2, v4, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    :goto_2
    if-nez v5, :cond_19

    const-string p0, "Transfer-Encoding"

    iget-object p1, p2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->f(Ljava/lang/String;)V

    const-string p0, "Content-Length"

    iget-object p1, p2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->f(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    iget-object p1, p2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->f(Ljava/lang/String;)V

    :cond_19
    iget-object p0, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-static {p0, v1}, Lokhttp3/internal/_UtilJvmKt;->a(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "Authorization"

    iget-object p1, p2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->f(Ljava/lang/String;)V

    :cond_1a
    iput-object v1, p2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, p2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/Request;)Z
    .locals 1

    instance-of v0, p0, Lokhttp3/internal/http2/ConnectionShutdownException;

    iget-boolean p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->s:Z

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_2

    iget-object p2, p3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lokhttp3/RequestBody;->d()Z

    move-result p2

    if-nez p2, :cond_8

    :cond_1
    instance-of p2, p0, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    instance-of p2, p0, Ljava/net/ProtocolException;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    instance-of p2, p0, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_4

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_8

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_4
    instance-of p2, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    instance-of p0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    :goto_0
    iget-object p0, p1, Lokhttp3/internal/connection/RealCall;->t:Lokhttp3/internal/connection/Exchange;

    if-eqz p0, :cond_8

    iget-boolean p0, p0, Lokhttp3/internal/connection/Exchange;->d:Z

    const/4 p2, 0x1

    if-ne p0, p2, :cond_8

    iget-object p0, p1, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object p0

    iget-object p1, p1, Lokhttp3/internal/connection/RealCall;->t:Lokhttp3/internal/connection/Exchange;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object p1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, p1}, Lokhttp3/internal/connection/RoutePlanner;->a(Lokhttp3/internal/connection/RealConnection;)Z

    move-result p0

    if-eqz p0, :cond_8

    return p2

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lokhttp3/Response;I)I
    .locals 1

    iget-object p0, p0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    const-string v0, "Retry-After"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-nez p0, :cond_1

    return p1

    :cond_1
    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "\\d+"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->f(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 34

    move-object/from16 v1, p1

    check-cast v1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    iget-object v14, v1, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v15, v0

    move-object/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v17, v4

    move v0, v5

    :goto_0
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v14, Lokhttp3/internal/connection/RealCall;->m:Lokhttp3/internal/connection/Exchange;

    if-nez v2, :cond_c

    monitor-enter v14

    :try_start_0
    iget-boolean v2, v14, Lokhttp3/internal/connection/RealCall;->o:Z

    if-nez v2, :cond_b

    iget-boolean v2, v14, Lokhttp3/internal/connection/RealCall;->n:Z

    if-nez v2, :cond_a

    iget-boolean v2, v14, Lokhttp3/internal/connection/RealCall;->q:Z

    if-nez v2, :cond_a

    iget-boolean v2, v14, Lokhttp3/internal/connection/RealCall;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v2, :cond_a

    monitor-exit v14

    if-eqz v0, :cond_2

    new-instance v2, Lokhttp3/internal/connection/RealRoutePlanner;

    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    move v6, v3

    iget-object v3, v0, Lokhttp3/OkHttpClient;->C:Lokhttp3/internal/concurrent/TaskRunner;

    iget-object v7, v1, Lokhttp3/internal/http/RealInterceptorChain;->l:Lokhttp3/ConnectionPool;

    iget-object v7, v7, Lokhttp3/ConnectionPool;->a:Lokhttp3/internal/connection/RealConnectionPool;

    move v8, v5

    iget v5, v1, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    move v9, v6

    iget v6, v1, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    move-object v10, v4

    move-object v4, v7

    iget v7, v1, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    move-object v11, v10

    iget-boolean v10, v1, Lokhttp3/internal/http/RealInterceptorChain;->s:Z

    iget-boolean v0, v0, Lokhttp3/OkHttpClient;->f:Z

    iget-object v12, v15, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->f()Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, v1, Lokhttp3/internal/http/RealInterceptorChain;->u:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v8, v1, Lokhttp3/internal/http/RealInterceptorChain;->o:Ljavax/net/ssl/HostnameVerifier;

    iget-object v9, v1, Lokhttp3/internal/http/RealInterceptorChain;->k:Lokhttp3/CertificatePinner;

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v24, v13

    goto :goto_1

    :cond_0
    move-object/from16 v24, v11

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    :goto_1
    new-instance v19, Lokhttp3/Address;

    iget-object v8, v12, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    iget v9, v12, Lokhttp3/HttpUrl;->e:I

    iget-object v12, v1, Lokhttp3/internal/http/RealInterceptorChain;->n:Lokhttp3/Dns;

    iget-object v13, v1, Lokhttp3/internal/http/RealInterceptorChain;->t:Ljavax/net/SocketFactory;

    iget-object v11, v1, Lokhttp3/internal/http/RealInterceptorChain;->q:Lokhttp3/Authenticator;

    move/from16 v32, v0

    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->p:Ljava/net/Proxy;

    move-object/from16 v28, v0

    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    move-object/from16 v33, v2

    iget-object v2, v0, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    iget-object v0, v0, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    move-object/from16 v30, v0

    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->r:Ljava/net/ProxySelector;

    move-object/from16 v31, v0

    move-object/from16 v29, v2

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v27, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-direct/range {v19 .. v31}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    iget-object v13, v0, Lokhttp3/OkHttpClient;->B:Lokhttp3/internal/connection/RouteDatabase;

    const/4 v9, 0x0

    move v8, v5

    move-object/from16 v12, v19

    move/from16 v11, v32

    move-object/from16 v2, v33

    invoke-direct/range {v2 .. v15}, Lokhttp3/internal/connection/RealRoutePlanner;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V

    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    iget-boolean v3, v0, Lokhttp3/OkHttpClient;->f:Z

    if-eqz v3, :cond_1

    new-instance v3, Lokhttp3/internal/connection/FastFallbackExchangeFinder;

    iget-object v0, v0, Lokhttp3/OkHttpClient;->C:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-direct {v3, v2, v0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;-><init>(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V

    goto :goto_2

    :cond_1
    new-instance v3, Lokhttp3/internal/connection/SequentialExchangeFinder;

    invoke-direct {v3, v2}, Lokhttp3/internal/connection/SequentialExchangeFinder;-><init>(Lokhttp3/internal/connection/RoutePlanner;)V

    :goto_2
    iput-object v3, v14, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/internal/connection/ExchangeFinder;

    :cond_2
    :try_start_1
    iget-boolean v0, v14, Lokhttp3/internal/connection/RealCall;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v0, :cond_9

    :try_start_2
    invoke-virtual {v1, v15}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v2, Lokhttp3/Response$Builder;

    invoke-direct {v2, v0}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    iput-object v15, v2, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v17, :cond_3

    :try_start_4
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_3
    const/4 v4, 0x0

    :goto_3
    :try_start_5
    iput-object v4, v2, Lokhttp3/Response$Builder;->k:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    iget-object v2, v14, Lokhttp3/internal/connection/RealCall;->m:Lokhttp3/internal/connection/Exchange;

    move-object/from16 v3, p1

    check-cast v3, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-static {v0, v2, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Request;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v15, :cond_4

    :try_start_6
    iget-object v1, v14, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    const/4 v10, 0x0

    invoke-virtual {v1, v14, v0, v10}, Lokhttp3/EventListener;->followUpDecision(Lokhttp3/Call;Lokhttp3/Response;Lokhttp3/Request;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    :goto_4
    move v3, v6

    goto/16 :goto_8

    :cond_4
    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_7
    iget-object v2, v15, Lokhttp3/Request;->d:Lokhttp3/RequestBody;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Lokhttp3/RequestBody;->d()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_5

    :try_start_9
    iget-object v1, v14, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    invoke-virtual {v1, v14, v0, v10}, Lokhttp3/EventListener;->followUpDecision(Lokhttp3/Call;Lokhttp3/Response;Lokhttp3/Request;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-virtual {v14, v6}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_5
    :try_start_a
    iget-object v2, v0, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-static {v2}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    add-int/lit8 v2, v18, 0x1

    iget-object v3, v14, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    const/16 v4, 0x14

    if-gt v2, v4, :cond_6

    :try_start_b
    invoke-virtual {v3, v14, v0, v15}, Lokhttp3/EventListener;->followUpDecision(Lokhttp3/Call;Lokhttp3/Response;Lokhttp3/Request;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v8, 0x1

    invoke-virtual {v14, v8}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    move-object/from16 v17, v0

    move/from16 v18, v2

    move v3, v6

    move v0, v8

    move v5, v0

    :goto_5
    move-object v4, v10

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    const/4 v8, 0x1

    :goto_6
    move v3, v8

    goto :goto_8

    :cond_6
    const/4 v8, 0x1

    :try_start_c
    invoke-virtual {v3, v14, v0, v10}, Lokhttp3/EventListener;->followUpDecision(Lokhttp3/Call;Lokhttp3/Response;Lokhttp3/Request;)V

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many follow-up requests: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p1

    check-cast v2, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-static {v0, v14, v2, v15}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->b(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/Request;)Z

    move-result v2

    iget-object v3, v14, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    invoke-virtual {v3, v14, v0, v2}, Lokhttp3/EventListener;->retryDecision(Lokhttp3/Call;Ljava/io/IOException;Z)V

    if-nez v2, :cond_8

    sget-object v1, Lokhttp3/internal/_UtilCommonKt;->a:[B

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    throw v0

    :cond_8
    move-object/from16 v2, v16

    check-cast v2, Ljava/util/Collection;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-virtual {v14, v8}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    move v0, v6

    move v3, v0

    move v5, v8

    goto :goto_5

    :cond_9
    const/4 v8, 0x1

    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :goto_8
    invoke-virtual {v14, v3}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_9

    :cond_a
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_9
    monitor-exit v14

    throw v0

    :cond_c
    move-object v10, v4

    const-string v0, "Check failed."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10
.end method
