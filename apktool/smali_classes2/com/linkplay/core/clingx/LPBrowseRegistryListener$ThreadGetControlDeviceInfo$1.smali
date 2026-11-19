.class Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->getControlDeviceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;->this$1:Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "getControlDeviceInfo: "

    :try_start_0
    const-string v1, "LINKPLAY_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;->this$1:Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    iget v0, p1, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failCount:I

    iget p1, p1, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failRetryIndex:I

    if-ltz p1, :cond_1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;->this$1:Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    iget v1, v0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failRetryIndex:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failRetryIndex:I

    :cond_2
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;->this$1:Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->a(Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rookie:getControlDeviceInfo: success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;->this$1:Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    iget-object v1, v1, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->devItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;->this$1:Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->this$0:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->device:Lorg/teleal/cling/model/meta/Device;

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->devItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v0, v1, p0, p1}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->a(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;Ljava/util/Map;)V

    return-void
.end method
