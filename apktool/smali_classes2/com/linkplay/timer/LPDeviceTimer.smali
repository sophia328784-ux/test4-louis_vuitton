.class public Lcom/linkplay/timer/LPDeviceTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field device:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/timer/LPDeviceTimer;->device:Lcom/linkplay/core/device/LPDevice;

    return-void
.end method


# virtual methods
.method public getTimer(Lcom/linkplay/timer/LPTimerListener;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/timer/LPDeviceTimer;->device:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/timer/LPDeviceTimer;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/timer/LPDeviceTimer;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShutdown"

    invoke-static {v0, v1, v2}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v2, Lcom/linkplay/timer/LPDeviceTimer$2;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/timer/LPDeviceTimer$2;-><init>(Lcom/linkplay/timer/LPDeviceTimer;Lcom/linkplay/timer/LPTimerListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public setTimer(ILcom/linkplay/timer/LPTimerListener;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/timer/LPDeviceTimer;->device:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/timer/LPDeviceTimer;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/timer/LPDeviceTimer;->device:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestPrefix(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setShutdown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v1, Lcom/linkplay/timer/LPDeviceTimer$1;

    invoke-direct {v1, p0, p2}, Lcom/linkplay/timer/LPDeviceTimer$1;-><init>(Lcom/linkplay/timer/LPDeviceTimer;Lcom/linkplay/timer/LPTimerListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method
