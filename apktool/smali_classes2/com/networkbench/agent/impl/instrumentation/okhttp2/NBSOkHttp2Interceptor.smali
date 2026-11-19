.class public Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private client:Lcom/squareup/okhttp/OkHttpClient;

.field private final mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    return-void
.end method

.method private a(I)I
    .locals 0

    const/16 p0, 0xa

    if-ge p1, p0, :cond_0

    return p1

    .line 222
    :cond_0
    sget p0, Lcom/networkbench/agent/impl/util/r;->c:I

    return p0
.end method

.method private a(Lcom/squareup/okhttp/Request;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 203
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRequestBodyLength error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {p0, v2, p1}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private a(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;
    .locals 4

    .line 208
    const-string p0, "sw8"

    const-string v0, ":"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/k/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 209
    :cond_0
    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p1

    .line 212
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v3

    iget-object v3, v3, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    .line 216
    invoke-static {v1, v2, v3, v0}, Lcom/networkbench/agent/impl/k/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p0, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 220
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 221
    :goto_1
    const-string p2, "setSeriesHeader has error .... "

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private a(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 7

    const-string v0, "okhttp2 setCrossProcessHeader apms  :"

    const-string v1, "HttpURLConnection setCrossProcessHeader uuid :"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->b()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->a(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p3, v4, v2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {p2, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUUid(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "------  uuid : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "okhttp2 setCrossProcessHeader  apmsList  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " okhttp2 apms\u6570\u636e\u683c\u5f0f\u89e3\u6790\u9519\u8bef!!!"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 p0, 0x0

    .line 223
    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/util/w;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/w;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/w;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/w;->b()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 225
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get okhttp2 version error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "okhttp2 dns interface is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return p0
.end method

.method private a(Lcom/squareup/okhttp/Response;)Z
    .locals 1

    .line 205
    :try_start_0
    const-string p0, "Content-Range"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 207
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "isContentRangeHeaderExist happened error"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;
    .locals 5

    const-string p0, "traceparent"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/k/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "tracestate"

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/k/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/k/d;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_0
    const-string p2, "setSeriesHeader has error .... "

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private c(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance p2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRequestHeaderIdValue(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->am()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->ar()I

    move-result v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Tingyun-Id"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/k/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "X-Tingyun"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->a(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Request$Builder;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "set request tag"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/Request$Builder;->tag(Ljava/lang/Object;)Lcom/squareup/okhttp/Request$Builder;

    :cond_4
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    sget-object p2, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSOkHttp2Interceptor setCrossProcessHeader---> has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->b(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->a(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    invoke-virtual {v2, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;->requestFinished(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->c(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "okhttp2.0 -> setCrossProcessHeader occur an error"

    invoke-interface {v3, v4, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Instrumentation;->getHeaderForOkhttp2(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    :try_start_4
    const-string v2, "Util.getHeader  has error .... "

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "okhttp2 intercept error"

    invoke-interface {v3, v4, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->client:Lcom/squareup/okhttp/OkHttpClient;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V

    :cond_2
    :try_start_5
    invoke-interface {p1, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Instrumentation;->getHeaderForOkhttp2(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;

    const-string v2, "Content-Type"

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setContentType(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->a(Lcom/squareup/okhttp/Request;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesSent(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "NBSOkHttp2Interceptor_. getContentType occur an error"

    invoke-interface {v2, v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_3
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    invoke-virtual {v0, p1, v1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;->responseFinished(Lcom/squareup/okhttp/Response;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NBSOkHttp2Interceptor_  intercept()---> responseFinished  has an error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_4
    :goto_4
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->a(Lcom/squareup/okhttp/Response;)Z

    move-result p0

    invoke-direct {v2, v3, v1, p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;-><init>(Lcom/squareup/okhttp/ResponseBody;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_9
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->mEventReporter:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;

    invoke-virtual {p0, v1, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOKHttp2Reporter;->httpError(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/io/IOException;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSOkHttp2Interceptor_  intercept() --->httpError has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_5
    :goto_5
    throw p1

    :cond_6
    :goto_6
    invoke-interface {p1, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public setClient(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Interceptor;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-void
.end method
