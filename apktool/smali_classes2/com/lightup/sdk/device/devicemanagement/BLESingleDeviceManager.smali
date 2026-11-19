.class public abstract Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;
.super Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
        "M::",
        "Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;",
        ">",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager<",
        "TD;>;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final TAG:Ljava/lang/String; = "BLESingleDeviceManager"


# instance fields
.field protected autoConnect:Z

.field private bleDeviceAssigned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field protected deviceFilterAsList:Ljava/util/List;
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

.field protected exclude:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/ScannerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->bleDeviceAssigned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->exclude:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceFilterAsList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->autoConnect:Z

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setConnectionPoolSize(I)V

    return-void
.end method


# virtual methods
.method public clearConnections()V
    .locals 1

    invoke-super {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->clearConnections()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->bleDeviceAssigned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    invoke-virtual {p0, p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
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

.method public declared-synchronized connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "TD;>;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    sget-object p1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;
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

.method public declared-synchronized connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "TD;>;TM;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

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

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-super {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->disconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method

.method public getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getBoardVersion(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-super {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getCallStatus(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "TD;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    return-object p0
.end method

.method public getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p0

    return-object p0
.end method

.method public getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareVersion(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {v1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_0
    return-object v0
.end method

.method public onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->exclude:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceFilterAsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->exclude:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceFilterAsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->autoConnect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->bleDeviceAssigned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    invoke-virtual {p0, p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method

.method public bridge synthetic onDiscoveredDevice(Lcom/lightup/sdk/device/model/device/Device;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method

.method public onDiscoveryEnd(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->autoConnect:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->bleDeviceAssigned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onNoDeviceFound()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onDiscoveryEnd(Z)V

    return-void
.end method

.method public onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->bleDeviceAssigned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized onInternetTimeAvailable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->bleDeviceAssigned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager$1;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;)V

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->onInternetTimeAvailable(Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->reset()V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceFilterAsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->autoConnect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->exclude:Z

    return-void
.end method

.method public startDeviceConnectionProcess(Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Lcom/lightup/sdk/device/model/device/DeviceId;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "ZTM;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
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

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceFilterAsList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->exclude:Z

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    iput-object p4, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->autoConnect:Z

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

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->stopDeviceConnectionProcess()V

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public updateDevice(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-super {p0, v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->updateDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method
