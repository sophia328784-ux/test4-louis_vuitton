.class Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;
.super Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->updateDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

.field final synthetic val$updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;->val$updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v0, v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bleDeviceUpdateOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;->val$updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void
.end method

.method public onError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v0, v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bleDeviceUpdateOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;->val$updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/lightup/sdk/device/enums/UpdateError;->fromFirmwareUpdateError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)Lcom/lightup/sdk/device/enums/UpdateError;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;->onUpdateError(Lcom/lightup/sdk/device/enums/UpdateError;)V

    return-void
.end method

.method public onLinkBackUp()V
    .locals 0

    return-void
.end method

.method public onLinkBroken()V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;)V
    .locals 4

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;->val$updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->getCurrentStep()I

    move-result v0

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->getNumberOfSteps()I

    move-result v1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->getStepProgress()D

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;->onProgress(IID)V

    return-void
.end method
