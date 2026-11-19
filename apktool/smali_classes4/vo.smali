.class public final synthetic Lvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;I)V
    .locals 0

    iput p2, p0, Lvo;->b:I

    iput-object p1, p0, Lvo;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lvo;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lvo;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f14128a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->O(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openConnectToWifi$listener$1;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openConnectToWifi$listener$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openConnectToWifi$listener$1;->b:Lcom/lp/ble/entity/LPBluetoothDevice;

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;

    invoke-direct {v3, v0, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;Lcom/lp/ble/entity/LPBluetoothDevice;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f141289

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectToWifiBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectToWifiBinding;->f:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f141271

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectToWifiBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerConnectToWifiBinding;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f141273

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
