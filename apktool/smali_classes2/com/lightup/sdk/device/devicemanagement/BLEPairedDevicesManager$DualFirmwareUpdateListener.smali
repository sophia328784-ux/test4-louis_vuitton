.class Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;
.super Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DualFirmwareUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;

.field private updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;-><init>()V

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;->updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;->updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void
.end method

.method public onError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;->updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

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

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager$DualFirmwareUpdateListener;->updateDeviceListener:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->getCurrentStep()I

    move-result v0

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->getNumberOfSteps()I

    move-result v1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->getStepProgress()D

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;->onProgress(IID)V

    return-void
.end method
