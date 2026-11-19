.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;",
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
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
.field public static final a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;

.field public static b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

.field public static c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

.field public static d:Ljava/lang/Boolean;

.field public static e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;

    return-void
.end method


# virtual methods
.method public final onAnimationPlaying()V
    .locals 0

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->J()V

    :cond_0
    return-void
.end method

.method public final onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDeviceStatusChanged()V
    .locals 0

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVMonitoringListener;->onDeviceStatusChanged()V

    :cond_0
    return-void
.end method

.method public final onNewAnimationsAvailable()V
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->d:Ljava/lang/Boolean;

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->K()V

    :cond_0
    return-void
.end method

.method public final onRequiresAnimationsUpdate()V
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->e:Ljava/lang/Boolean;

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->M()V

    :cond_0
    return-void
.end method
