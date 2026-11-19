.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->X(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->E0()V

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    return-void
.end method

.method public final onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->T(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lfp;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lfp;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onProgress(D)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    double-to-int p1, p1

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->W(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    return-void
.end method
