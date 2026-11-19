.class public Lcom/networkbench/agent/impl/d/a/a;
.super Lcom/networkbench/agent/impl/d/a/d;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/a/a;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->a:Lcom/networkbench/agent/impl/d/f;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/d/a/d;-><init>(Lcom/networkbench/agent/impl/d/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/d/a/a;->b:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 521
    :try_start_0
    const-string p0, ";"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 522
    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 523
    aget-object v1, p0, v0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 524
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 p0, 0x1

    .line 525
    aget-object p0, v1, p0

    return-object p0

    .line 526
    :cond_0
    aget-object p0, p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    return-object p1
.end method

.method private a(Lcom/networkbench/agent/impl/harvest/ActionData;Ljava/lang/String;)V
    .locals 2

    .line 512
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result p0

    const/16 v0, 0x385

    const-string v1, ""

    if-eq p0, v0, :cond_4

    .line 513
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getIP()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 515
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    .line 517
    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getIP()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 518
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne p0, v0, :cond_3

    .line 519
    sget-object p0, Lcom/networkbench/agent/impl/socket/r;->c:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 520
    :cond_4
    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/harvest/ActionData;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->isOk2DnsFromThread()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 75
    invoke-static {p2}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTotalTime()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTotalTime(I)V

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTime_to_connect()I

    move-result p0

    if-gtz p0, :cond_1

    .line 77
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_connect(I)V

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTime_first_package()I

    move-result p0

    if-gtz p0, :cond_2

    .line 79
    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/socket/o;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_first_package(I)V

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getRemainPkTime()I

    move-result p0

    if-gtz p0, :cond_3

    .line 81
    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/socket/o;->d(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRemainPkTime(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/agent/impl/harvest/ActionData;
    .locals 3

    new-instance v0, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/ActionData;-><init>()V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setSuuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setStatusCode(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorCode(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTotalTime(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setCarrier(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesReceived(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesSent(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setConnectType(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAppData(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAppDataNew(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrlParams(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->q()Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRequestMethod(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->A()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_connect(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_dns(I)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_ssl_handshake(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_first_package(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setCdnVendorName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAppPhase(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTimeToQueueTime(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRemainPkTime(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/a/a/b;->b:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/a/a/b;->c:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setDataTag(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setOkhttp3(Z)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setOk2DnsFromThread(Z)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAddressAllStr(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->K()Lcom/networkbench/agent/impl/k/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setSeriesData(Lcom/networkbench/agent/impl/k/b;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUserActionId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestHeaderParam : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseHeaderParam : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/d/a/a;->c(Lcom/networkbench/agent/impl/harvest/ActionData;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/d/a/a;->a(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->G()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTotalTime()I

    move-result p0

    if-gtz p0, :cond_3

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAllTime()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTotalTime(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->correctDataInfo()V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->I()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRequestBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setResponseBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->K()Lcom/networkbench/agent/impl/k/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setNetworkData(Lcom/networkbench/agent/impl/k/b;)V

    return-object v0
.end method

.method public a(Lcom/networkbench/agent/impl/d/a;)V
    .locals 3

    .line 484
    check-cast p1, Lcom/networkbench/agent/impl/d/b/a;

    .line 485
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/a/a;->a(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/agent/impl/harvest/ActionData;

    move-result-object p0

    .line 486
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    new-instance v0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;-><init>()V

    .line 489
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->add(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    .line 490
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TingyunSDK_network"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addNetwork actionData debuglog has error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-static {v1, v0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 493
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransaction(Lcom/networkbench/agent/impl/harvest/ActionData;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 494
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/ActionData;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 495
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->isOkhttp3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/d/a/a;->a(Lcom/networkbench/agent/impl/harvest/ActionData;Ljava/lang/String;)V

    return-void

    .line 498
    :cond_1
    const-string v0, "setOtherTimeInfo  not  okhttp3 !!! "

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 501
    :cond_2
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    invoke-static {v0}, Lcom/networkbench/agent/impl/socket/r;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_ssl_handshake(I)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 503
    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_ssl_handshake(I)V

    .line 504
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/d/a/a;->a(Lcom/networkbench/agent/impl/harvest/ActionData;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne v1, v2, :cond_4

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/d/a/a;->b(Lcom/networkbench/agent/impl/harvest/ActionData;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :cond_4
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_connect(I)V

    .line 508
    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/socket/o;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_first_package(I)V

    .line 509
    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/socket/o;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRemainPkTime(I)V

    .line 510
    :goto_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->HttpClient:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne v0, v1, :cond_5

    .line 511
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/a/a;->b(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/d/a/a;->b:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 527
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/d/a/a;->b:Z

    return p0
.end method

.method public b(Lcom/networkbench/agent/impl/harvest/ActionData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAddressAllStr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->d(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_connect(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/socket/r;->a()Lcom/networkbench/agent/impl/socket/o;

    move-result-object p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAddressAllStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/socket/o;->e(Ljava/lang/String;)Lcom/networkbench/agent/impl/socket/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/socket/n;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_first_package(I)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/socket/n;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRemainPkTime(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAddressAllStr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createActionFromHttpActionMeasurement  setInfoIfHttpClientLib : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->r(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/networkbench/agent/impl/harvest/ActionData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->isWebViewData()Z

    move-result p0

    return p0
.end method

.method public onHarvestFilter()V
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->getActionDatas()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/v;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/networkbench/agent/impl/util/v;->a(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->setStatusCode(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorCode(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->remove(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    goto :goto_1

    :cond_3
    return-void
.end method
