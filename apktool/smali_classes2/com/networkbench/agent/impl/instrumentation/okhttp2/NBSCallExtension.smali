.class public Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;
.super Lcom/squareup/okhttp/Call;
.source "SourceFile"


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private impl:Lcom/squareup/okhttp/Call;

.field private isOkhttp2:Z

.field private request:Lcom/squareup/okhttp/Request;

.field private transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/Call;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->isOkhttp2:Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->request:Lcom/squareup/okhttp/Request;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->request:Lcom/squareup/okhttp/Request;

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/Request;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->request:Lcom/squareup/okhttp/Request;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p2}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Instrumentation;->getHeaderForOkhttp2(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    :cond_0
    iget-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->impl:Lcom/squareup/okhttp/Call;

    return-void
.end method

.method private a(I)I
    .locals 0

    const/16 p0, 0xa

    if-ge p1, p0, :cond_0

    return p1

    .line 260
    :cond_0
    sget p0, Lcom/networkbench/agent/impl/util/r;->c:I

    return p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-object p0
.end method

.method private a(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/squareup/okhttp/Request;
    .locals 4

    .line 198
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

    .line 199
    :cond_0
    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p1

    .line 202
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

    .line 203
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v3

    iget-object v3, v3, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    .line 206
    invoke-static {v1, v2, v3, v0}, Lcom/networkbench/agent/impl/k/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1, p0, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 210
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 211
    :goto_1
    const-string p2, "setSeriesHeader has error .... "

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private a(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/Request;
    .locals 2

    if-eqz p1, :cond_5

    .line 221
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 222
    :cond_0
    iget-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-nez p2, :cond_1

    .line 223
    new-instance p2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->isOkhttp2:Z

    invoke-direct {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>(Z)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    .line 224
    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 225
    iget-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRequestHeaderIdValue(Ljava/lang/String;)V

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object p2

    .line 227
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->am()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->ar()I

    move-result v1

    .line 230
    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v1, "X-Tingyun-Id"

    invoke-virtual {p2, v1, v0}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 232
    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/k/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    const-string v0, "X-Tingyun"

    .line 234
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->an()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {p2, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 236
    :cond_4
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0, v0, v1, p2}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/squareup/okhttp/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Request$Builder;)V

    .line 238
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->inspectAndInstrument(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Request;)V

    .line 239
    invoke-virtual {p2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_5
    :goto_0
    return-object p1
.end method

.method private a(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .locals 0

    .line 215
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/squareup/okhttp/Request;)V

    return-void
.end method

.method private a(Lcom/squareup/okhttp/Request;)V
    .locals 2

    .line 212
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V

    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;-><init>(Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;Lcom/squareup/okhttp/Request;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
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

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(I)I

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

    invoke-static {v5}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

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

.method private a(Lcom/squareup/okhttp/Response;)V
    .locals 1

    .line 240
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSCallExtension checkResponse() : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;Lcom/squareup/okhttp/Response;)V
    .locals 4

    .line 244
    const-string v0, "error message:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p0

    .line 246
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 247
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 248
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 249
    const-string v1, "Content-Type"

    invoke-virtual {p2, v1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setContentType(Ljava/lang/String;)V

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 252
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz p2, :cond_3

    .line 253
    :try_start_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v1

    .line 254
    :goto_0
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p2, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 257
    :cond_4
    new-instance p2, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    return-void

    .line 258
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "NBSCallExtension error() har an error :"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 p0, 0x0

    .line 217
    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/util/w;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/w;-><init>(Ljava/lang/String;)V

    .line 218
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

    .line 219
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get okhttp2 version error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "okhttp2 dns interface is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return p0
.end method

.method private b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->isOkhttp2:Z

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-object p0
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

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "tracestate"

    if-nez v1, :cond_2

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

    goto :goto_1

    :cond_2
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

    :goto_1
    const-string p2, "setSeriesHeader has error .... "

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->impl:Lcom/squareup/okhttp/Call;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Call;->cancel()V

    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->impl:Lcom/squareup/okhttp/Call;

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallbackExtension;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallbackExtension;-><init>(Lcom/squareup/okhttp/Callback;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    return-void
.end method

.method public execute()Lcom/squareup/okhttp/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setTraces()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->impl:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/squareup/okhttp/Response;)V

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Ljava/lang/Exception;Lcom/squareup/okhttp/Response;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->impl:Lcom/squareup/okhttp/Call;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Call;->isCanceled()Z

    move-result p0

    return p0
.end method
