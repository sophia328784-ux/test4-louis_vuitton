.class public Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;
.super Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
        ">",
        "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field private pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/enums/PairOrientation;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v0, p0, p1, p2}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    return-void
.end method

.method public onConnecting()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onConnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V

    return-void
.end method

.method public onDeviceShutDown(Lcom/lightup/sdk/device/enums/PowerOffReason;)V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v0, p0, p1}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onDeviceShutDown(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/enums/PowerOffReason;)V

    return-void
.end method

.method public onLost()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onLost(Lcom/lightup/sdk/device/enums/PairOrientation;)V

    return-void
.end method

.method public onNoDeviceFound()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onNoDeviceFound()V

    return-void
.end method

.method public onReconnecting()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onReconnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V

    return-void
.end method

.method public onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->listener:Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/OrientedDeviceConnectionProcessHandler;->pairOrientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v0, p0, p1, p2}, Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;->onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    return-void
.end method
