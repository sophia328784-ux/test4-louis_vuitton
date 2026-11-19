.class public Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;
.super Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;
.source "SourceFile"


# static fields
.field private static final NO_BODY_TEXT:Ljava/lang/String; = "Response BODY not found."

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;-><init>()V

    return-void
.end method

.method private static a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Request;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrlParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->processParamsFilter(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil$1;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil$1;-><init>(Lcom/squareup/okhttp/Request;)V

    .line 180
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->processHeaderParam(Ljava/lang/String;Lcom/networkbench/agent/impl/instrumentation/NBSNetworkProcessHeader;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    return-void
.end method

.method private static a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Response;)V
    .locals 5

    :try_start_0
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2Instrumentation;->getHeaderForOkhttp2(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "NBSOkHttp2TransactionStateUtil content-type has an error:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->names()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result p1

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object p1

    iget-object p1, p1, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    const-string v0, "Unsatisfiable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error  504 ,  message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p1, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static inspectAndInstrument(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Request;)V
    .locals 3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUrlParams(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAllGetRequestParams(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setRequestMethod(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setCarrier(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Request;)V

    :cond_1
    return-void
.end method

.method public static inspectAndInstrument(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUrl(Ljava/lang/String;)V

    .line 66
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setCarrier(Ljava/lang/String;)V

    return-void
.end method

.method public static inspectAndInstrumentResponse(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Response;)V
    .locals 5

    if-nez p1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "okhttp2.0 ->CallBack.onResponse(response) response is null "

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isCdn_enabled()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCdnHeaderName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "cdnHeaderName  key : "

    invoke-static {v3, v0, v2}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setCdnVendorName(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cdnHeaderName  value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "X-Tingyun-Tx-Data"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {p0, v1, v2, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;II)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "X-Tingyun-Data"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppDataNew(Ljava/lang/String;)V

    :cond_4
    const-string v0, "okhttp2  setAppDataNew  start ...."

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOkHttp2TransactionStateUtil;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lcom/squareup/okhttp/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static inspectAndInstrumentResponse(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppData(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p0, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    if-ltz p2, :cond_1

    int-to-long p1, p2

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceivedContent(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    return-void
.end method
