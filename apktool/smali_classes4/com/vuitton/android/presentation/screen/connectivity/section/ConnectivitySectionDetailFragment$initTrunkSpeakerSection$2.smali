.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$initTrunkSpeakerSection$2;
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
        "Lkotlin/Pair<",
        "+",
        "Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        ">;>;>;",
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
    .locals 10

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/IoT/Trunk"

    const/4 v5, 0x0

    const-string v6, "IoT"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->Q()Lcom/vuitton/android/presentation/databinding/FragmentConnectivitySectionDetailBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivitySectionDetailBinding;->g:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f141349

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f140719

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v4, 0x7f08029f

    invoke-virtual/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Lip;

    invoke-direct {v4, p0, v1, v2}, Lip;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;I)V

    invoke-virtual {v3, v4}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f14063c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f141421

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x18

    const v4, 0x7f08027f

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b(Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljp;

    invoke-direct {v1, p0, p1, v2}, Ljp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;Ljava/util/List;I)V

    invoke-virtual {v3, v1}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
