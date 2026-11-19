.class Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionHardReset(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

.field final synthetic val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->h(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->HARD_RESET_AWAITING_RECONNECTION:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    const-string v0, "connectionHardReset error (2)"

    invoke-static {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->i(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->a(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPermissionsManager()Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->val$bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    const-string v0, "connectionHardReset post connecting"

    invoke-static {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->i(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Ljava/lang/String;)V

    return-void
.end method
