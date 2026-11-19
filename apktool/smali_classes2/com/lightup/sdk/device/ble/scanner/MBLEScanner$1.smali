.class Lcom/lightup/sdk/device/ble/scanner/MBLEScanner$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;-><init>(Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner$1;->a:Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner$1;->a:Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    const-string p1, "n/a"

    :goto_0
    iget-boolean v1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->d:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0, p2}, Lcom/lightup/sdk/device/ble/scanner/listeners/ScanListener;->onDiscoveredDevice(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
