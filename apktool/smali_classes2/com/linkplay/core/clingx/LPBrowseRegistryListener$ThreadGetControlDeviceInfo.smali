.class Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/core/clingx/LPBrowseRegistryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadGetControlDeviceInfo"
.end annotation


# instance fields
.field devItem:Lcom/linkplay/core/device/LPDevice;

.field device:Lorg/teleal/cling/model/meta/Device;

.field failCount:I

.field failRetryIndex:I

.field startFailTimer:J

.field private stop:Z

.field final synthetic this$0:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;)V
    .locals 2

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->this$0:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->stop:Z

    iput p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failCount:I

    iput p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failRetryIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->startFailTimer:J

    iput-object p2, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->device:Lorg/teleal/cling/model/meta/Device;

    iput-object p3, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->devItem:Lcom/linkplay/core/device/LPDevice;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->getControlDeviceInfo()V

    return-void
.end method

.method private getControlDeviceInfo()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->stop:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getControlDeviceInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->devItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->device:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;

    invoke-direct {v2, p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo$1;-><init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getControlDeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "rookie:getControlDeviceInfo: IP="

    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x118

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    const-string v2, "LINKPLAY_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->devItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " :sleepTime="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->getControlDeviceInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "getControlDeviceInfo:stop"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->stop:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->failCount:I

    return-void
.end method
