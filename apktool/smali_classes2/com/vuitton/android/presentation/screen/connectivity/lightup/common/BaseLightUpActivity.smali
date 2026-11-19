.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;
.super Lcom/vuitton/android/presentation/screen/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;
.implements Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVMonitoringListener;
.implements Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\'\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0006\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVMonitoringListener;",
        "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;",
        "<init>",
        "()V",
        "",
        "H",
        "onAvailable",
        "onUnavailable",
        "Lcom/lightup/sdk/device/enums/LightupDeviceType;",
        "deviceType",
        "I",
        "(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V",
        "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;",
        "device",
        "onConnecting",
        "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V",
        "onReconnecting",
        "",
        "error",
        "onError",
        "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Ljava/lang/String;)V",
        "onLost",
        "onDeviceStatusChanged",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final o:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract H()V
.end method

.method public final I(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->b(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    :try_end_0
    .catch Lcom/lightup/sdk/device/ble/exceptions/ScannerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Scanner Exception - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    sget-object v0, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v1, "LV_LIGHT_UP"

    invoke-virtual {v0, v1, p0, p1}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onAvailable()V
    .locals 0

    return-void
.end method

.method public onConnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onDeviceStatusChanged()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onLost(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onReconnecting(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    return-void
.end method
