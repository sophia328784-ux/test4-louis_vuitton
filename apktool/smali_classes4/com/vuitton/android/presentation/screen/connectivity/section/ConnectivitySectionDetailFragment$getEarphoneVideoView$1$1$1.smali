.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$getEarphoneVideoView$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    const-string v1, "LVPass/IoT/Earphones"

    const-string v2, "IoT"

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Discover our video"

    invoke-static {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;->c(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->P()V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
