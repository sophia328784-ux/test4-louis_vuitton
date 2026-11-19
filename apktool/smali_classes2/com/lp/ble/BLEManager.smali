.class public Lcom/lp/ble/BLEManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/lp/ble/BLEManager;


# instance fields
.field public a:Landroid/app/Application;

.field public b:Lcom/lp/ble/statistic/StatisticCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lp/ble/BLEManager;

    invoke-direct {v0}, Lcom/lp/ble/BLEManager;-><init>()V

    sput-object v0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_4
    const-string p0, "not call LPBLEManager.getInstance().init()"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return v1
.end method

.method public final b(Landroid/app/Application;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p0

    iget-object v0, p0, Lcom/clj/fastble/BleManager;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/clj/fastble/BleManager;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/clj/fastble/BleManager;->a:Landroid/app/Application;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/clj/fastble/BleManager;->e:Landroid/bluetooth/BluetoothManager;

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/clj/fastble/BleManager;->c:Landroid/bluetooth/BluetoothAdapter;

    new-instance p1, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-direct {p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;-><init>()V

    iput-object p1, p0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    new-instance p1, Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-direct {p1}, Lcom/clj/fastble/scan/BleScanRuleConfig;-><init>()V

    iput-object p1, p0, Lcom/clj/fastble/BleManager;->b:Lcom/clj/fastble/scan/BleScanRuleConfig;

    :cond_1
    return-void

    :cond_2
    const-string p0, "init application null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
