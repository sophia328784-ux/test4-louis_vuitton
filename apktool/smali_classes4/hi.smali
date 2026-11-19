.class public final synthetic Lhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lhi;->b:I

    iput-object p1, p0, Lhi;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lhi;->b:I

    iget-object p0, p0, Lhi;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/n0/e;

    invoke-static {p0, p1}, Lcom/batch/android/n0/e;->f(Lcom/batch/android/n0/e;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/n0/d;

    invoke-static {p0, p1}, Lcom/batch/android/n0/d;->b(Lcom/batch/android/n0/d;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/batch/android/l/c;

    invoke-static {p0, p1}, Lcom/batch/android/l/c;->q(Lcom/batch/android/l/c;Landroid/view/View;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/batch/android/m0/a;

    invoke-static {p0, p1}, Lcom/batch/android/m0/a;->b(Lcom/batch/android/m0/a;Landroid/view/View;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {p0, p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->a(Lcom/sightcall/videoplayer/view/VideoPlayerBar;Landroid/view/View;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;

    invoke-static {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->B(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Landroid/view/View;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;->a(Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    :cond_1
    const-string p0, "watchActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
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

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->Z:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->LIGHT_UP_SNEAKERS:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

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

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->P(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Landroid/view/View;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
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

    :pswitch_a
    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_4
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_b
    check-cast p0, Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->P(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
