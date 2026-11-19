.class public final synthetic Lns0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V
    .locals 0

    iput p2, p0, Lns0;->b:I

    iput-object p1, p0, Lns0;->c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lns0;->b:I

    iget-object p0, p0, Lns0;->c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->l:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DiscoverServicesCardClickEvent;

    if-nez v0, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DiscoverServicesCardClickEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    invoke-direct {v6, v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    goto :goto_1

    :cond_1
    const-string p0, "contributionLinkNavigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->O()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->d(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListHowToCreateClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListHowToCreateClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->l:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->O()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    const/4 v2, 0x0

    const/16 v3, 0x78

    invoke-static {v1, p0, v0, v2, v3}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
