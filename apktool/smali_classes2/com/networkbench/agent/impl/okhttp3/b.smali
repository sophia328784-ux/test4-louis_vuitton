.class public Lcom/networkbench/agent/impl/okhttp3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/okhttp3/g;


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/b;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/okhttp3/b;->b:Z

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppData(Ljava/lang/String;)V

    :cond_0
    int-to-long p1, p2

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceivedContent(J)V

    .line 163
    invoke-virtual {p0, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    return-void
.end method

.method private static a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Request;)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrlParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->processParamsFilter(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/b$1;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/okhttp3/b$1;-><init>(Lokhttp3/Request;)V

    .line 198
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->processHeaderParam(Ljava/lang/String;Lcom/networkbench/agent/impl/instrumentation/NBSNetworkProcessHeader;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    return-void
.end method

.method private static a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Response;)V
    .locals 1

    .line 192
    :try_start_0
    const-string v0, "Content-Type"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    iget-object p1, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 194
    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 195
    :catch_0
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "NBSOkHttp2TransactionStateUtil content-type has an error "

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Response;)V
    .locals 6

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    iget-object p1, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v1, v4}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual {v1, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1, v0, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Response;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/b;->b(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Response;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndState()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result p1

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object p1

    iget-object p1, p1, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    const-string v0, "Unsatisfiable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/b;->a:Lcom/networkbench/agent/impl/c/e;

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

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->b(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "intercept  addTransactionAndErrorDataOk3  :  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/io/IOException;)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/b;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "okhttp3.0 ->httpError"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    .line 167
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result p2

    if-nez p2, :cond_4

    .line 168
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/a/a/b;->a(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    .line 170
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 173
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "okhttp3.0 ->error message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 174
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2, p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 175
    :cond_3
    new-instance p0, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/b;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget-object p0, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 178
    iget-object p0, p0, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 179
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 183
    :goto_0
    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUrl(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUrlParams(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAllGetRequestParams(Ljava/lang/String;)V

    .line 186
    iget-object v0, p1, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 187
    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setRequestMethod(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)V

    .line 188
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setCarrier(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    if-eqz p0, :cond_2

    .line 190
    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/okhttp3/b;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Request;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lokhttp3/Response;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 6

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/b;->b()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "okhttp3.0 ->CallBack.onResponse(response) response is null "

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isCdn_enabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCdnHeaderName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/networkbench/agent/impl/okhttp3/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "cdnHeaderName  key : "

    invoke-static {v4, v0, v3}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    if-nez v0, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    move-object v4, v0

    :goto_0
    invoke-virtual {p2, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setCdnVendorName(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cdnHeaderName  value : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_4
    iget v0, p1, Lokhttp3/Response;->e:I

    iget-object v3, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    if-nez v3, :cond_5

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    :goto_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v2, "X-Tingyun-Tx-Data"

    invoke-virtual {p0, v2}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v1

    :cond_6
    long-to-int v3, v3

    invoke-static {p2, v2, v3, v0}, Lcom/networkbench/agent/impl/okhttp3/b;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;II)V

    const-string v0, "okhttp3  setAppDataNew  start ...."

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "X-Tingyun-Data"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, p0

    :goto_2
    invoke-virtual {p2, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppDataNew(Ljava/lang/String;)V

    :cond_8
    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/okhttp3/b;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Response;)V

    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/okhttp3/b;->c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Response;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 191
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/okhttp3/b;->b:Z

    return p0
.end method

.method public b()Z
    .locals 0

    .line 121
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result p0

    return p0
.end method
