.class public final Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1",
        "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;",
        "onBatteryStatus",
        "",
        "batteryLevel",
        "",
        "onDeviceStatusChanged",
        "onBatteryLevel",
        "percent",
        "plugged",
        "",
        "onDeviceTimeStateChanged",
        "deviceTimeSet",
        "onAnimationPlaying",
        "onNewAnimationsAvailable",
        "onRequiresAnimationsUpdate",
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
.field final synthetic $monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationPlaying()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onAnimationPlaying()V

    return-void
.end method

.method public onBatteryLevel(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {p0, v0, p1, p2}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V

    return-void
.end method

.method public onBatteryStatus(I)V
    .locals 0

    return-void
.end method

.method public onDeviceStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onDeviceStatusChanged()V

    return-void
.end method

.method public onDeviceTimeStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNewAnimationsAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onNewAnimationsAvailable()V

    return-void
.end method

.method public onRequiresAnimationsUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onRequiresAnimationsUpdate()V

    return-void
.end method
