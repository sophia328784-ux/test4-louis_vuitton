.class public Lcom/linkplay/bonjour/presenter/LPServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/bonjour/wifi/IWifiCallback;


# static fields
.field private static final APP_BACKGROUND:I = 0x0

.field private static final APP_FOREGROUND:I = 0x1

.field private static final START_FOREGROUND:Ljava/lang/String; = " foreground "

.field private static final START_NORMAL:Ljava/lang/String; = "start "

.field private static final START_WIFI_CONNECTED:Ljava/lang/String; = " wificonnected "

.field private static final TAG:Ljava/lang/String; = "LPServiceManager"

.field private static final TIME_STAMP:I = 0x493e0

.field private static final WIFI_CONNECTED:I = 0x1

.field private static final WIFI_DISCONNECTED:I


# instance fields
.field private APP_STATE:I

.field private WIFI_CONNECT_STATE:I

.field private applicationContext:Landroid/app/Application;

.field private bBrowing:Z

.field private browseService:Lcom/github/druk/dnssd/DNSSDService;

.field private compareTimer:Lcom/linkplay/bonjour/manage/CompareTimer;

.field private datebase:Lcom/linkplay/bonjour/db/LinkplayDatebase;

.field private dnssd:Lcom/github/druk/dnssd/DNSSD;

.field private handler:Landroid/os/Handler;

.field private iLinkPlayService:Lcom/linkplay/bonjour/presenter/LPServiceCallback;

.field private iServiceAdd:Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

.field private iServiceRemove:Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

.field private manufacturer:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field private registerService:Lcom/github/druk/dnssd/DNSSDService;

.field private registerType:Ljava/lang/String;

