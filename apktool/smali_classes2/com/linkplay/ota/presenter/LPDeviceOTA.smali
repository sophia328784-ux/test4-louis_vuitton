.class public Lcom/linkplay/ota/presenter/LPDeviceOTA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private device:Lcom/linkplay/core/device/LPDevice;

.field listener:Lcom/linkplay/ota/presenter/LPOTAListener;

.field private updateStatusTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->listener:Lcom/linkplay/ota/presenter/LPOTAListener;

    iput-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/ota/presenter/LPDeviceOTA;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->updateStatusTimer:Ljava/util/Timer;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/ota/presenter/LPDeviceOTA;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->updateStatusTimer:Ljava/util/Timer;

    return-void
.end method

.method public static bridge synthetic c(Lcom/linkplay/ota/presenter/LPDeviceOTA;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->getUpdateStatus()V

    return-void
.end method

.method private getUpdateStatus()V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMvRomDownloadStatus"

    invoke-static {v0, v1, v2}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v2, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;

    invoke-direct {v2, p0}, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;-><init>(Lcom/linkplay/ota/presenter/LPDeviceOTA;)V

    invoke-virtual {v0, v1, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->isBuildBackup()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->hasUpdate()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public startUpdate(Lcom/linkplay/ota/presenter/LPOTAListener;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->listener:Lcom/linkplay/ota/presenter/LPOTAListener;

    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMvRemoteUpdateStart"

    invoke-static {v0, v1, v2}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v2, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;-><init>(Lcom/linkplay/ota/presenter/LPDeviceOTA;Lcom/linkplay/ota/presenter/LPOTAListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method
