.class public final Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/helpers/X408Helper;->startDeviceConnectionProcess(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "com/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1",
        "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;",
        "onBatteryLevel",
        "",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "percent",
        "",
        "plugged",
        "",
        "onBatteryStatus",
        "batteryLevel",
        "onDeviceStatusChanged",
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

    iput-object p1, p0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationPlaying()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onAnimationPlaying()V

    return-void
.end method

.method public onBatteryLevel(IZ)V
    .locals 0

    .line 9
    return-void
.end method

.method public onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V

    return-void
.end method

.method public onBatteryStatus(I)V
    .locals 0

    return-void
.end method

.method public onDeviceStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onDeviceStatusChanged()V

    return-void
.end method

.method public onDeviceTimeStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNewAnimationsAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onNewAnimationsAvailable()V

    return-void
.end method

.method public onRequiresAnimationsUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;->$monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onRequiresAnimationsUpdate()V

    return-void
.end method
