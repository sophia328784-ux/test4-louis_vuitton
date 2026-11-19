.class public abstract Lcom/dynatrace/android/callback/HttpClientCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public static a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->k(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->k(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {p3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    :cond_1
    new-instance v0, Lcom/dynatrace/android/callback/UriReqStateParms;

    invoke-direct {v0, p1, p2, p3}, Lcom/dynatrace/android/callback/UriReqStateParms;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    :try_start_0
    invoke-static {v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->j(Lcom/dynatrace/android/callback/UriReqStateParms;)V

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->h(Lorg/apache/http/HttpResponse;Lcom/dynatrace/android/callback/UriReqStateParms;)V

    sget-object p1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->j(Lcom/dynatrace/android/callback/UriReqStateParms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    iput p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    sget-object p1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->j(Lcom/dynatrace/android/callback/UriReqStateParms;)V

    throw p0
.end method

.method public static f(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {p2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    :cond_1
    new-instance v0, Lcom/dynatrace/android/callback/UriReqStateParms;

    invoke-static {p1}, Lcom/dynatrace/android/callback/HttpClientCallback;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/dynatrace/android/callback/UriReqStateParms;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    :try_start_0
    invoke-static {v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->j(Lcom/dynatrace/android/callback/UriReqStateParms;)V

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->h(Lorg/apache/http/HttpResponse;Lcom/dynatrace/android/callback/UriReqStateParms;)V

    sget-object p1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->j(Lcom/dynatrace/android/callback/UriReqStateParms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    iput p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    sget-object p1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iput-object p1, v0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0}, Lcom/dynatrace/android/callback/HttpClientCallback;->j(Lcom/dynatrace/android/callback/UriReqStateParms;)V

    throw p0
.end method

.method public static h(Lorg/apache/http/HttpResponse;Lcom/dynatrace/android/callback/UriReqStateParms;)V
    .locals 5

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    move v0, v2

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_0
    move v2, v0

    :goto_0
    :try_start_2
    iget-object v1, p1, Lcom/dynatrace/android/callback/UriReqStateParms;->p:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v1}, Lcom/dynatrace/android/callback/UriReqStateParms;->i(Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    invoke-static {p0}, Lcom/dynatrace/android/callback/UriReqStateParms;->j(Lorg/apache/http/HttpResponse;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_3
    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    iput-wide v3, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    :goto_1
    const-string v1, "Server-Timing"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, p0, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->a(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_3
    iget-object v1, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    :cond_3
    move v2, v0

    :goto_4
    iput v2, p1, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    :cond_4
    return-void
.end method

.method public static i(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/dynatrace/android/callback/HttpClientCallbackCore;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dynatrace/android/callback/HttpClientCallbackCore;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lcom/dynatrace/android/callback/CbWebReqTracker;

    return-void
.end method

.method public static j(Lcom/dynatrace/android/callback/UriReqStateParms;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/HttpClientCallbackCore;->b(Lcom/dynatrace/android/callback/UriReqStateParms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public static k(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    instance-of p1, p0, Ljava/lang/Error;

    if-nez p1, :cond_4

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {p1, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_4
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method
