.class Lcom/lp/ble/BLEScanner$3;
.super Lcom/clj/fastble/callback/BleScanCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/lp/ble/BLEScanner;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEScanner$3;->a:Lcom/lp/ble/BLEScanner;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final b(Lcom/clj/fastble/data/BleDevice;)V
    .locals 6

    iget-object p0, p0, Lcom/lp/ble/BLEScanner$3;->a:Lcom/lp/ble/BLEScanner;

    iget-object v1, p0, Lcom/lp/ble/BLEScanner;->d:Lcom/lp/ble/config/BleScanConfig;

    iget-object v2, p0, Lcom/lp/ble/BLEScanner;->e:Lcom/lp/ble/config/DeviceFilter;

    iget-object v3, p1, Lcom/clj/fastble/data/BleDevice;->b:Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Lcom/clj/fastble/data/BleDevice;->d:I

    iget-object v5, p1, Lcom/clj/fastble/data/BleDevice;->c:[B

    const-string v0, "getFastBleScanCallback.onScanning"

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

.method public final c()V
    .locals 1

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/lp/ble/BLEScanner$3;->a:Lcom/lp/ble/BLEScanner;

    iput-boolean v0, p0, Lcom/lp/ble/BLEScanner;->b:Z

    iget-object v0, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lp/ble/BLEScanListener;->onScanFinished()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    :cond_0
    return-void
.end method
