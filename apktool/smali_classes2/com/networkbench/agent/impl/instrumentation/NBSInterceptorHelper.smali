.class public Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;

.field private static mpaasAction:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ">;"
        }
    .end annotation
.end field

.field private static final operationTypeValueTag:Ljava/lang/String; = "(value="


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->mpaasAction:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->parseMpaasOperationTypeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alipay.client.executerpc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, p1

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error getOperationTypeForUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :cond_1
    :goto_2
    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    return-object p0
.end method

.method private static chekSize(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    return p0

    :cond_0
    sget p0, Lcom/networkbench/agent/impl/util/r;->c:I

    return p0
.end method

.method private static combineUrl(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "className is null || method is null, please check"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static configUrlAndDns(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alipay/mobile/common/rpc/RpcInvokeContext;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->getMetaData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "/"

    invoke-static {p2, p3, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUrl(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_1

    invoke-static {p4, p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->setApmsHeader(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->setDnsInfo(Ljava/lang/String;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "configUrlAndDns setDnsInfo error"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static exceptionHandle(Ljava/lang/annotation/Annotation;I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, p1, v0, v0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->exceptionHandle(Ljava/lang/annotation/Annotation;I[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static exceptionHandle(Ljava/lang/annotation/Annotation;I[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "I[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "exceptionHandler threadId:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->getCurrentThreadId()J

    move-result-wide v2

    long-to-int p2, v2

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->mpaasAction:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "exceptionHandler reset transactionState:"

    invoke-interface {v3, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->mpaasAction:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :cond_0
    sget-object p2, Lcom/networkbench/agent/impl/harvest/HttpLibType;->HttpClient:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v2, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    const/4 p2, 0x0

    invoke-static {v2, p0, p3, p4, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->configUrlAndDns(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V

    invoke-virtual {v2, p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorCode(ILjava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    new-instance p0, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "error in exceptionHandle"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getAvaliableIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    :cond_0
    return-object p0
.end method

.method private static getCurrentThreadId()J
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMetaData()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "mobilegw.url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMetaData NullPointerException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMetaData NameNotFoundException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static parseMpaasOperationTypeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "OperationType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(value="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    invoke-static {v1, v0, p0}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "parse annotation value:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static postHandle(Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V
    .locals 7

    const-string p0, "add nbsActionData in postHandle:"

    const-string v0, "header is "

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->getCurrentThreadId()J

    move-result-wide v1

    long-to-int v1, v1

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->mpaasAction:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->mpaasAction:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    if-eqz p1, :cond_2

    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "postHandle context != null"

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "X-Tingyun-Data"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "X-Tingyun-Tx-Data"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    if-nez v4, :cond_0

    move-object v4, v0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppDataNew(Ljava/lang/String;)V

    if-nez v5, :cond_1

    move-object v5, v0

    :cond_1
    invoke-virtual {v2, v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAppData(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance p0, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_3
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->mpaasAction:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "error in postHandle"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static preHandle(Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, p1, v0, v0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->preHandle(Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvokeContext;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static preHandle(Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvokeContext;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/RpcInvokeContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->HttpClient:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    invoke-static {p2, p0, p3, p4, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->configUrlAndDns(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->mpaasAction:Ljava/util/Map;

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->getCurrentThreadId()J

    move-result-wide p3

    long-to-int p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "error in preHandle"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static setApmsHeader(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;)V
    .locals 9

    const-string v0, "tracestate"

    const-string v1, "traceparent"

    const-string v2, "sw8"

    const-string v3, "HttpRequest setCrossProcessHeader uuid :"

    const-string v4, "isApms is:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->am()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->ar()I

    move-result v6

    invoke-static {v5, v6}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-Tingyun-Id"

    invoke-interface {p0, v6, v5}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getRequestHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    iget-object v6, v6, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRequestHeaderIdValue(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getRequestHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/k/a;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v8

    iget-object v8, v8, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    invoke-static {v6, v7, v8, p2}, Lcom/networkbench/agent/impl/k/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v2, p2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/k/a;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object p2

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/k/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p2}, Lcom/networkbench/agent/impl/k/d;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1, v5}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/k/a;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "X-Tingyun"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->an()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object p2, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->b()Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->at()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->chekSize(I)I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RpcInvokeContext setCrossProcessHeader apms  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RpcInvokeContext add headerValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-interface {p0, v2, p2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUUid(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RpcInvokeContext setCrossProcessHeader  apmsList  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "RpcInvokeContext error "

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static setDnsInfo(Ljava/lang/String;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 3

    const-string v0, "mpass get dns time:"

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;I)V

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result p0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mpass set dns time into transactionState"

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSInterceptorHelper;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "setDnsInfo error"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
