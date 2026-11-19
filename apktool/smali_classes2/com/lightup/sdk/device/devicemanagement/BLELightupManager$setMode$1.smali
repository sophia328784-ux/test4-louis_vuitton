.class public final Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/listener/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "onDeviceError",
        "",
        "error",
        "Lcom/lightup/sdk/device/features/process/errors/DeviceError;",
        "onDone",
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
.field final synthetic $mode:Lcom/lightup/sdk/device/enums/DeviceMode;

.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;Lcom/lightup/sdk/device/enums/DeviceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;->$mode:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;->onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V

    return-void
.end method

.method public onDone()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    iget-object v0, v0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;->$mode:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    check-cast p0, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;->onDeviceStatusChanged()V

    return-void
.end method
