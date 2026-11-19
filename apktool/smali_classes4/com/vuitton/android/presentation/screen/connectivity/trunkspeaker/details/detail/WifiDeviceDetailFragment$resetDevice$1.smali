.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$resetDevice$1;
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
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$resetDevice$1",
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


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$resetDevice$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$resetDevice$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/Hilt_WifiDeviceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->h:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->Q()Lcom/linkplay/core/device/LPDevice;

    move-result-object v1

    new-instance v2, Lu61;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lu61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;I)V

    const/4 p0, 0x0

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->d(Landroidx/fragment/app/FragmentActivity;Lcom/linkplay/core/device/LPDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    :cond_0
    return-void
.end method
