.class public interface abstract Lcom/lightup/sdk/device/devicemanagement/DeviceHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract ping(Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract startDeviceConnectionProcess(Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/ble/BLEDisabledException;
        }
    .end annotation
.end method

.method public abstract startDeviceConnectionProcess(Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "ZTM;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation
.end method

.method public abstract startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract stopDeviceConnectionProcess()V
.end method

.method public abstract updateDevice(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method
