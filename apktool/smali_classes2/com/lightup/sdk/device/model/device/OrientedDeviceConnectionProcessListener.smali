.class public interface abstract Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;
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
.method public abstract onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/enums/PairOrientation;",
            "TD;Z)V"
        }
    .end annotation
.end method

.method public abstract onConnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V
.end method

.method public abstract onDeviceShutDown(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/enums/PowerOffReason;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onLost(Lcom/lightup/sdk/device/enums/PairOrientation;)V
.end method

.method public abstract onNoDeviceFound()V
.end method

.method public abstract onReconnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V
.end method

.method public abstract onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/enums/PairOrientation;",
            "TD;Z)V"
        }
    .end annotation
.end method
