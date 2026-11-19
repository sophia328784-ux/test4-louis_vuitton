.class Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->onInternetTimeAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;)V
    .locals 0

    .line 6
    return-void
.end method

.method public bridge synthetic onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager$1;->onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;)V

    return-void
.end method

.method public onDone()V
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;->onDeviceTimeStateChanged(Z)V

    :cond_0
    return-void
.end method
