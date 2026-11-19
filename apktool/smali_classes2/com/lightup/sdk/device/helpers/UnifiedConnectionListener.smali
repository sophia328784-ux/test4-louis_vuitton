.class final Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;
.super Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        ">;",
        "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0016J\u0008\u0010\u0014\u001a\u00020\rH\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;",
        "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;",
        "lightupDevice",
        "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;",
        "listener",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;",
        "helper",
        "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;",
        "<init>",
        "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V",
        "onConnected",
        "",
        "device",
        "reconnection",
        "",
        "onRequiresUpdate",
        "updatePossible",
        "onConnecting",
        "onReconnecting",
        "onNoDeviceFound",
        "onLost",
        "onDeviceShutDown",
        "reason",
        "Lcom/lightup/sdk/device/enums/PowerOffReason;",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
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


# instance fields
.field private final helper:Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

.field private final lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

.field private final listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    iput-object p2, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iput-object p3, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->helper:Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    return-void
.end method


# virtual methods
.method public bridge synthetic onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0

    .line 24
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->onConnected(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V

    return-void
.end method

.method public onConnected(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;-><init>(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->helper:Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    invoke-interface {v0, v1, p2, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onConnected(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    return-void
.end method

.method public bridge synthetic onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0

    .line 23
    check-cast p2, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V

    return-void
.end method

.method public onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p2, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->helper:Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    invoke-interface {p1, p2, p3, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onConnected(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    return-void
.end method

.method public onConnecting()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onConnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onConnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {p1, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onConnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onDeviceShutDown(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/enums/PowerOffReason;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {p1, p0, p2}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onDeviceShutDown(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/PowerOffReason;)V

    return-void
.end method

.method public onDeviceShutDown(Lcom/lightup/sdk/device/enums/PowerOffReason;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {v0, p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onDeviceShutDown(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/PowerOffReason;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {v0, p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onError(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Ljava/lang/String;)V

    return-void
.end method

.method public onLost()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onLost(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onLost(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {p1, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onLost(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onNoDeviceFound()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onNoDeviceFound(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onReconnecting()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onReconnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onReconnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-interface {p1, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onReconnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public bridge synthetic onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0

    .line 24
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V

    return-void
.end method

.method public onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;-><init>(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->helper:Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    invoke-interface {v0, v1, p2, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    return-void
.end method

.method public bridge synthetic onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0

    .line 23
    check-cast p2, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V

    return-void
.end method

.method public onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;

    iget-object p2, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->lightupDevice:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;->helper:Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    invoke-interface {p1, p2, p3, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;->onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    return-void
.end method
