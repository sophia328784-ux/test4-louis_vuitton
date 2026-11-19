.class public Lcom/linkplay/core/clingx/LPBrowseRegistryListener;
.super Lorg/teleal/cling/registry/DefaultRegistryListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;
    }
.end annotation


# instance fields
.field final DevDescriptor:Ljava/lang/String;

.field private infoTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private managerObserver:Lcom/linkplay/core/app/LPDeviceManagerObserver;

.field private final sourceLock:Ljava/lang/Object;

.field private upnplock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/registry/DefaultRegistryListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->upnplock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->sourceLock:Ljava/lang/Object;

    const-string v0, "Descriptor"

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->DevDescriptor:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->infoTaskMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/linkplay/core/app/LPDeviceManagerObserver;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->managerObserver:Lcom/linkplay/core/app/LPDeviceManagerObserver;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->executeControlDeviceCallback(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lcom/linkplay/core/device/LPDevice;Lorg/teleal/cling/model/meta/Device;I)V
    .locals 0

    invoke-direct {p0, p2, p1, p3}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;I)V

    return-void
.end method

.method private deviceAdded(Lorg/teleal/cling/model/meta/Device;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->addMediaServer(Lorg/teleal/cling/model/meta/Device;)V

    return-void

    :cond_1
    const-string v2, "MediaRenderer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->addMediaRenderer(Lorg/teleal/cling/model/meta/Device;)V

    invoke-static {p1}, Lcom/linkplay/core/utils/LPDeviceUtils;->convert2LPDevice(Lorg/teleal/cling/model/meta/Device;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->infoTaskMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->stop()V

    :cond_2
    new-instance v1, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;

    invoke-direct {v1, p0, p1, v0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;-><init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->infoTaskMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_5

    aget-object v0, p0, p1

    iget-object v2, v0, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->addMediaServer(Lorg/teleal/cling/model/meta/Device;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private deviceRemoved(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemove(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaServer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->removeMediaServer(Lorg/teleal/cling/model/meta/Device;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private executeControlDeviceCallback(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;Ljava/util/Map;)V
    .locals 7

    if-eqz p3, :cond_c

    const-string v0, "MultiType"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlaveMask"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "0"

    const-string v5, "10.10.10.254"

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/linkplay/core/utils/LPWiFiResultUtils;->isWiFiConnectAP()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    sget-object v6, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v3, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    sget-object v6, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v3, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    sget-object v6, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v3, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    sget-object v6, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v3, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    :goto_0
    const-string v3, "Status"

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->hasVersionControl()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-direct {p0, p1, p2, v3}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;I)V

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setInternet(I)V

    invoke-static {v1}, Lcom/linkplay/core/status/LPPendingMask;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPendingMask;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendMask(Lcom/linkplay/core/status/LPPendingMask;)V

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setSSID(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setFriendlyName(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getProject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setProject(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setUpnpVersion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/linkplay/core/utils/LPWiFiResultUtils;->isWiFiConnectAP()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    sget-object v1, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {p1, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    sget-object v1, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {p1, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    sget-object v1, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {p1, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v1

    if-ne v1, p1, :cond_8

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    sget-object v1, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {p1, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    :cond_8
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->updateDlna(Lcom/linkplay/core/device/LPDevice;)V

    invoke-static {p2}, Lcom/linkplay/core/utils/LPDeviceUtils;->isA98(Lcom/linkplay/core/device/LPDevice;)Z

    move-result p0

    const-string p1, "SlaveList"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p0, :cond_c

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linkplay/core/utils/LPDeviceUtils;->getSlaveDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v1, p1, :cond_c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p3}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setMaster_uuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/utils/WiimuWifiScanner;->isWiimuWifi(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->updateDlna(Lcom/linkplay/core/device/LPDevice;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/app/LPDeviceManager;->getMasterDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p3

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->updateDlna(Lcom/linkplay/core/device/LPDevice;)V

    return-void

    :cond_b
    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->updateDlna(Lcom/linkplay/core/device/LPDevice;)V

    :cond_c
    :goto_3
    return-void
.end method

.method private getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;I)V
    .locals 2

    if-gtz p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p3, p3, -0x1

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;-><init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lcom/linkplay/core/device/LPDevice;Lorg/teleal/cling/model/meta/Device;I)V

    invoke-interface {v0, p1, v1}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;I)V

    return-void
.end method

.method private removeDevice(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->getRegistryListener()Lorg/teleal/cling/registry/Registry;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    instance-of v0, p1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {p0, p1}, Lorg/teleal/cling/registry/Registry;->b(Lorg/teleal/cling/model/meta/LocalDevice;)Z

    return-void

    :cond_3
    instance-of v0, p1, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {p0, p1}, Lorg/teleal/cling/registry/Registry;->g(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private updateDlna(Lcom/linkplay/core/device/LPDevice;)V
    .locals 3

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setUpnpUUID(Ljava/lang/String;)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "slave device master uuid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->getDlanHelper(Ljava/lang/String;)Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-direct {v0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    :cond_2
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->addDlnaHelper(Ljava/lang/String;Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->execute()V

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->managerObserver:Lcom/linkplay/core/app/LPDeviceManagerObserver;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/linkplay/core/app/LPDeviceManagerObserver;->LPDeviceOnline(Lcom/linkplay/core/device/LPDevice;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public deviceRemove(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->upnplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->upnplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->removeDevice(Lorg/teleal/cling/model/meta/Device;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->removeDlnaHelper(Ljava/lang/String;)V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->removeMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    sget-object v1, Lorg/teleal/cling/protocol/UpnpUDNManager;->c:Lorg/teleal/cling/protocol/UpnpUDNManager;

    invoke-virtual {v1, p1}, Lorg/teleal/cling/protocol/UpnpUDNManager;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deleteLPDevice(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->managerObserver:Lcom/linkplay/core/app/LPDeviceManagerObserver;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/linkplay/core/app/LPDeviceManagerObserver;->LPDeviceOffline(Lcom/linkplay/core/device/LPDevice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->upnplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->upnplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public declared-synchronized deviceUpdate(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->infoTaskMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$ThreadGetControlDeviceInfo;->devItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0, p2}, Lcom/linkplay/core/device/LPDevice;->setIp(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/linkplay/core/device/LPDevice;->setIp(Ljava/lang/String;)V

    new-instance p2, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {p2}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p3

    invoke-virtual {p3}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p3

    invoke-virtual {p3}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurity()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/linkplay/request/RequestItem$Builder;->security(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linkplay/request/RequestItem$Builder;->build()Lcom/linkplay/request/RequestItem;

    move-result-object p2

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object p3

    new-instance v0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$1;

    invoke-direct {v0, p0, p1}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$1;-><init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lcom/linkplay/core/device/LPDevice;)V

    invoke-virtual {p3, p2, v0}, Lcom/linkplay/request/LPRequestAction;->getStatusEx(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object p2

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->getDlanHelper(Ljava/lang/String;)Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object p2

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->removeDlnaHelper(Ljava/lang/String;)V

    :cond_2
    new-instance p2, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-direct {p2, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    invoke-virtual {p2}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->execute()V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object p3

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->addDlnaHelper(Ljava/lang/String;Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-virtual {p2}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionAll()V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getIPFromDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Descriptor"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0xb

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    const/4 p0, 0x0

    :catch_1
    return-object p0
.end method

.method public localDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 2

    sget-object v0, Lorg/teleal/cling/protocol/UpnpUDNManager;->c:Lorg/teleal/cling/protocol/UpnpUDNManager;

    iget-object v1, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/protocol/UpnpUDNManager;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceAdded(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V

    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemoved(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->sourceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceAdded(Lorg/teleal/cling/model/meta/Device;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    invoke-direct {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemoved(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceUpdated(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 6

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->sourceLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p2, :cond_a

    :try_start_0
    iget-object v0, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    if-eqz v0, :cond_a

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->getIPFromDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/teleal/cling/model/types/UpnpDeviceType;->MediaRenderer:Lorg/teleal/cling/model/types/UpnpDeviceType;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/UpnpDeviceType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/teleal/cling/model/types/NotificationSubtype;->DMALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_4

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UUID:FF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    invoke-virtual {p0, v0, v1, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceUpdate(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    goto :goto_4

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    sget-object p0, Lorg/teleal/cling/model/types/UpnpDeviceType;->MediaServer:Lorg/teleal/cling/model/types/UpnpDeviceType;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UpnpDeviceType;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_6
    sget-object p0, Lorg/teleal/cling/model/types/UpnpDeviceType;->ContentDirectory:Lorg/teleal/cling/model/types/UpnpDeviceType;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UpnpDeviceType;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    sget-object p0, Lorg/teleal/cling/model/types/NotificationSubtype;->DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    sget-object p0, Lorg/teleal/cling/model/types/NotificationSubtype;->ContentDirectory:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->addMediaServer(Lorg/teleal/cling/model/meta/Device;)V

    :cond_a
    :goto_4
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
