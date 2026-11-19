.class public Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field public final a:Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;

.field public b:Landroid/bluetooth/BluetoothManager;

.field public c:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothException;,
            Landroid/content/ReceiverCallNotAllowedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;

    invoke-direct {v0, p1, p2}, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->a:Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;

    :try_start_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->a()V
    :try_end_0
    .catch Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->stop()V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->b:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->b:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothManagerInitException;

    invoke-direct {p0}, Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothManagerInitException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->b:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothUnsupportedException;

    invoke-direct {p0}, Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothUnsupportedException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_4
    return-void

    :cond_5
    new-instance p0, Lcom/lightup/sdk/device/ble/exceptions/ble/BLEUnsupportedException;

    invoke-direct {p0}, Lcom/lightup/sdk/device/ble/exceptions/ble/BLEUnsupportedException;-><init>()V

    throw p0
.end method
