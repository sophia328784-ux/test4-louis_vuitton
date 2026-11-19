.class public abstract Lcom/lightup/sdk/device/ble/scanner/BLEScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public b:Z

.field public final c:Landroid/bluetooth/BluetoothAdapter;

.field public d:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

.field public e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z

    iget-object p1, p1, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    iput-object p1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->c:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z

    iput-object p2, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->d:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object p2, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->a:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;

    invoke-direct {v0, p0, p1}, Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;-><init>(Lcom/lightup/sdk/device/ble/scanner/BLEScanner;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->e:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    move-object p1, p0

    check-cast p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;

    iget-object p2, p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->g:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p2

    iput-object p2, p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->g:Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_1
    iget-object p2, p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->g:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v0, p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->i:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->h:Landroid/bluetooth/le/ScanSettings;

    iget-object p1, p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->f:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p2, v0, v1, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z

    iget-object v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;

    iget-object v1, v0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->g:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v0, v0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->f:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->d:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-interface {v0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/ScanListener;->onScanEnd(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
