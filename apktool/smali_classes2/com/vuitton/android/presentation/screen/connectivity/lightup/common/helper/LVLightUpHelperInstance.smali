.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;",
        "",
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
.field public static a:Lcom/lightup/sdk/device/helpers/LightupHelper;


# direct methods
.method public static a()Lcom/lightup/sdk/device/helpers/LightupHelper;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a:Lcom/lightup/sdk/device/helpers/LightupHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "lightUpHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static b(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "BLUETOOTH_CONNECT permission is required on Android 12+"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a:Lcom/lightup/sdk/device/helpers/LightupHelper;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/lightup/sdk/device/helpers/LightupHelper;

    const-string v1, "5ab65c1930bb4c04b36fea82fbe3e4d7"

    invoke-direct {v0, v1, p0, p1}, Lcom/lightup/sdk/device/helpers/LightupHelper;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a:Lcom/lightup/sdk/device/helpers/LightupHelper;

    :goto_1
    sget-object p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;->KEEPALL:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-ne p2, p0, :cond_3

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, p1, v0}, Lcom/lightup/sdk/device/helpers/LightupHelper;->setAdminMode$default(Lcom/lightup/sdk/device/helpers/LightupHelper;ZLcom/lightup/sdk/device/enums/LightupDeviceType;ILjava/lang/Object;)V

    sget-object p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->Companion:Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;->getDefaultKeepAllWalkingConfig()Lcom/lightup/sdk/device/model/WalkingModeConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$setDefaultWalkingMode$1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0, p2}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void

    :cond_3
    sget-object p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;->X408PAIR:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-ne p2, p0, :cond_4

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v0}, Lcom/lightup/sdk/device/helpers/LightupHelper;->setAdminMode$default(Lcom/lightup/sdk/device/helpers/LightupHelper;ZLcom/lightup/sdk/device/enums/LightupDeviceType;ILjava/lang/Object;)V

    sget-object p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->Companion:Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;->getDefaultX408WalkingConfig()Lcom/lightup/sdk/device/model/WalkingModeConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$setDefaultWalkingMode$1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0, p2}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_4
    return-void
.end method
