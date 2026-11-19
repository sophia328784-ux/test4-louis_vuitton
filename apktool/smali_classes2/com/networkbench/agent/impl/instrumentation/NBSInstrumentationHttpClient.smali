.class public Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;
    .locals 5

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dispatchHttpClientRequest error!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;I)V

    :cond_2
    invoke-static {v0}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object p0

    :catchall_0
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchHttpClientRequest error ! getByName the hostName is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {p0, p1, p2, p3}, Lcom/dynatrace/android/callback/HttpClientCallback;->b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    .line 102
    :try_start_0
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 103
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 105
    :goto_0
    :try_start_1
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 106
    invoke-static {p1, p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p3, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/dynatrace/android/callback/HttpClientCallback;->b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 107
    :goto_1
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 108
    throw p0

    .line 109
    :goto_2
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 110
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p4}, Lcom/dynatrace/android/callback/HttpClientCallback;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->k(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    :try_start_0
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :goto_0
    :try_start_1
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p3, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p3

    invoke-static {p0, p1, p2, p4}, Lcom/dynatrace/android/callback/HttpClientCallback;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->k(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_1
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    throw p0

    :goto_2
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {p0, p1, p2}, Lcom/dynatrace/android/callback/HttpClientCallback;->c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    .line 153
    :try_start_0
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 154
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 156
    :goto_0
    :try_start_1
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p1

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 157
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/dynatrace/android/callback/HttpClientCallback;->c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 158
    :goto_1
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 159
    throw p0

    .line 160
    :goto_2
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 161
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {p0, p1, p3}, Lcom/dynatrace/android/callback/HttpClientCallback;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 135
    invoke-static {p2, p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->k(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    .line 138
    :try_start_0
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 139
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 141
    :goto_0
    :try_start_1
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p1

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 142
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p2

    .line 143
    invoke-static {p0, p1, p3}, Lcom/dynatrace/android/callback/HttpClientCallback;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 144
    invoke-static {p2, p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->k(Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 145
    :goto_1
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 146
    throw p0

    .line 147
    :goto_2
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 148
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {p0, p1, p2}, Lcom/dynatrace/android/callback/HttpClientCallback;->d(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    .line 115
    :try_start_0
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 116
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 118
    :goto_0
    :try_start_1
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 119
    invoke-static {p1, p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/dynatrace/android/callback/HttpClientCallback;->d(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/HttpResponse;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 120
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 121
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {p0, p1, p2, p3}, Lcom/dynatrace/android/callback/HttpClientCallback;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    .line 91
    :try_start_0
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 92
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 94
    :goto_0
    :try_start_1
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 95
    invoke-static {p1, p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/dynatrace/android/callback/HttpClientCallback;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/HttpResponse;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 97
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0, p1}, Lcom/dynatrace/android/callback/HttpClientCallback;->f(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    .line 166
    :try_start_0
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 167
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 169
    :goto_0
    :try_start_1
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p1

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 170
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/dynatrace/android/callback/HttpClientCallback;->f(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/HttpResponse;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 171
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 172
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {p0, p1, p2}, Lcom/dynatrace/android/callback/HttpClientCallback;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    const-string v0, "httpClient execute gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    .line 126
    :try_start_0
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->dispatchHttpClientRequest(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 127
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error set transaction e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 129
    :goto_0
    :try_start_1
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setHttpClientCrossProcessHeader(Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object p1

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 130
    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRequestInfo(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/dynatrace/android/callback/HttpClientCallback;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->processRespInfo(Lorg/apache/http/HttpResponse;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 131
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 132
    throw p0
.end method

.method private static httpClientError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "error message:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "transactionData is null"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_3
    new-instance p1, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentationHttpClient;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error httpClientError e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static initDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method private static processRequestInfo(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpRequest;
    .locals 0

    .line 5
    invoke-static {p2, p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->inspectAndInstrument(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private static processRequestInfo(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->inspectAndInstrument(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method private static processRespInfo(Lorg/apache/http/HttpResponse;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/HttpResponse;
    .locals 0

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->inspectAndInstrument(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private static processRespInfo(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/ResponseHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;->wrap(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object p0

    return-object p0
.end method
