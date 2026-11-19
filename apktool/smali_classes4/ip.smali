.class public final synthetic Lip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;I)V
    .locals 0

    iput p3, p0, Lip;->b:I

    iput-object p1, p0, Lip;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    iput-object p2, p0, Lip;->d:Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lip;->b:I

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lip;->d:Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    iget-object p0, p0, Lip;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;->c(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$WatchVideoScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$WatchVideoScreen;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    const-string v1, "LVPass/IoT/Watch/WatchInVideo"

    const-string v2, "IoT"

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "The watch in video"

    invoke-static {p0, v3, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;->c(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;->c(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
