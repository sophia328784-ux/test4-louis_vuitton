.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1",
        "Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

.field public final synthetic b:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1;->b:Lcom/linkplay/core/device/LPDevice;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    new-instance v0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1;->b:Lcom/linkplay/core/device/LPDevice;

    invoke-direct {v0, v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    invoke-virtual {v0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->checkUpdate()Z

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$showUpdateBottomSheet$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;

    if-nez v2, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;

    invoke-direct {v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;

    :cond_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;->I:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/Hilt_WifiDeviceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/linkplay/ota2/model/LPOTAConfiguration;->parseConfiguraion(Landroid/content/Context;)Lcom/linkplay/ota2/model/LPOTAConfiguration;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    iput-wide v2, v1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmWareDownloadTime:J

    iput-wide v2, v1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcuDownloadTime:J

    iput-wide v2, v1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmWareWriteTime:J

    iput-wide v2, v1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcuWriteTime:J

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$updateIfNeeded$1;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$updateIfNeeded$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->firmwareStartUpdate(Lcom/linkplay/ota2/model/LPOTAConfiguration;Lcom/linkplay/ota2/presenter/LPOTAListener;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->P()V

    return-void
.end method
