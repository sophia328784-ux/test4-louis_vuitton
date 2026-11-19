.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$makeDeviceAvailable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$makeDeviceAvailable$1",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$makeDeviceAvailable$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;

    return-void
.end method


# virtual methods
.method public final onDeviceError(Ljava/lang/Enum;)V
    .locals 2

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$makeDeviceAvailable$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lv90;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDone()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$makeDeviceAvailable$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;->a()V

    return-void
.end method
