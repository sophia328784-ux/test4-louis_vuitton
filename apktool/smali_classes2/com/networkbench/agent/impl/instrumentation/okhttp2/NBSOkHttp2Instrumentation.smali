.class public Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Instrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static body(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderForOkhttp2(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Headers;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static init()Lcom/squareup/okhttp/OkHttpClient;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Instrumentation;->isSpecificOkhttp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;-><init>()V

    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->setClient(Lcom/squareup/okhttp/OkHttpClient;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    return-object v0
.end method

.method public static isSpecificOkhttp(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/util/w;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/util/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/w;->a()I

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/w;->a()I

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge p0, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/w;->a()I

    move-result p0

    if-ne p0, v3, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/w;->b()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p0, v3, :cond_2

    return v2

    :cond_2
    return v3

    :catchall_0
    return v0
.end method

.method public static newCall(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Instrumentation;->isSpecificOkhttp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;

    invoke-direct {v0, p0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lcom/squareup/okhttp/OkUrlFactory;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    instance-of p1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->m(Ljava/net/HttpURLConnection;)V

    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->m(Ljava/net/HttpURLConnection;)V

    return-object p1

    :cond_1
    return-object p0
.end method
