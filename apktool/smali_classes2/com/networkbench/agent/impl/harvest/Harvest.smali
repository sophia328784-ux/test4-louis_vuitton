.class public Lcom/networkbench/agent/impl/harvest/Harvest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/networkbench/agent/impl/harvest/Harvest;

.field private static final activityTraceCache:Lcom/networkbench/agent/impl/harvest/HarvestableCache;

.field public static volatile currentActivity:Ljava/lang/String;

.field private static final log:Lcom/networkbench/agent/impl/c/e;

.field public static mSessionInfo:Lcom/networkbench/agent/impl/n/h;

.field private static final unregisteredLifecycleListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionAndInteractions:Lcom/networkbench/agent/impl/crash/b/b;

.field protected b:Lcom/networkbench/agent/impl/harvest/HarvestData;

.field private configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

.field public disable:Z

.field private harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

.field private harvestTimer:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

.field private harvester:Lcom/networkbench/agent/impl/harvest/Harvester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestableCache;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/HarvestableCache;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->activityTraceCache:Lcom/networkbench/agent/impl/harvest/HarvestableCache;

    new-instance v0, Lcom/networkbench/agent/impl/n/h;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/n/h;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    const-string v0, ""

    sput-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->currentActivity:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->disable:Z

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    new-instance v0, Lcom/networkbench/agent/impl/crash/b/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/b/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->actionAndInteractions:Lcom/networkbench/agent/impl/crash/b/b;

    return-void
.end method

