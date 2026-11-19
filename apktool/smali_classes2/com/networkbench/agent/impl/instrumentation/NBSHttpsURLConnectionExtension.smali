.class public Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field a:Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

.field private impl:Ljavax/net/ssl/HttpsURLConnection;

.field private final requestHeaderFirstModify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 4

    const-string v0, "Util.getHeader requestHeaderParam  has error .... "

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;I)V

    :cond_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setSeriesHeader(Ljava/net/HttpURLConnection;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setCrossProcessHeader(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    const-string p1, "NBSHttpURLConnectionExtension has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->addTransactionAndErrorData(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;Ljava/lang/Exception;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    return-void
.end method

.method private addTransactionAndErrorData(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 7

    const-string v0, "addTransactionAndErrorData has error :  "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setContentType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "NBSHttpsURLConnectionExtension addTransactionAndErrorData() has an error : "

    invoke-interface {v2, v3, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x190

    cmp-long v1, v1, v3

    if-ltz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    instance-of v3, v2, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->getBufferAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_6
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    :cond_4
    :try_start_8
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const-string v3, ""

    if-eqz p0, :cond_5

    :try_start_9
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_5
    move-object p0, v3

    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1, p0, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string p0, "no response"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_5
    const/16 p0, 0x1f8

    if-ne v0, p0, :cond_9

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    const-string v0, "Unsatisfiable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error  504 ,  message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object p1

    iget-object p1, p1, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    new-instance p0, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "NBSHttpsURLConnectionExtension addTransactionAndErrorData has an error : "

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private checkResponse()V
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->inspectAndInstrumentResponse(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/net/HttpURLConnection;)V

    :cond_0
    return-void
.end method

.method private error(Ljava/lang/Exception;)V
    .locals 7

    const-string v0, "httpUrlconnet error  setErrorCodeFromException : "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setContentType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "NBSTransactionStateUtil. getContentType occur an error"

    invoke-interface {v3, v4, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    iget-boolean v2, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->hasParseUrlParams:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->processUrlParams(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "NBSTransactionStateUtil.processUrlParams occur an error"

    invoke-interface {v3, v4, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->inspectAndInstrumentResponse(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/net/HttpURLConnection;)V

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setErrorCodeFromExceptionUrl(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v2

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorCode(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    :cond_4
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    instance-of v3, v2, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->getBufferAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_6
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_5
    :goto_3
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    :cond_7
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, ""

    invoke-virtual {v1, v0, v2, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_9
    :goto_5
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result p0

    const/16 p1, 0x1f8

    if-ne p0, p1, :cond_a

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    const-string p1, "Unsatisfiable"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error  504 ,  message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    new-instance p0, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->u(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "NBSHttpsURLConnectionExtension error() has an error : "

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkAmpsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "sw8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "traceparent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "tracestate"

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_4

    invoke-virtual {v3, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v1, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkAmpsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-boolean v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isConnect:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->addTransactionAndErrorData(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result p0

    return p0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectTimeout()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getConnectTimeout()I

    move-result p0

    return p0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->addTransactionAndErrorData(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object p1

    :catch_0
    move-exception p1

    .line 39
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    .line 40
    throw p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object v0
.end method

.method public getDate()J
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result p0

    return p0
.end method

.method public getDoInput()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result p0

    return p0
.end method

.method public getDoOutput()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result p0

    return p0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->a:Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->a:Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getExpiration()J
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    .line 14
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p0

    return-object p0
.end method

.method public getIfModifiedSince()J
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->inspectAndInstrumentResponse(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$1;

    invoke-direct {v2, p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$1;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->addStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result p0

    return p0
.end method

.method public getLastModified()J
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;

    invoke-direct {v2, p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->addStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object p0

    return-object p0
.end method

.method public getReadTimeout()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getReadTimeout()I

    move-result p0

    return p0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setRequestMethod(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    return-object v1
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponseCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " getResponseCode : "

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndTime(J)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->checkResponse()V

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setUrlAndCarrier(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/net/HttpURLConnection;)V

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-object p0
.end method

.method public getURL()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public getUseCaches()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result p0

    return p0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getTransactionState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setRequestMethod(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkAmpsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "sw8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "traceparent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "tracestate"

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_4

    invoke-virtual {v3, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object v1, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkAmpsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->requestHeaderFirstModify:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public usingProxy()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result p0

    return p0
.end method
