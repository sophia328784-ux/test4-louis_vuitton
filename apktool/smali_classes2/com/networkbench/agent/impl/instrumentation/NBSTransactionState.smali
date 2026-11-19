.class public Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSTransactionState"

.field public static final URLLIMIT:I = 0x400

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field a:Ljava/lang/String;

.field private addressAllStr:Ljava/lang/String;

.field private allGetRequestParams:Ljava/lang/String;

.field private apmsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appData:Ljava/lang/String;

.field private appDataNew:Ljava/lang/String;

.field private appPhase:I

.field private attachedUnit:Ljava/util/UUID;

.field private bytesReceived:J

.field private bytesSent:J

.field private carrier:Ljava/lang/String;

.field private cdnVendorName:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private dataTag:Ljava/util/Map;

.field private dnsElapse:I

.field private endTime:J

.field private errorCode:I

.field private errorData:Lcom/networkbench/agent/impl/a/a/a;

.field private exception:Ljava/lang/String;

.field private firstPacketPeriod:I

.field private formattedUrlParams:Ljava/lang/String;

.field private hasInvokeSetTrace:Z

.field public volatile hasParseUrlParams:Z

.field private httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

.field private ipAddress:Ljava/lang/String;

.field public isConnect:Z

.field private isNetworkErrorExist:Z

.field private isOk2DnsFromThread:Z

.field private isOkhttp3:Z

.field public remainPackage:I

.field private requestBody:Ljava/lang/String;

.field private requestHeaderIdValue:Ljava/lang/String;

.field public requestHeaderParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field private responseBody:Ljava/lang/String;

.field public responseHeaderParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seriesData:Lcom/networkbench/agent/impl/k/b;

.field private sslHandShakeTime:I

.field private startTime:J

.field private state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

.field private statusCode:I

.field private tcpHandShakeTime:I

.field private traceMetrics:Lcom/networkbench/agent/impl/asyncaction/e;

.field private transactionData:Lcom/networkbench/agent/impl/a/a/b;

.field private url:Ljava/lang/String;

.field private urlBuilder:Lcom/networkbench/agent/impl/socket/s;

.field private urlParams:Ljava/lang/String;

