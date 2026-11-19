.class Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/listener/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->launchPingFeature(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

.field final synthetic val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field final synthetic val$listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->val$listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->val$listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    sget-object p1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void
.end method

.method public bridge synthetic onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V

    return-void
.end method

.method public onDone()V
    .locals 2

    sget-object v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->killScanTimeout()V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->disconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->g(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;->val$listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void
.end method
