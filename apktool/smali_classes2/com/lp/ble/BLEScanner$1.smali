.class Lcom/lp/ble/BLEScanner$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/lp/ble/BLEScanner;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEScanner$1;->a:Lcom/lp/ble/BLEScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final onScanFailed(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEScanner$1;->a:Lcom/lp/ble/BLEScanner;

    iget-object v0, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lp/ble/BLEScanListener;->onScanFailed(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    :cond_0
    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 6

    iget-object p0, p0, Lcom/lp/ble/BLEScanner$1;->a:Lcom/lp/ble/BLEScanner;

    iget-object v1, p0, Lcom/lp/ble/BLEScanner;->d:Lcom/lp/ble/config/BleScanConfig;

    iget-object v2, p0, Lcom/lp/ble/BLEScanner;->e:Lcom/lp/ble/config/DeviceFilter;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v5

    const-string v0, "getScanCallback.onScanResult"

    invoke-static/range {v0 .. v5}, Lcom/lp/ble/utils/BLEUtil;->h(Ljava/lang/String;Lcom/lp/ble/config/BleScanConfig;Lcom/lp/ble/config/DeviceFilter;Landroid/bluetooth/BluetoothDevice;I[B)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/lp/ble/BLEScanListener;->onScanResult(Lcom/lp/ble/entity/LPBluetoothDevice;)V

    :cond_1
    :goto_0
    return-void
.end method
