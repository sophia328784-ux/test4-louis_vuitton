.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;",
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


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    return-void
.end method


# virtual methods
.method public final onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ls90;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-direct {v0, p0, p1, v1}, Ls90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;Lcom/lightup/sdk/device/devicemanagement/LightupDevice;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a:Lcom/lightup/sdk/device/helpers/LightupHelper;

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->stopScan(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V

    return-void

    :cond_3
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    return-void
.end method

.method public final onScanEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lr90;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-direct {p1, p0, v0}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
