.class public interface abstract Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008g\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H&\u00a8\u0006\u0016\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;",
        "",
        "onConnected",
        "",
        "device",
        "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;",
        "reconnection",
        "",
        "helper",
        "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;",
        "onRequiresUpdate",
        "updatePossible",
        "onConnecting",
        "onReconnecting",
        "onNoDeviceFound",
        "onLost",
        "onDeviceShutDown",
        "reason",
        "Lcom/lightup/sdk/device/enums/PowerOffReason;",
        "onError",
        "error",
        "",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V
.end method

.method public abstract onConnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
.end method

.method public abstract onDeviceShutDown(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/PowerOffReason;)V
.end method

.method public abstract onError(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Ljava/lang/String;)V
.end method

.method public abstract onLost(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
.end method

.method public abstract onNoDeviceFound(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
.end method

.method public abstract onReconnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
.end method

.method public abstract onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V
.end method
