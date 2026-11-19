.class public final synthetic Lv61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;I)V
    .locals 0

    iput p2, p0, Lv61;->b:I

    iput-object p1, p0, Lv61;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lv61;->b:I

    iget-object p0, p0, Lv61;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->h:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lw61;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lw61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "DEVICE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lw61;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lw61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
