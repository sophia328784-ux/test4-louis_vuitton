.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1",
        "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;",
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    return-void
.end method


# virtual methods
.method public final onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->T(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    return-void
.end method

.method public final onDone()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    return-void
.end method

.method public final onProgress(IID)V
    .locals 0

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double/2addr p3, p1

    double-to-int p1, p3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->W(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    return-void
.end method

.method public final onUpdateError(Lcom/lightup/sdk/device/enums/UpdateError;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->T(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lv90;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
