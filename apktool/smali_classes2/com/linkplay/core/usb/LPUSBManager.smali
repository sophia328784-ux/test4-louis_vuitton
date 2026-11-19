.class public Lcom/linkplay/core/usb/LPUSBManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/linkplay/core/usb/LPUSBManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDevice(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/linkplay/core/usb/LPUSBManager;
    .locals 2

    sget-object v0, Lcom/linkplay/core/usb/LPUSBManager;->instance:Lcom/linkplay/core/usb/LPUSBManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/core/usb/LPUSBManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/core/usb/LPUSBManager;->instance:Lcom/linkplay/core/usb/LPUSBManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/core/usb/LPUSBManager;

    invoke-direct {v1}, Lcom/linkplay/core/usb/LPUSBManager;-><init>()V

    sput-object v1, Lcom/linkplay/core/usb/LPUSBManager;->instance:Lcom/linkplay/core/usb/LPUSBManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/linkplay/core/usb/LPUSBManager;->instance:Lcom/linkplay/core/usb/LPUSBManager;

    return-object v0
.end method


# virtual methods
.method public browseUSBWithId(Ljava/lang/String;Lcom/linkplay/core/usb/LPBrowseUSBListener;)V
    .locals 2

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Device is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/usb/LPBrowseUSBListener;->onFail(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linkplay/core/usb/LPUSBManager;->getDevice(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "remote Device is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/usb/LPBrowseUSBListener;->onFail(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/usb/LPUSBManager$1;

    invoke-direct {v1, p0, p2}, Lcom/linkplay/core/usb/LPUSBManager$1;-><init>(Lcom/linkplay/core/usb/LPUSBManager;Lcom/linkplay/core/usb/LPBrowseUSBListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->browseQueueUSBDisk(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lcom/linkplay/core/usb/LPBrowseUSBListener;->onFail(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method
