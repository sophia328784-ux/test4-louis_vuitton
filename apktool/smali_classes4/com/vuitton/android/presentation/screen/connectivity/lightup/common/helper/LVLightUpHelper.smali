.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;",
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
.field public static a:Lcom/lightup/sdk/device/enums/LightupDeviceType;


# direct methods
.method public static a()V
    .locals 2

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->disconnect(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V

    return-void

    :cond_0
    const-string v0, "lightUpDeviceType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static b()Lcom/lightup/sdk/animation/CreatorProject;
    .locals 5

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const-string v2, "lightUpDeviceType"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getCurrentlyPlayingAnimation()Lcom/lightup/sdk/animation/CreatorProject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v1

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v4, :cond_4

    invoke-virtual {v1, v4}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getDeviceAnimations()Ljava/util/List;

    move-result-object v3

    :cond_1
    if-nez v0, :cond_3

    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/animation/CreatorProject;

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "lightUpDeviceType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "lightUpDeviceType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static e(Lcom/lightup/sdk/device/enums/DeviceMode;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z

    :cond_0
    return-void

    :cond_1
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
