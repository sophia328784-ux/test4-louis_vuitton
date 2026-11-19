.class public Lcom/networkbench/agent/impl/harvest/HarvestData;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field private static appStartDatas:Lcom/networkbench/agent/impl/data/type/h;

.field public static customEvents:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/networkbench/agent/impl/c/e;

.field private static pageDatas:Lcom/networkbench/agent/impl/data/d/i;

.field private static pluginData:Lcom/networkbench/agent/impl/data/c/c;

.field private static spanDatas:Lcom/networkbench/agent/impl/session/SpanDatas;

.field public static successPageDatas:Lcom/networkbench/agent/impl/data/d/i;


# instance fields
.field private batchDataCommonData:Lcom/networkbench/agent/impl/harvest/a/a/a;

.field public blockInfos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/networkbench/agent/impl/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private harvestTimeDelta:D

.field private nbsEventActions:Lcom/networkbench/agent/impl/data/a/i;

.field private networkPerfMetrics:Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

.field private webviewPerfMetricsV2:Lcom/networkbench/agent/impl/webview/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/data/type/h;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/h;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->appStartDatas:Lcom/networkbench/agent/impl/data/type/h;

    new-instance v0, Lcom/networkbench/agent/impl/data/d/i;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/d/i;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->pageDatas:Lcom/networkbench/agent/impl/data/d/i;

    new-instance v0, Lcom/networkbench/agent/impl/data/d/i;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/d/i;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->successPageDatas:Lcom/networkbench/agent/impl/data/d/i;

    new-instance v0, Lcom/networkbench/agent/impl/data/c/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/c/c;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->pluginData:Lcom/networkbench/agent/impl/data/c/c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->customEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/networkbench/agent/impl/session/SpanDatas;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/SpanDatas;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->spanDatas:Lcom/networkbench/agent/impl/session/SpanDatas;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    new-instance v0, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->networkPerfMetrics:Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    new-instance v0, Lcom/networkbench/agent/impl/webview/b/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/b/f;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->webviewPerfMetricsV2:Lcom/networkbench/agent/impl/webview/b/f;

    new-instance v0, Lcom/networkbench/agent/impl/data/a/i;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/a/i;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->nbsEventActions:Lcom/networkbench/agent/impl/data/a/i;

    new-instance v0, Lcom/networkbench/agent/impl/harvest/a/a/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->batchDataCommonData:Lcom/networkbench/agent/impl/harvest/a/a/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/agent/impl/harvest/a/a/a;->a(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V

    return-void
.end method

.method public static getAppStartDatas()Lcom/networkbench/agent/impl/data/type/h;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->appStartDatas:Lcom/networkbench/agent/impl/data/type/h;

    return-object v0
.end method

.method public static getCustomEvents()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestData;->customEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginData()Lcom/networkbench/agent/impl/data/c/c;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->pluginData:Lcom/networkbench/agent/impl/data/c/c;

    return-object v0
.end method

.method public static getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->spanDatas:Lcom/networkbench/agent/impl/session/SpanDatas;

    return-object v0
.end method


# virtual methods
.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    return-object p0
.end method

.method public getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->networkPerfMetrics:Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object p0

    return-object p0
.end method

.method public getBatchDataCommonData()Lcom/networkbench/agent/impl/harvest/a/a/a;
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->batchDataCommonData:Lcom/networkbench/agent/impl/harvest/a/a/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/a/a/a;->a(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->batchDataCommonData:Lcom/networkbench/agent/impl/harvest/a/a/a;

    return-object p0
.end method

.method public getHttpErrors()Lcom/networkbench/agent/impl/data/g;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->networkPerfMetrics:Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getErrorDatas()Lcom/networkbench/agent/impl/data/g;

    move-result-object p0

    return-object p0
.end method

.method public getJsErrors()Lcom/networkbench/agent/impl/webview/b/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->webviewPerfMetricsV2:Lcom/networkbench/agent/impl/webview/b/f;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/f;->c()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object p0

    return-object p0
.end method

.method public getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->nbsEventActions:Lcom/networkbench/agent/impl/data/a/i;

    return-object p0
.end method

.method public getNetworkPerfMetrics()Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->networkPerfMetrics:Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    return-object p0
.end method

.method public getPageDatas()Lcom/networkbench/agent/impl/data/d/i;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->pageDatas:Lcom/networkbench/agent/impl/data/d/i;

    return-object p0
.end method

.method public getSocketDatas()Lcom/networkbench/agent/impl/socket/q;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->networkPerfMetrics:Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getSocketdatas()Lcom/networkbench/agent/impl/socket/q;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewPerfMetrics()Lcom/networkbench/agent/impl/webview/b/f;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->webviewPerfMetricsV2:Lcom/networkbench/agent/impl/webview/b/f;

    return-object p0
.end method

.method public getWebViewTransactions()Lcom/networkbench/agent/impl/webview/b/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->webviewPerfMetricsV2:Lcom/networkbench/agent/impl/webview/b/f;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/f;->b()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->networkPerfMetrics:Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->reset()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestData;->webviewPerfMetricsV2:Lcom/networkbench/agent/impl/webview/b/f;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/f;->a()V

    return-void
.end method

.method public setPageDatas(Lcom/networkbench/agent/impl/data/d/i;)V
    .locals 0

    sput-object p1, Lcom/networkbench/agent/impl/harvest/HarvestData;->pageDatas:Lcom/networkbench/agent/impl/data/d/i;

    return-void
.end method

.method public setPluginData(Lcom/networkbench/agent/impl/data/c/c;)V
    .locals 0

    sput-object p1, Lcom/networkbench/agent/impl/harvest/HarvestData;->pluginData:Lcom/networkbench/agent/impl/data/c/c;

    return-void
.end method