.field private userActionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->hasParseUrlParams:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    iput v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appData:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->carrier:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->contentType:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isNetworkErrorExist:Z

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderIdValue:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isConnect:Z

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->exception:Ljava/lang/String;

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->formattedUrlParams:Ljava/lang/String;

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlParams:Ljava/lang/String;

    new-instance v2, Lcom/networkbench/agent/impl/socket/s;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/socket/s;-><init>()V

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlBuilder:Lcom/networkbench/agent/impl/socket/s;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOk2DnsFromThread:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->hasInvokeSetTrace:Z

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->userActionId:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->a:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOkhttp3:Z

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dataTag:Ljava/util/Map;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->initMembers()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setTraces()V

    :cond_0
    sget-object p1, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/f;->a()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appPhase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error init NBSTransactionState e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method private checkAppDataNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const-string v1, "checkAppDataNew apmsIssue"

    const-string v2, "checkAppDataNew  "

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->a()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkSize(I)I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppDataNew   headerValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkRepetition(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppDataNew checkRepetition  headerValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAppDataNew checkRepetition!  headerValue   res"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->extractedSw8_w3c(Lorg/json/JSONObject;)V

    const-string p0, "apms"

    invoke-virtual {p1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setAppDataNew JSONException has error "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    return-object v0
.end method

.method private checkAppPhase(Lcom/networkbench/agent/impl/a/a/b;)V
    .locals 1

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appPhase:I

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/f;->a()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/a/a/b;->i(I)V

    :cond_0
    return-void
.end method

.method private checkHeader(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return p0
.end method

.method private checkRepetition(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private checkSize(I)I
    .locals 0

    const/16 p0, 0xa

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    sget p0, Lcom/networkbench/agent/impl/util/r;->c:I

    return p0
.end method

.method private checkTraceTime(Lcom/networkbench/agent/impl/asyncaction/r;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/r;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1b58

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private extractedSw8_w3c(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    const-string v1, "sw8"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    const-string v3, "traceparent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    const-string v4, "tracestate"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method private getTrimmedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x3f

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initMembers()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->startTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    iput v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    const-string v1, "Other"

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->carrier:Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    sget-object v1, Lcom/networkbench/agent/impl/socket/a/b;->a:Lcom/networkbench/agent/impl/socket/a/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/socket/a/b;->a()I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    sget-object v1, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    iput v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dnsElapse:I

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    new-instance v1, Lcom/networkbench/agent/impl/a/a/a;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/a/a/a;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorData:Lcom/networkbench/agent/impl/a/a/a;

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestBody:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseBody:Ljava/lang/String;

    return-void
.end method

.method private isEqualsToNBSRequestHeader(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private isWebViewData()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->Webview:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->WebviewAJAX:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->WebViewResource:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private setInfoIfHttpClientLib(Lcom/networkbench/agent/impl/a/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/a/a/b;->d(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/socket/o;->e(Ljava/lang/String;)Lcom/networkbench/agent/impl/socket/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/n;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/a/a/b;->e(I)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/n;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/a/a/b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/a/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private setInfoIfOkhttpLib(Lcom/networkbench/agent/impl/a/a/b;Ljava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOk2DnsFromThread:Z

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->C()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/a/a/b;->h(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->m()I

    move-result p0

    if-gtz p0, :cond_1

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/a/a/b;->d(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->o()I

    move-result p0

    if-gtz p0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/socket/o;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/a/a/b;->e(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->b()I

    move-result p0

    if-gtz p0, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/socket/o;->d(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/a/a/b;->a(I)V

    :cond_3
    return-void
.end method

.method private toTransactionData()Lcom/networkbench/agent/impl/a/a/b;
    .locals 38

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "toTransactionData() called on incomplete TransactionState"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Attempted to convert a TransactionState instance with no URL into a TransactionData"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHeaderParam : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseHeaderParam : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firstpktime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->remainPackage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this.statusCode :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->u(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this.errorCode :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->u(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    if-nez v1, :cond_2

    new-instance v2, Lcom/networkbench/agent/impl/a/a/b;

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getTrimmedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->carrier:Ljava/lang/String;

    iget-wide v5, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->endTime:J

    iget-wide v7, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->startTime:J

    sub-long v9, v5, v7

    long-to-int v1, v9

    move-wide/from16 v34, v5

    iget v6, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    move-wide/from16 v31, v7

    iget v7, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    iget-wide v8, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesSent:J

    iget-wide v10, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    iget-object v12, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appData:Ljava/lang/String;

    iget-object v13, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->formattedUrlParams:Ljava/lang/String;

    iget-object v14, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlParams:Ljava/lang/String;

    iget-object v15, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    iget-object v5, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move/from16 v16, v1

    iget v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dnsElapse:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    move/from16 v19, v1

    iget v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    move/from16 v20, v1

    iget v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->cdnVendorName:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->contentType:Ljava/lang/String;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appPhase:I

    move/from16 v24, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->userActionId:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->allGetRequestParams:Ljava/lang/String;

    move-object/from16 v26, v1

    iget v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->remainPackage:I

    move/from16 v27, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderIdValue:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestBody:Ljava/lang/String;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseBody:Ljava/lang/String;

    move/from16 v37, v16

    move-object/from16 v16, v5

    move/from16 v5, v37

    move-object/from16 v37, v1

    invoke-direct/range {v2 .. v37}, Lcom/networkbench/agent/impl/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/RequestMethodType;Lcom/networkbench/agent/impl/harvest/HttpLibType;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    :cond_2
    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget-object v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dataTag:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/a/a/b;->a(Ljava/util/Map;)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkAppPhase(Lcom/networkbench/agent/impl/a/a/b;)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget-object v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/a/a/b;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOk2DnsFromThread:Z

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/a/a/b;->b(Z)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOkhttp3:Z

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/a/a/b;->a(Z)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget-object v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/a/a/b;->a(Lcom/networkbench/agent/impl/k/b;)V

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isWebViewData()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setOtherTimeInfo(Lcom/networkbench/agent/impl/a/a/b;)V

    :cond_3
    iget-object v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    return-object v0
.end method


# virtual methods
.method public checkAmpsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkHeader(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public checkTransparentHeader(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/j;->a()Lcom/networkbench/agent/impl/util/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/j;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public end()Lcom/networkbench/agent/impl/a/a/b;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndState()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toTransactionData()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public endOkTcpData()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/a/a/b;->d(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/a/a/b;->c(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/a/a/b;->e(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->remainPackage:I

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/a/a/b;->a(I)V

    :cond_0
    return-void
.end method

.method public endWithEndTimeStamp(J)Lcom/networkbench/agent/impl/a/a/b;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndState()V

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndTime(J)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toTransactionData()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public getAllGetRequestParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->allGetRequestParams:Ljava/lang/String;

    return-object p0
.end method

.method public getApmsList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->apmsList:Ljava/util/Map;

    return-object p0
.end method

.method public getAppDataNew()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    return-object p0
.end method

.method public getAppPhase()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appPhase:I

    return p0
.end method

.method public getAttachedUnit()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->attachedUnit:Ljava/util/UUID;

    return-object p0
.end method

.method public getBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    return-wide v0
.end method

.method public getCdnVendorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->cdnVendorName:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigIpAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->HttpClient:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_3
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDnsElapse()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dnsElapse:I

    return p0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->endTime:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    return p0
.end method

.method public getErrorData()Lcom/networkbench/agent/impl/a/a/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorData:Lcom/networkbench/agent/impl/a/a/a;

    return-object p0
.end method

.method public getException()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->exception:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstPacketPeriod()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    return p0
.end method

.method public getFormattedUrlParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->formattedUrlParams:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    return-object p0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestMethodType()Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0
.end method

.method public getSeriesData()Lcom/networkbench/agent/impl/k/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    return-object p0
.end method

.method public getSslHandShakeTime()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    return p0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->startTime:J

    return-wide v0
.end method

.method public getState()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    return p0
.end method

.method public getTcpHandShakeTime()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    return p0
.end method

.method public getTransactionData()Lcom/networkbench/agent/impl/a/a/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlParams:Ljava/lang/String;

    return-object p0
.end method

.method public isComplete()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isError()Z
    .locals 1

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    const/16 v0, 0x190

    if-ge p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isNetworkExist()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isNetworkErrorExist:Z

    return p0
.end method

.method public isOkhttp3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOkhttp3:Z

    return p0
.end method

.method public isSent()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public networkForActionTrace(J)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    :try_start_0
    const-string v1, "offset"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->startTime:J

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "url"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "param"

    iget-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->formattedUrlParams:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v1, ""

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->formattedUrlParams:Ljava/lang/String;

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "method"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "hc"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "ec"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "du"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->endTime:J

    iget-wide v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->startTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "dns"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dnsElapse:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "tcp"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "ssl"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "fp"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "rp"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->remainPackage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "lq"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "bs"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesSent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "br"

    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "tx"

    iget-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appData:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appData:Ljava/lang/String;

    invoke-direct {p2, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p1, "txn"

    iget-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, p1, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_3
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "completeSegmentParams has an error "

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public networkForTrace()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 11

    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    :try_start_0
    const-string v0, "host"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    :try_start_1
    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "url"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "httpStatus"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "errorCode"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "bytesSent"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v5, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesSent:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "bytesReceived"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v5, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "dns"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dnsElapse:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "conn"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "fp"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "ssl"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "txData"

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appData:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appData:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "txDataNew"

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v0, "contentType"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->contentType:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-direct {v2, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v5, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v6, "requestHeader"

    iget-object v7, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/networkbench/agent/impl/harvest/HttpLibType;Z)V

    const-string v6, "responseHeader"

    iget-object v7, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/networkbench/agent/impl/util/v;->b(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/networkbench/agent/impl/harvest/HttpLibType;Z)V

    const-string v6, "requestBody"

    iget-object v7, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->contentType:Ljava/lang/String;

    iget-object v9, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestBody:Ljava/lang/String;

    iget-object v10, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-static/range {v5 .. v10}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    const-string v6, "responseBody"

    iget-object v7, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->contentType:Ljava/lang/String;

    iget-object v9, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseBody:Ljava/lang/String;

    iget-object v10, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-static/range {v5 .. v10}, Lcom/networkbench/agent/impl/util/v;->b(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    const-string p0, "httpData"

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v5}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "completeSegmentParams has an error "

    invoke-interface {v0, v2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public newend()Lcom/networkbench/agent/impl/a/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toTransactionData()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public resetStartTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->startTime:J

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlBuilder:Lcom/networkbench/agent/impl/socket/s;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/socket/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setAddressAllStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    return-void
.end method

.method public setAllGetRequestParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->allGetRequestParams:Ljava/lang/String;

    return-void
.end method

.method public setAppData(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appData:Ljava/lang/String;

    const-string p0, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAppData(...) called on TransactionState in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setAppDataNew(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkAppDataNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->appDataNew:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAppDataNew(...) called on TransactionState in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setAttachedTrace(Lcom/networkbench/agent/impl/asyncaction/e;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->traceMetrics:Lcom/networkbench/agent/impl/asyncaction/e;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->attachedUnit:Ljava/util/UUID;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    sget-object p2, Lcom/networkbench/agent/impl/data/type/r;->p:Lcom/networkbench/agent/impl/data/type/r;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->traceMetrics:Lcom/networkbench/agent/impl/asyncaction/e;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/e;->b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    move-result-object p1

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->userActionId:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "set network userActionId attach operate value:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->userActionId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NBSTransactionState"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBytesReceived(J)V
    .locals 1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "bytes received"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setBytesReceivedContent(J)V
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "bytes received"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBytesSent(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesSent:J

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-void

    :cond_0
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setBytesSent(...) called on TransactionState in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setBytesSentAfterComplete(J)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "After Complete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes sent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesSent:J

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCdnVendorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->cdnVendorName:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDnsElapse(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dnsElapse:I

    return-void
.end method

.method public setEndState()V
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndTime(J)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->notifyObserverAddNetworkToSegment(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/r;->i(J)V

    :cond_0
    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->endTime:J

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->traceMetrics:Lcom/networkbench/agent/impl/asyncaction/e;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->attachedUnit:Ljava/util/UUID;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/asyncaction/e;->a(Ljava/util/UUID;)V

    :cond_0
    return-void
.end method

.method public setErrorCode(ILjava/lang/String;)V
    .locals 1

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->exception:Ljava/lang/String;

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "errorCode:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorInfo:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->exception:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorData:Lcom/networkbench/agent/impl/a/a/a;

    iput-object p2, v0, Lcom/networkbench/agent/impl/a/a/a;->b:Ljava/util/Map;

    iget-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->HttpClient:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne p2, v1, :cond_1

    :cond_0
    iget p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    const/16 v1, 0x258

    if-gt p2, v1, :cond_1

    const/16 v1, 0x190

    if-lt p2, v1, :cond_1

    const-string p1, ""

    iput-object p1, v0, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/networkbench/agent/impl/a/a/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    iput-object p3, v0, Lcom/networkbench/agent/impl/a/a/a;->c:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isNetworkErrorExist:Z

    return-void
.end method

.method public setFirstPacketPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    return-void
.end method

.method public setFormattedUrlParams(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlParams:Ljava/lang/String;

    const-string v1, "&"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlParams:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v2, v1, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v1, v2, p1}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x400

    if-le v0, v3, :cond_3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->formattedUrlParams:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->formattedUrlParams:Ljava/lang/String;

    :goto_1
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->hasParseUrlParams:Z

    return-void
.end method

.method public setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setNBSRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isEqualsToNBSRequestHeader(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRequestHeaderIdValue(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setting value error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public setOk2DnsFromThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOk2DnsFromThread:Z

    return-void
.end method

.method public setOtherTimeInfo(Lcom/networkbench/agent/impl/a/a/b;)V
    .locals 8

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    const/16 v2, 0x385

    const-string v3, ""

    if-eq v1, v2, :cond_a

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->A()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/networkbench/agent/impl/socket/r;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/socket/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/socket/r$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/socket/r$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_5

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/socket/r$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/socket/r$a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    if-eqz v2, :cond_8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_8
    new-instance v2, Lcom/networkbench/agent/impl/socket/r$a;

    long-to-int v3, v6

    iget-object v4, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/socket/r$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/a/a/b;->c(Ljava/lang/String;)V

    return-void

    :cond_a
    iput-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    :cond_b
    :goto_2
    return-void
.end method

.method public setPort(I)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlBuilder:Lcom/networkbench/agent/impl/socket/s;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/socket/s;->a(I)V

    return-void
.end method

.method public setRemainPackage(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->remainPackage:I

    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestBody:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeaderIdValue(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRequestHeaderIdValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderIdValue:Ljava/lang/String;

    return-void
.end method

.method public setRequestMethod(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseBody:Ljava/lang/String;

    return-void
.end method

.method public setSslHandShakeTime(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    return-void
.end method

.method public setState(I)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    return-void

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;->c:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    :cond_2
    return-void
.end method

.method public setStatusCode(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isConnect:Z

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set status code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setStatusCode(...) called on TransactionState in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    if-nez p1, :cond_2

    const/4 p1, -0x1

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    :cond_2
    return-void
.end method

.method public setTcpHandShakeTime(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    return-void
.end method

.method public setTraces()V
    .locals 10

    const-string v0, "NBSTransactionState setTraces seriesData:"

    const-string v1, "custom eventAction  actionId:"

    const-string v2, "NBSTransactionState setTraces traceEngineManager "

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->hasInvokeSetTrace:Z

    if-nez v3, :cond_8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const-string v5, ""

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->NETWORK:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result v3

    sget-object v4, Lcom/networkbench/agent/impl/data/type/r;->k:Lcom/networkbench/agent/impl/data/type/r;

    invoke-static {v5, v3, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethod(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)V

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/q;->a()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/asyncaction/q;->c()Lcom/networkbench/agent/impl/instrumentation/MetricEventListener;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/asyncaction/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v4, v3

    :goto_0
    :try_start_1
    new-instance v6, Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/agent/impl/k/b;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    if-eqz v4, :cond_3

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->checkTraceTime(Lcom/networkbench/agent/impl/asyncaction/r;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/asyncaction/r;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/asyncaction/r;->h()Lcom/networkbench/agent/impl/data/a/a;

    move-result-object v3

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/asyncaction/r;->d()Lcom/networkbench/agent/impl/asyncaction/q;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/asyncaction/q;->b()Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/a/a;->h()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/networkbench/agent/impl/k/b;->e:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/k/c;->a()Lcom/networkbench/agent/impl/data/a/c;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/networkbench/agent/impl/k/c;->a()Lcom/networkbench/agent/impl/data/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a/c;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x1770

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5

    iget-object v4, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a/c;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "NBSTransactionState setTraces traceEngineManager is null"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/a/a;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/networkbench/agent/impl/data/d/b;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    if-eqz v1, :cond_7

    :try_start_2
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/c;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/networkbench/agent/impl/k/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/c;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    goto :goto_3

    :cond_7
    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->a(Lcom/networkbench/agent/impl/k/b;)V

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/k/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    new-instance v0, Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/k/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->seriesData:Lcom/networkbench/agent/impl/k/b;

    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->hasInvokeSetTrace:Z

    :cond_8
    return-void
.end method

.method public setTransactionData(Lcom/networkbench/agent/impl/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->transactionData:Lcom/networkbench/agent/impl/a/a/b;

    return-void
.end method

.method public setUUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->a:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    return-void

    :cond_2
    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUrl(...) called on TransactionState in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setUrlParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->urlParams:Ljava/lang/String;

    return-void
.end method

.method public setokhttp3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOkhttp3:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSTransactionState{hasParseUrlParams="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->hasParseUrlParams:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesSent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->bytesReceived:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->state:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressAllStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->addressAllStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', requestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpLibType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOk2DnsFromThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOk2DnsFromThread:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dnsElapse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->dnsElapse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ipAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', tcpHandShakeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->tcpHandShakeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstPacketPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->firstPacketPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->remainPackage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sslHandShakeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->sslHandShakeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isOkhttp3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOkhttp3:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", thread Name = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
