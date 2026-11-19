.class public final synthetic Ldp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V
    .locals 0

    iput p2, p0, Ldp;->b:I

    iput-object p1, p0, Ldp;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ldp;->b:I

    iget-object p0, p0, Ldp;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldp;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldp;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldp;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$EarphoneSectionClickEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$EarphoneSectionClickEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->EARPHONE:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;-><init>()V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OpenSectionEvent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OpenSectionEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->KEEPALL:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OpenSectionEvent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OpenSectionEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->SNEAKERS:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairNewObjectEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairNewObjectEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->S:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;

    new-instance v0, Lyk0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lyk0;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->R:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->V:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->TRUNK_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p1, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldp;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->HORIZON_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/helper/LVConnectHelper;->a(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldp;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/helper/LVConnectHelper;->a(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