.method public static declared-synchronized addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "harvester add actionAndInteraction "

    const-class v1, Lcom/networkbench/agent/impl/harvest/Harvest;

    monitor-enter v1

    .line 136
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->aa()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_0

    .line 137
    monitor-exit v1

    return-void

    .line 138
    :cond_0
    :try_start_1
    new-instance v2, Lcom/networkbench/agent/impl/crash/b/a;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/networkbench/agent/impl/crash/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->actionAndInteractions:Lcom/networkbench/agent/impl/crash/b/b;

    if-eqz p0, :cond_1

    .line 140
    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/crash/b/b;->a(Lcom/networkbench/agent/impl/crash/b/a;)V

    .line 141
    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized addActionAndInteraction(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "Breadcrumb: "

    const-string v1, " leaveBreadcrumb \u8d85\u8fc7\u9650\u5b9a\u8d85\u77ed, \u622a\u53d6\u524d100\u5355\u4f4d  : "

    const-class v2, Lcom/networkbench/agent/impl/harvest/Harvest;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " leaveBreadcrumb is Empty ! "

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v4

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x6e

    if-le v3, v5, :cond_2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->R()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_4

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Breadcrumb was Add failed  because the MobileAgentApp not init"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    return v4

    :cond_4
    :try_start_2
    new-instance v1, Lcom/networkbench/agent/impl/crash/b/a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v3, v3}, Lcom/networkbench/agent/impl/crash/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    iget-object v3, v3, Lcom/networkbench/agent/impl/harvest/Harvest;->actionAndInteractions:Lcom/networkbench/agent/impl/crash/b/b;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Lcom/networkbench/agent/impl/crash/b/b;->a(Lcom/networkbench/agent/impl/crash/b/a;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was added to the breadcrumb list"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Harvest: Argument to addHarvestListener cannot be null."

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUnregisteredListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addUnregisteredListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    return-void
.end method

.method public static addHttpError(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorInfo(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/networkbench/agent/impl/plugin/f/h;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/f;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f/c;

    invoke-direct {v0, p0, p1}, Lcom/networkbench/agent/impl/plugin/f/c;-><init>(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpErrorForScene(Lcom/networkbench/agent/impl/data/f;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransaction(Lcom/networkbench/agent/impl/harvest/ActionData;)I

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;-><init>()V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->add(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getErrorDatas()Lcom/networkbench/agent/impl/data/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/g;->a(Lcom/networkbench/agent/impl/data/f;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TingyunSDK_network"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addNetwork action debuglog has error :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addHttpErrorForScene(Lcom/networkbench/agent/impl/data/f;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->shouldCollectNetworkErrors()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getHttpErrors()Lcom/networkbench/agent/impl/data/g;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireHttpErrors()V

    :cond_3
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getErrs()I

    move-result v0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/g;->c()I

    move-result v2

    if-lt v2, v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/data/g;->a(I)V

    :cond_4
    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/data/g;->a(Lcom/networkbench/agent/impl/data/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method

.method public static addHttpTransaction(Lcom/networkbench/agent/impl/harvest/ActionData;)I
    .locals 6

    const-string v0, "addHttpTransaction  SceneRegisterObserver.after_net : "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    sget-object v2, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcTotalTime()I

    move-result v2

    sget v3, Lcom/networkbench/agent/impl/util/r;->a:I

    if-lt v2, v3, :cond_3

    return v1

    :cond_3
    sget-object v2, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v2

    sget-object v3, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireHttpTransactions()V

    sget-object v3, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActions()I

    move-result v3

    sget-boolean v4, Lcom/networkbench/agent/impl/plugin/f/h;->a:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v2, Lcom/networkbench/agent/impl/plugin/f/d;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/plugin/f/d;-><init>(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    invoke-static {v2}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->count()I

    move-result v4

    if-lt v4, v3, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->add(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/networkbench/agent/impl/plugin/f/h;->a:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method public static addHttpTransactionForScene(Lcom/networkbench/agent/impl/harvest/ActionData;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActions()I

    move-result v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->count()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->add(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    :cond_1
    return-void
.end method

.method public static addJsError(Lcom/networkbench/agent/impl/webview/b/a;)V
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getWebViewPerfMetrics()Lcom/networkbench/agent/impl/webview/b/f;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActions()I

    move-result v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/b/f;->b()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/webview/b/b;->b()I

    move-result v2

    if-lt v2, v1, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Maximum number of webviewTransaction ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") reached. WebViewTransaction dropped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add JsError begin: jserror:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/b/f;->c()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/webview/b/b;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    return-void
.end method

.method public static addPagePerfData(Lcom/networkbench/agent/impl/webview/b/d;)V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isWebView_enabled()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/d;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getWebViewPerfMetrics()Lcom/networkbench/agent/impl/webview/b/f;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActions()I

    move-result v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/b/f;->b()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/webview/b/b;->b()I

    move-result v2

    if-lt v2, v1, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Maximum number of webviewTransaction ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") reached. WebViewTransaction dropped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "addPagePerfData begin"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/b/f;->b()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/webview/b/b;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    return-void
.end method

.method public static addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->W()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSocketDatas()Lcom/networkbench/agent/impl/socket/q;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActions()I

    move-result v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/q;->c()I

    move-result v2

    if-lt v2, v1, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Maximum number of transactions ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") reached. socketdata dropped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/socket/p;->m()I

    move-result v1

    const v2, 0x249f0

    if-le v1, v2, :cond_3

    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "timeelapsed is over 150000 "

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/socket/q;->a(Lcom/networkbench/agent/impl/socket/p;)V

    return-void
.end method

.method private static addUnregisteredListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getActionFailureThreshold()I
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActionFailureThreshold()I

    move-result v0

    return v0
.end method

.method public static getActivityTraceCacheSize()I
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->activityTraceCache:Lcom/networkbench/agent/impl/harvest/HarvestableCache;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestableCache;->getSize()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    return-object v0
.end method

.method public static harvestNow()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestTimer()Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->tickNow()V

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/n/h;->b(I)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    invoke-static {v0}, Lcom/networkbench/agent/impl/n/c;->a(Lcom/networkbench/agent/impl/n/h;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/h;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "harvestNow has a Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static initialize()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->initializeHarvester()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->registerUnregisteredListeners()V

    return-void
.end method

.method public static isAnr_enabled()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->X()Z

    move-result v0

    return v0
.end method

.method public static isCdn_enabled()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->Z()Z

    move-result v0

    return v0
.end method

.method public static isCrash_enabled()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ab()Z

    move-result v0

    return v0
.end method

.method public static isDisabled()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->isDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static isHttp_network_enabled()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInitialized()Z
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static isUI_enabled()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    return v0
.end method

.method private static isUnregisteredListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUser_action_enabled()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->Y()Z

    move-result v0

    return v0
.end method

.method public static isWebView_enabled()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ad()Z

    move-result v0

    return v0
.end method

.method private static registerUnregisteredListeners()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-static {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public static removeHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Harvest: Argument to removeHarvestListener cannot be null."

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUnregisteredListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->removeUnregisteredListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->removeHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    return-void
.end method

.method private static removeUnregisteredListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setHarvestConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Cannot configure Harvester before initialization."

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->setConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public static setInstance(Lcom/networkbench/agent/impl/harvest/Harvest;)V
    .locals 0

    sput-object p0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    return-void
.end method

.method public static setPeriod(J)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestTimer()Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->setPeriod(J)V

    return-void
.end method

.method public static shouldCollectActivityTraces()Z
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiTraces()I

    move-result v0

    if-lez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static shutdown()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->stop()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->shutdownHarvester()V

    return-void
.end method

.method public static start()V
    .locals 5

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestTimer()Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->start()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/n/h;->a(I)V

    return-void
.end method

.method public static stop()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestTimer()Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestTimer()Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->stop()V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "instance == null || instance.getHarvestTimer() == null"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createHarvester()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->b:Lcom/networkbench/agent/impl/harvest/HarvestData;

    if-nez v0, :cond_1

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->b:Lcom/networkbench/agent/impl/harvest/HarvestData;

    :cond_1
    new-instance v0, Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/Harvester;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->setHarvestConnection(Lcom/networkbench/agent/impl/harvest/HarvestConnection;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->b:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->setHarvestData(Lcom/networkbench/agent/impl/harvest/HarvestData;)V

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;-><init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestTimer:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    return-void
.end method

.method public declared-synchronized disableSdk(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->disable()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/agent/impl/util/af;->e(J)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/util/r;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    return-object p0
.end method

.method public getHarvestConnection()Lcom/networkbench/agent/impl/harvest/HarvestConnection;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    return-object p0
.end method

.method public getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->b:Lcom/networkbench/agent/impl/harvest/HarvestData;

    return-object p0
.end method

.method public getHarvestTimer()Lcom/networkbench/agent/impl/harvest/HarvestTimer;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestTimer:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    return-object p0
.end method

.method public getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    return-object p0
.end method

.method public initCrashActions()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->actionAndInteractions:Lcom/networkbench/agent/impl/crash/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/crash/b/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/b/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->actionAndInteractions:Lcom/networkbench/agent/impl/crash/b/b;

    :cond_0
    return-void
.end method

.method public initializeHarvester()V
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->createHarvester()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvest;->a:Lcom/networkbench/agent/impl/harvest/Harvest;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->setConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public setConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->reconfigure(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestTimer:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->setPeriod(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/util/r;->a(J)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isPluginSwitch()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/r;->l(Z)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->setConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public setHarvestData(Lcom/networkbench/agent/impl/harvest/HarvestData;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->b:Lcom/networkbench/agent/impl/harvest/HarvestData;

    return-void
.end method

.method public setHarvester(Lcom/networkbench/agent/impl/harvest/Harvester;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    return-void
.end method

.method public shouldCollectNetworkErrors()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isEnableErrTrace()Z

    move-result p0

    return p0
.end method

.method public shutdownHarvester()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestTimer:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->harvester:Lcom/networkbench/agent/impl/harvest/Harvester;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvest;->b:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->reset()V

    return-void
.end method
