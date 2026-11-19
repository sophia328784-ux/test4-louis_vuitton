.class public interface abstract Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/messages/InternalPowerOfReason;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onDeviceRegistered(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation
.end method

.method public abstract onDeviceRegistering(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation
.end method

.method public abstract onDeviceRegistrationHanging(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)Z"
        }
    .end annotation
.end method

.method public abstract onDeviceRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation
.end method
