.class public final synthetic Lw41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;I)V
    .locals 0

    iput p2, p0, Lw41;->b:I

    iput-object p1, p0, Lw41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lw41;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lw41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->d(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object p0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;->y()Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->u7(Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;)V

    :cond_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_1
    sget-object v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v1, 0x7f14133c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f1404af

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f140c2f

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f14143e

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_2
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->Q(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$SwitchToEditTravelEvent;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->J:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$SwitchToEditTravelEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;->c(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->j:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
