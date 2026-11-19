.class public interface abstract Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008g\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&J\u0008\u0010\r\u001a\u00020\u0003H&\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
        "",
        "onBatteryLevel",
        "",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "percent",
        "",
        "plugged",
        "",
        "onDeviceStatusChanged",
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


# virtual methods
.method public abstract onAnimationPlaying()V
.end method

.method public abstract onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V
.end method

.method public abstract onDeviceStatusChanged()V
.end method

.method public abstract onNewAnimationsAvailable()V
.end method

.method public abstract onRequiresAnimationsUpdate()V
.end method
