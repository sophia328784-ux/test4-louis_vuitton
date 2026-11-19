.class public abstract Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation
.end method

.method public abstract onConnecting()V
.end method

.method public abstract onDeviceShutDown(Lcom/lightup/sdk/device/enums/PowerOffReason;)V
.end method

.method public abstract onLost()V
.end method

.method public abstract onNoDeviceFound()V
.end method

.method public abstract onReconnecting()V
.end method

.method public abstract onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation
.end method
