.class public final synthetic Ll0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Ll0;->b:I

    iput-object p1, p0, Ll0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 10
    iput p3, p0, Ll0;->b:I

    iput-object p1, p0, Ll0;->d:Ljava/lang/Object;

    iput-object p2, p0, Ll0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Ll0;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$PersonalInfoConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$PersonalInfoConfirmEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->va(Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel;)V

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->c4()Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->n3(Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->yc(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;

    iget-object p0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$CloseEvent;->a:Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$CloseEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;->ya(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->t:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpAddToCartCommonKt;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    iget-object p0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->r3()V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object p0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    iget-object v0, v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->a:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast v0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object p0

    sget v2, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTrackerKt;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": unregistering receiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->b:Landroid/content/Context;

    iget-object v0, v0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->f:Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$broadcastReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_2
    monitor-exit v1

    throw p0

    :pswitch_a
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string v3, "/api/publication/maintenance"

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->p:Z

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->g(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :cond_6
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableLongState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_c
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/ScrollState;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableFloatState;

    sget v3, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v3

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    iget-object v0, v0, Landroidx/compose/foundation/ScrollState;->a:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {p0, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->K0(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {p0, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->K0(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->a:Landroidx/compose/animation/core/SpringSpec;

    invoke-interface {v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    iget-object v0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/universal/model/Session;

    invoke-static {v0, p0}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->b(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;Lcom/sightcall/universal/model/Session;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_16
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavHostController;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;->p5()Lcom/vuitton/android/domain/monitoring/MonitorAction;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/domain/monitoring/address/MonitorActionHolder;->a:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorAutocomplete;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorAutocomplete;

    const/4 v1, 0x6

    invoke-static {p0, v0, v3, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;->G6()V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/compose/ManagedActivityResultLauncher;

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->q:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->H()Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;

    move-result-object v4

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$AddAddressEvent;->a:Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$AddAddressEvent;

    invoke-interface {v4, v5}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;->Z4(Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->H()Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;->d:Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;

    invoke-direct {v2, v1, v3}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;-><init>(ZLjava/lang/String;)V

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;Landroidx/fragment/app/FragmentActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    iget-object v0, p0, Ll0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Ll0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusRequester;->a(Landroidx/compose/ui/focus/FocusRequester;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
