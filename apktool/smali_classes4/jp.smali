.class public final synthetic Ljp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Ljp;->b:I

    iput-object p1, p0, Ljp;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    iput-object p2, p0, Ljp;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ljp;->b:I

    iget-object v1, p0, Ljp;->d:Ljava/util/List;

    iget-object p0, p0, Ljp;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->T(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;

    const-string v3, "Visit our catalog"

    const-string v4, "Earphones"

    invoke-direct {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->T(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->T(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->T(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
