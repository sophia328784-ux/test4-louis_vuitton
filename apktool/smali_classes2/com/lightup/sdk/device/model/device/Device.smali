.class public interface abstract Lcom/lightup/sdk/device/model/device/Device;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;
.end method

.method public abstract getShortId()Ljava/lang/String;
.end method

.method public abstract onInternetTimeAvailable(Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;)V
.end method

.method public abstract requiresUpdate()Z
.end method

.method public abstract setPriorityMode(Lcom/lightup/sdk/device/model/device/PriorityMode;)V
.end method

.method public abstract update(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)Z
.end method
