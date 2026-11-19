.class final Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\rH\u0016J\u0008\u0010\u0013\u001a\u00020\u0007H\u0016J\u0008\u0010\u0014\u001a\u00020\u0007H\u0016J\u0008\u0010\u0015\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;",
        "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;",
        "listener",
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
        "<init>",
        "(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V",
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
.field private final listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;->listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    return-void
.end method


# virtual methods
.method public onAnimationPlaying()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;->listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onAnimationPlaying()V

    return-void
.end method

.method public onBatteryLevel(IZ)V
    .locals 1

    .line 9
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;->listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {p0, v0, p1, p2}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V

    return-void
.end method

.method public onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;->listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V

    return-void
.end method

.method public onBatteryStatus(I)V
    .locals 0

    return-void
.end method

.method public onDeviceStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;->listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onDeviceStatusChanged()V

    return-void
.end method

.method public onDeviceTimeStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNewAnimationsAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;->listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onNewAnimationsAvailable()V

    return-void
.end method

.method public onRequiresAnimationsUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/UnifiedMonitoringListener;->listener:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;->onRequiresAnimationsUpdate()V

    return-void
.end method
