.class public interface abstract Lcom/lightup/sdk/device/ble/scanner/listeners/HandlerCreationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lcom/lightup/sdk/device/devicemanagement/DeviceHandler<",
        "TM;>;M::",
        "Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/lightup/sdk/device/ble/exceptions/ScannerException;)V
.end method

.method public abstract onHandlerLost()V
.end method

.method public abstract onHandlerReady(Lcom/lightup/sdk/device/devicemanagement/DeviceHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation
.end method
