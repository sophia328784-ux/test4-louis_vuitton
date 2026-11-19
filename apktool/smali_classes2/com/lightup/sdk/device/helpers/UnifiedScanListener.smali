.class final Lcom/lightup/sdk/device/helpers/UnifiedScanListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener<",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        ">;",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/UnifiedScanListener;",
        "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;",
        "listener",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;",
        "<init>",
        "(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V",
        "onDeviceFound",
        "",
        "device",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
        "onScanEnd",
        "cancelled",
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
.field private final listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;->onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method public onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;-><init>(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;->onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;

    .line 23
    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    .line 24
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-direct {v0, v1, p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;-><init>(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V

    .line 26
    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;->onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V

    return-void
.end method

.method public onScanEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;->listener:Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;->onScanEnd(Z)V

    return-void
.end method
