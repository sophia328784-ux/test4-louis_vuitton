.class public final synthetic Lq01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;I)V
    .locals 0

    iput p2, p0, Lq01;->b:I

    iput-object p1, p0, Lq01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lq01;->b:I

    const/4 v1, 0x0

    const-string v2, "contributionLinkNavigator"

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->r:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    if-eqz v5, :cond_1

    iget-object v4, p0, Lq01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->r:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$Companion;

    iget-object v4, p0, Lq01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->H()Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->a:Ljava/util/List;

    if-ltz p1, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->i:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    if-eqz p0, :cond_3

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->H()Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnCollectionCTAClickedEvent;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnCollectionCTAClickedEvent;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
