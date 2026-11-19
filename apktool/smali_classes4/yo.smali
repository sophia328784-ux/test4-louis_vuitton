.class public final synthetic Lyo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;I)V
    .locals 0

    iput p2, p0, Lyo;->b:I

    iput-object p1, p0, Lyo;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lyo;->b:I

    iget-object p0, p0, Lyo;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://www.spotify.com/us/connect/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanFragment;->O()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkSpotifyHelper;->b(Landroidx/fragment/app/FragmentActivity;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanFragment;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanFragment;->O()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
