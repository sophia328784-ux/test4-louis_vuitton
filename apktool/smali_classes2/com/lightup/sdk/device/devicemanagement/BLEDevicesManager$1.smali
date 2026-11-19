.class Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

.field final synthetic val$pingDeviceListener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->val$pingDeviceListener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/messages/InternalPowerOfReason;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->val$pingDeviceListener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    sget-object p1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDeviceRegistered(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->val$pingDeviceListener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    invoke-virtual {p2, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->launchPingFeature(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V

    return-void
.end method

.method public onDeviceRegistering(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onDeviceRegistrationHanging(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->val$pingDeviceListener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    sget-object p1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->DEVICE_NOT_FOUND:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDeviceRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;->val$pingDeviceListener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    invoke-virtual {p2, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->launchPingFeature(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V

    return-void
.end method
