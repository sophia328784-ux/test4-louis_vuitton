.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;",
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
.field public static final a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;

.field public static b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

.field public static c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

.field public static d:Ljava/lang/Boolean;

.field public static e:Ljava/lang/Boolean;

.field public static f:Ljava/lang/Boolean;

.field public static g:Ljava/lang/Boolean;

.field public static h:Ljava/lang/Boolean;

.field public static i:I

.field public static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;

    return-void
.end method


# virtual methods
.method public final onAnimationPlaying()V
    .locals 0

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->J()V

    :cond_0
    return-void
.end method

.method public final onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, p0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sput p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->j:I

    goto :goto_0

    :cond_1
    sput p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->i:I

    :goto_0
    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->N(Lcom/lightup/sdk/device/enums/PairOrientation;)V

    :cond_2
    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    if-nez p2, :cond_6

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p0, p2

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    :cond_6
    :goto_1
    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    if-eqz p2, :cond_10

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->h:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v0, :cond_9

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :cond_8
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->h:Ljava/lang/Boolean;

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->L(Z)V

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p0, p2

    if-eq p2, v2, :cond_b

    if-eq p2, v1, :cond_a

    goto :goto_6

    :cond_a
    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_3

    :cond_b
    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_d

    if-eq p0, v1, :cond_c

    goto :goto_4

    :cond_c
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    goto :goto_4

    :cond_d
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    :goto_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_5

    :cond_e
    move v2, v3

    :cond_f
    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->h:Ljava/lang/Boolean;

    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->L(Z)V

    :cond_10
    :goto_6
    return-void
.end method

.method public final onDeviceStatusChanged()V
    .locals 0

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVMonitoringListener;->onDeviceStatusChanged()V

    :cond_0
    return-void
.end method

.method public final onNewAnimationsAvailable()V
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->d:Ljava/lang/Boolean;

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->K()V

    :cond_0
    return-void
.end method

.method public final onRequiresAnimationsUpdate()V
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->e:Ljava/lang/Boolean;

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->M()V

    :cond_0
    return-void
.end method
