.class public abstract Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;
.super Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;",
        "M::",
        "Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;",
        ">",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BLEPairedDevicesManager"


# instance fields
.field private autoConnect:Z

.field protected deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field private deviceFilterAsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field protected deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private exclude:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/ScannerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->exclude:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceFilterAsList:Ljava/util/List;

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->autoConnect:Z

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setConnectionPoolSize(I)V

    return-void
.end method

.method private declared-synchronized connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    sget-object p1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private updateDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;II)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;",
            "II)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->PROCESS_ALREADY_RUNNING:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_0
    :try_start_0
    new-instance v3, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;

    invoke-direct {v3, p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)Lcom/lightup/sdk/device/features/process/ProcessFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->execute()I
    :try_end_0
    .catch Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V

    return-void
.end method

.method public declared-synchronized connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized connectPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "TD;>;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {v3}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object v3

    if-ne v1, v3, :cond_1

    const-string p1, "Cannot connect to two devices with same orientation"

    invoke-interface {p2, p1}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onError(Ljava/lang/String;)V

    sget-object p1, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-direct {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p1

    sget-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v0, :cond_2

    if-ne p1, v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    if-ne p2, v0, :cond_3

    monitor-exit p0

    return-object p1

    :cond_3
    monitor-exit p0

    return-object p2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getBoardVersion(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/enums/PairOrientation;",
            ")TD;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
    .locals 0

    .line 12
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "TD;>;"
        }
    .end annotation

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object p1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    invoke-direct {v0, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;-><init>(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)V

    return-object v0
.end method

.method public getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareVersion(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getSerialNumber(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSoftCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isConnected(Lcom/lightup/sdk/device/enums/PairOrientation;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isConnected(Lcom/lightup/sdk/device/enums/PairOrientation;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConnected(Lcom/lightup/sdk/device/enums/PairOrientation;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    return p0
.end method

.method public isReady()Z
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isReady(Lcom/lightup/sdk/device/enums/PairOrientation;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isReady(Lcom/lightup/sdk/device/enums/PairOrientation;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReady(Lcom/lightup/sdk/device/enums/PairOrientation;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    return p0
.end method

.method public launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 5

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getSoftCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {p0, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    invoke-direct {v4, v3, p1, p2, p3}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x2

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_2

    new-instance p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    invoke-direct {p0, p1, p2, p3}, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;-><init>(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, p2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_3
    return-object v0
.end method

.method public launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 3

    .line 93
    new-instance v0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    sget-object v1, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p3, v2}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    .line 94
    new-instance p1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    sget-object v1, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p0

    invoke-direct {p1, p0, p2, p3, v2}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    .line 95
    const-string p0, "config1"

    invoke-virtual {v0, p0}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->setName(Ljava/lang/String;)V

    .line 96
    const-string p0, "config2"

    invoke-virtual {p1, p0}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->setName(Ljava/lang/String;)V

    .line 97
    new-instance p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;

    invoke-direct {p0, v0, p1, p4}, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;-><init>(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    .line 98
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public bridge synthetic onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V

    return-void
.end method

.method public onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->exclude:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceFilterAsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->exclude:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceFilterAsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->autoConnect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method

.method public bridge synthetic onDiscoveredDevice(Lcom/lightup/sdk/device/model/device/Device;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V

    return-void
.end method

.method public onDiscoveryEnd(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->autoConnect:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onNoDeviceFound()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onDiscoveryEnd(Z)V

    return-void
.end method

.method public bridge synthetic onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V

    return-void
.end method

.method public onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->reset()V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceFilterAsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->autoConnect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->exclude:Z

    return-void
.end method

.method public declared-synchronized startDeviceConnectionProcess(Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "TD;>;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-array v0, v0, [Lcom/lightup/sdk/device/model/device/DeviceId;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "ZTM;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "TD;>;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceFilterAsList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->exclude:Z

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    iput-object p4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->autoConnect:Z

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startScanProcess()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener<",
            "TD;>;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->stopDeviceConnectionProcess()V

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized stopDeviceConnectionProcess()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanner:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, v0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->killScanTimeout()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public updateDevice(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;II)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->updateDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;II)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public updateDevices(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;II)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 10

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v3

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v0

    iget-boolean v1, v3, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    new-instance v4, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;

    invoke-direct {v4, p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)Lcom/lightup/sdk/device/features/process/ProcessFeature;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;

    iget-object v4, v2, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    new-instance v7, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;

    invoke-direct {v7, v2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V

    move v8, v5

    move v9, v6

    move-object v6, v0

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)Lcom/lightup/sdk/device/features/process/ProcessFeature;

    move-result-object p2

    check-cast p2, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;

    new-instance p3, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;

    invoke-direct {p3, p0, p2, p1}, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;-><init>(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V
    :try_end_0
    .catch Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object v2, p0

    move v5, p2

    move v6, p3

    move-object p0, v0

    if-eqz v1, :cond_1

    invoke-direct {v2, v3, p1, v5, v6}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->updateDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;II)Lcom/lightup/sdk/device/enums/CallStatus;

    goto :goto_0

    :cond_1
    invoke-direct {v2, p0, p1, v5, v6}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->updateDevice(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;II)Lcom/lightup/sdk/device/enums/CallStatus;

    :goto_0
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method