.field private uuidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;-><init>(Landroid/content/Context;Lcom/linkplay/bonjour/presenter/LPServiceCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/linkplay/bonjour/presenter/LPServiceCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->uuidMap:Ljava/util/Map;

    const-string v0, "1.0.1"

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerType:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->APP_STATE:I

    iput v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->WIFI_CONNECT_STATE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->manufacturer:Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->applicationContext:Landroid/app/Application;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iLinkPlayService:Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "SM-C7100"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/github/druk/dnssd/DNSSDEmbedded;

    const-wide/16 v0, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/github/druk/dnssd/DNSSDEmbedded;-><init>(Landroid/content/Context;J)V

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/github/druk/dnssd/DNSSDBindable;

    invoke-direct {p2, p1}, Lcom/github/druk/dnssd/DNSSDBindable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    :goto_0
    sget-boolean p2, Lcom/linkplay/bonjour/config/LinkplayConfig;->bResolveFromCache:Z

    if-eqz p2, :cond_1

    new-instance p2, Lcom/linkplay/bonjour/db/LinkplayDatebase;

    invoke-direct {p2, p1}, Lcom/linkplay/bonjour/db/LinkplayDatebase;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->datebase:Lcom/linkplay/bonjour/db/LinkplayDatebase;

    :cond_1
    return-void

    :cond_2
    const-string p0, "Context must be your ApplicationContext"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic access$000(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->queryRecord(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/db/LinkplayDatebase;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->datebase:Lcom/linkplay/bonjour/db/LinkplayDatebase;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->startConnection(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/manage/CompareTimer;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->compareTimer:Lcom/linkplay/bonjour/manage/CompareTimer;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iServiceAdd:Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/linkplay/bonjour/presenter/LPServiceManager;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->reconfirmRecord(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->queryFromCache(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->resolve(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->uuidMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/linkplay/bonjour/presenter/LPServiceManager;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->WIFI_CONNECT_STATE:I

    return p0
.end method

.method public static synthetic access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iLinkPlayService:Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iServiceRemove:Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private isValueable(Ljava/util/Date;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private logThreadId()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "(Thread ID:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private queryFromCache(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->datebase:Lcom/linkplay/bonjour/db/LinkplayDatebase;

    invoke-virtual {v0, p2}, Lcom/linkplay/bonjour/db/LinkplayDatebase;->get(Lcom/linkplay/bonjour/model/LinkPlayService;)Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->isValueable(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "service from database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LPServiceManager"

    invoke-static {v2, v1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->uuidMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->startConnection(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void

    :cond_0
    const-string v0, " foreground "

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " wificonnected "

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->compareTimer:Lcom/linkplay/bonjour/manage/CompareTimer;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/linkplay/bonjour/manage/CompareTimer;->remove(Lcom/linkplay/bonjour/model/LinkPlayService;)Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iLinkPlayService:Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceReady(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_2
    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/linkplay/bonjour/manage/ServiceManager;->add(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iLinkPlayService:Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceAdd(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_3
    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iServiceAdd:Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;->LPServiceAdd(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->resolve(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method

.method private declared-synchronized queryRecord(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFlags()I

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrtype()I

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrclass()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIfIndex()I

    move-result v3

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getHostName()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;

    invoke-direct {v7, p0, p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/github/druk/dnssd/DNSSD;->queryRecord(IILjava/lang/String;IILcom/github/druk/dnssd/QueryListener;)Lcom/github/druk/dnssd/DNSSDService;
    :try_end_1
    .catch Lcom/github/druk/dnssd/DNSSDException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p2, "LPServiceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "queryRecord Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized reconfirmRecord(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 7

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFlags()I

    move-result v1

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIfIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrtype()I

    move-result v4

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrclass()I

    move-result v5

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRdata()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/github/druk/dnssd/DNSSD;->reconfirmRecord(IILjava/lang/String;II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private registerReceiver()V
    .locals 2

    sget-boolean v0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bWifiChangeProcess:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/bonjour/wifi/WifiReceiver;

    invoke-direct {v1, p0}, Lcom/linkplay/bonjour/wifi/WifiReceiver;-><init>(Lcom/linkplay/bonjour/wifi/IWifiCallback;)V

    iput-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->receiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->applicationContext:Landroid/app/Application;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerService()V
    .locals 6

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerService:Lcom/github/druk/dnssd/DNSSDService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerService..."

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    invoke-static {}, Lcom/linkplay/bonjour/utils/PhoneUtils;->getPhoneID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerType:Ljava/lang/String;

    new-instance v4, Lcom/linkplay/bonjour/presenter/LPServiceManager$7;

    invoke-direct {v4, p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager$7;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;)V

    const/16 v5, 0x3021

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/github/druk/dnssd/DNSSD;->register(Ljava/lang/String;Ljava/lang/String;ILcom/github/druk/dnssd/RegisterListener;)Lcom/github/druk/dnssd/DNSSDService;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerService:Lcom/github/druk/dnssd/DNSSDService;
    :try_end_0
    .catch Lcom/github/druk/dnssd/DNSSDException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "register DNSSDException:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized resolve(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFlags()I

    move-result v1

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIfIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRegType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getDomain()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;

    invoke-direct {v6, p0, p2, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Lcom/linkplay/bonjour/model/LinkPlayService;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v6}, Lcom/github/druk/dnssd/DNSSD;->resolve(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/druk/dnssd/ResolveListener;)Lcom/github/druk/dnssd/DNSSDService;
    :try_end_1
    .catch Lcom/github/druk/dnssd/DNSSDException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p2, "LPServiceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resolve Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private serviceConfirmByCompare(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->compareTimer:Lcom/linkplay/bonjour/manage/CompareTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->compareTimer:Lcom/linkplay/bonjour/manage/CompareTimer;

    :cond_0
    invoke-static {}, Lcom/linkplay/bonjour/manage/ServiceManager;->getAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/linkplay/bonjour/manage/CompareTimer;

    invoke-direct {v1, v0}, Lcom/linkplay/bonjour/manage/CompareTimer;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->compareTimer:Lcom/linkplay/bonjour/manage/CompareTimer;

    new-instance v0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;

    invoke-direct {v0, p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v1, v0, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private serviceConfirmByConnection(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/linkplay/bonjour/manage/ServiceManager;->getAll()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {v2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getPort()I

    move-result v4

    const-string v5, ":"

    invoke-static {v4, v3, v5}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/linkplay/bonjour/presenter/LinkTestPresenter;

    invoke-virtual {v2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getPort()I

    move-result v6

    new-instance v7, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;

    invoke-direct {v7, p0, v3, p1, v2}, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/linkplay/bonjour/presenter/LinkTestPresenter;-><init>(Ljava/lang/String;ILcom/linkplay/bonjour/presenter/ILinkTest;)V

    invoke-virtual {v4}, Lcom/linkplay/bonjour/presenter/LinkTestPresenter;->connectDevice()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized startBonjour(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerType:Ljava/lang/String;

    new-instance v2, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/druk/dnssd/DNSSD;->browse(Ljava/lang/String;Lcom/github/druk/dnssd/BrowseListener;)Lcom/github/druk/dnssd/DNSSDService;

    move-result-object p1

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;
    :try_end_1
    .catch Lcom/github/druk/dnssd/DNSSDException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "LPServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "browse DNSSDException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private startConnection(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 4

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getPort()I

    move-result v0

    const-string v1, ":"

    invoke-static {v0, p1, v1}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/linkplay/bonjour/presenter/UartPresenter;

    new-instance v3, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;

    invoke-direct {v3, p0, p2, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Lcom/linkplay/bonjour/model/LinkPlayService;Ljava/lang/String;)V

    invoke-direct {v2, p1, v0, v3}, Lcom/linkplay/bonjour/presenter/UartPresenter;-><init>(Ljava/lang/String;ILcom/linkplay/bonjour/presenter/IUartPresenter;)V

    invoke-virtual {v2}, Lcom/linkplay/bonjour/presenter/UartPresenter;->connectDevice()V

    return-void
.end method

.method private declared-synchronized stopBonjour()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;

    invoke-interface {v0}, Lcom/github/druk/dnssd/DNSSDService;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "LPServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "stop Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private unRegister()V
    .locals 1

    sget-boolean v0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bWifiChangeProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->applicationContext:Landroid/app/Application;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unRegisterService()V
    .locals 4

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerService:Lcom/github/druk/dnssd/DNSSDService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unRegisterService..."

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerService:Lcom/github/druk/dnssd/DNSSDService;

    invoke-interface {v0}, Lcom/github/druk/dnssd/DNSSDService;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerService:Lcom/github/druk/dnssd/DNSSDService;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->version:Ljava/lang/String;

    return-object p0
.end method

.method public reconfirmRecord()V
    .locals 5

    invoke-static {}, Lcom/linkplay/bonjour/manage/ServiceManager;->getAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/bonjour/model/LinkPlayService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "reconfirmRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LPServiceManager"

    invoke-static {v4, v3}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->reconfirmRecord(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public resolveAll()V
    .locals 4

    invoke-static {}, Lcom/linkplay/bonjour/manage/ServiceManager;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/bonjour/model/LinkPlayService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resolveAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LPServiceManager"

    invoke-static {v3, v2}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "resolve"

    invoke-direct {p0, v2, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->resolve(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public runningBackGround()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->APP_STATE:I

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runningBackGround..."

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->stopBonjour()V

    sget-boolean p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/linkplay/bonjour/manage/UartManager;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public runningForeGround()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->APP_STATE:I

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runningForeGround..."

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    const-string v1, " foreground "

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->serviceConfirmByConnection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->serviceConfirmByCompare(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->reconfirmRecord()V

    :goto_0
    invoke-direct {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->startBonjour(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public runningWifiConnected()V
    .locals 4

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runningWifiConnected..."

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    const-string v1, " wificonnected "

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->serviceConfirmByConnection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->serviceConfirmByCompare(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->reconfirmRecord()V

    :goto_0
    invoke-direct {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->startBonjour(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public runningWifiDisconnected()V
    .locals 4

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runningWifiDisconnected..."

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->stopBonjour()V

    sget-boolean p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/linkplay/bonjour/manage/UartManager;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLPServiceConfig(Lcom/linkplay/bonjour/config/LinkplayConfig;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/bonjour/config/LinkplayConfig;->isServiceByConnection()Z

    move-result p0

    sput-boolean p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    invoke-virtual {p1}, Lcom/linkplay/bonjour/config/LinkplayConfig;->isWifiChangedListening()Z

    move-result p0

    sput-boolean p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bWifiChangeProcess:Z

    invoke-virtual {p1}, Lcom/linkplay/bonjour/config/LinkplayConfig;->isResolveFromCache()Z

    move-result p0

    sput-boolean p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bResolveFromCache:Z

    return-void
.end method

.method public setLogCallback(Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/linkplay/bonjour/utils/BonjourLog;->setLogCallback(Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;)V

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setServiceAddCallback(Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iServiceAdd:Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

    return-void
.end method

.method public setServiceCallback(Lcom/linkplay/bonjour/presenter/LPServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iLinkPlayService:Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    return-void
.end method

.method public setServiceRemoveCallback(Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->iServiceRemove:Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerType:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start..."

    const-string v2, "LPServiceManager"

    invoke-static {p1, v0, v1, v2}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "start "

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->startBonjour(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->registerReceiver()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->dnssd:Lcom/github/druk/dnssd/DNSSD;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->browseService:Lcom/github/druk/dnssd/DNSSDService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->bBrowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop..."

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->stopBonjour()V

    invoke-static {}, Lcom/linkplay/bonjour/manage/ServiceManager;->clear()V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->uuidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-boolean v0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/bonjour/manage/UartManager;->clear()V

    :cond_1
    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->unRegister()V

    :cond_2
    :goto_0
    return-void
.end method

.method public wifiConnected(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->APP_STATE:I

    const-string v1, ", return..."

    const-string v2, "LPServiceManager"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    const-string v3, "app background Wi-Fi connected to "

    invoke-static {v0, p0, v3, p1, v1}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->WIFI_CONNECT_STATE:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Wi-Fi already connected to "

    invoke-static {v0, p0, v3, p1, v1}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput v3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->WIFI_CONNECT_STATE:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Wi-Fi connected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->runningWifiConnected()V

    return-void
.end method

.method public wifiDisabled()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "wifiDisabled"

    const-string v2, "LPServiceManager"

    invoke-static {v0, p0, v1, v2}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wifiDisconnected()V
    .locals 3

    iget v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->APP_STATE:I

    const-string v1, "LPServiceManager"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    const-string v2, "app background Wi-Fi disconnected, return..."

    invoke-static {v0, p0, v2, v1}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->WIFI_CONNECT_STATE:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Wi-Fi already disconnected, return..."

    invoke-static {v0, p0, v2, v1}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager;->WIFI_CONNECT_STATE:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Wi-Fi disconnected..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->runningWifiDisconnected()V

    return-void
.end method

.method public wifiEnabled()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->logThreadId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "wifiEnabled"

    const-string v2, "LPServiceManager"

    invoke-static {v0, p0, v1, v2}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
