.class public interface abstract Lcom/lightup/sdk/device/devicemanagement/SingleLightningDeviceHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract disableAdminMode()Z
.end method

.method public abstract enableAdminMode(Ljava/lang/String;)Z
.end method

.method public abstract getAllAnimations(ZLcom/lightup/sdk/device/ble/scanner/listeners/AnimationsDownloadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract getCurrentlyPlayingAnimation()Lcom/lightup/sdk/animation/CreatorProject;
.end method

.method public abstract getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;
.end method

.method public abstract getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;
.end method

.method public abstract getMode()Lcom/lightup/sdk/device/enums/DeviceMode;
.end method

.method public abstract isAdminModeEnable()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isInBootloader()Z
.end method

.method public abstract openDevice(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
.end method

.method public abstract setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract updateAnimations(ZLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end method

.method public abstract uploadAnimations(Ljava/util/List;Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;",
            "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation
.end method
