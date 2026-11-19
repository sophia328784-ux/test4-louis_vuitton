.class public Lcom/lp/ble/BLEScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/lp/ble/BLEScanner;


# instance fields
.field public a:Lcom/lp/ble/BLEScanListener;

.field public b:Z

.field public c:Landroid/bluetooth/le/ScanCallback;

.field public d:Lcom/lp/ble/config/BleScanConfig;

.field public e:Lcom/lp/ble/config/DeviceFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lp/ble/BLEScanner;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/lp/ble/config/BleScanConfig$Builder;

    invoke-direct {v1}, Lcom/lp/ble/config/BleScanConfig$Builder;-><init>()V

    new-instance v1, Lcom/lp/ble/config/BleScanConfig;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lp/ble/config/BleScanConfig;->a:Z

    iput v2, v1, Lcom/lp/ble/config/BleScanConfig;->b:I

    const-string v2, ""

    iput-object v2, v1, Lcom/lp/ble/config/BleScanConfig;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/BLEScanner;->d:Lcom/lp/ble/config/BleScanConfig;

    new-instance v1, Lcom/lp/ble/BLEScanner$4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/lp/ble/BLEScanner;->e:Lcom/lp/ble/config/DeviceFilter;

    sput-object v0, Lcom/lp/ble/BLEScanner;->f:Lcom/lp/ble/BLEScanner;

    return-void
.end method

.method public static a()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 2

    sget-object v0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    iget-object v0, v0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/lp/ble/BLEScanListener;)V
    .locals 6

    iget-object v0, p0, Lcom/lp/ble/BLEScanner;->d:Lcom/lp/ble/config/BleScanConfig;

    iput-object p1, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    sget-object p1, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    invoke-virtual {p1}, Lcom/lp/ble/BLEManager;->a()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p1, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    if-eqz p1, :cond_8

    invoke-interface {p1, v1}, Lcom/lp/ble/BLEScanListener;->onScanFailed(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/lp/ble/BLEScanner;->b:Z

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lp/ble/BLEScanner;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lp/ble/statistic/BleStatistic;->a(J)Ljava/lang/String;

    iget-object p1, p1, Lcom/lp/ble/BLEManager;->b:Lcom/lp/ble/statistic/StatisticCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/lp/ble/statistic/StatisticCallback;->a()V

    :cond_2
    iget-boolean p1, v0, Lcom/lp/ble/config/BleScanConfig;->a:Z

    if-eqz p1, :cond_5

    new-instance p1, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    invoke-direct {p1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;-><init>()V

    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p1, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->b:J

    iget-object v1, v0, Lcom/lp/ble/config/BleScanConfig;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/lp/ble/config/BleScanConfig;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    filled-new-array {v0}, [Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p1, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->a:[Ljava/util/UUID;

    :cond_3
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-direct {v1}, Lcom/clj/fastble/scan/BleScanRuleConfig;-><init>()V

    iget-object v2, p1, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->a:[Ljava/util/UUID;

    iput-object v2, v1, Lcom/clj/fastble/scan/BleScanRuleConfig;->a:[Ljava/util/UUID;

    iget-wide v2, p1, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->b:J

    iput-wide v2, v1, Lcom/clj/fastble/scan/BleScanRuleConfig;->b:J

    iput-object v1, v0, Lcom/clj/fastble/BleManager;->b:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    new-instance v0, Lcom/lp/ble/BLEScanner$3;

    invoke-direct {v0, p0}, Lcom/lp/ble/BLEScanner$3;-><init>(Lcom/lp/ble/BLEScanner;)V

    iget-object p0, p1, Lcom/clj/fastble/BleManager;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/clj/fastble/BleManager;->b:Lcom/clj/fastble/scan/BleScanRuleConfig;

    iget-object p1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->a:[Ljava/util/UUID;

    iget-wide v1, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->b:J

    invoke-static {}, Lcom/clj/fastble/scan/BleScanner;->a()Lcom/clj/fastble/scan/BleScanner;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/clj/fastble/scan/BleScanner;->b([Ljava/util/UUID;JLcom/clj/fastble/callback/BleScanCallback;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/lp/ble/BLEScanner$3;->a()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/lp/ble/BLEScanner;->c:Landroid/bluetooth/le/ScanCallback;

    if-nez p1, :cond_6

    new-instance p1, Lcom/lp/ble/BLEScanner$1;

    invoke-direct {p1, p0}, Lcom/lp/ble/BLEScanner$1;-><init>(Lcom/lp/ble/BLEScanner;)V

    iput-object p1, p0, Lcom/lp/ble/BLEScanner;->c:Landroid/bluetooth/le/ScanCallback;

    :cond_6
    invoke-static {}, Lcom/lp/ble/BLEScanner;->a()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    if-eqz p1, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/lp/ble/config/BleScanConfig;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v4, Landroid/os/ParcelUuid;

    iget-object v5, v0, Lcom/lp/ble/config/BleScanConfig;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v3, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    iget v0, v0, Lcom/lp/ble/config/BleScanConfig;->b:I

    invoke-virtual {v3, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v3, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/lp/ble/BLEScanner;->c:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, v2, v0, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/lp/ble/BLEScanner;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/BLEScanner;->b:Z

    iget-object v0, p0, Lcom/lp/ble/BLEScanner;->d:Lcom/lp/ble/config/BleScanConfig;

    iget-boolean v0, v0, Lcom/lp/ble/config/BleScanConfig;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/clj/fastble/scan/BleScanner;->a()Lcom/clj/fastble/scan/BleScanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/clj/fastble/scan/BleScanner;->c()V

    return-void

    :cond_1
    invoke-static {}, Lcom/lp/ble/BLEScanner;->a()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/lp/ble/BLEScanner;->c:Landroid/bluetooth/le/ScanCallback;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lp/ble/BLEScanner;->c:Landroid/bluetooth/le/ScanCallback;

    iget-object v1, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/lp/ble/BLEScanListener;->onScanFinished()V

    iput-object v0, p0, Lcom/lp/ble/BLEScanner;->a:Lcom/lp/ble/BLEScanListener;

    :cond_3
    :goto_0
    return-void
.end method
