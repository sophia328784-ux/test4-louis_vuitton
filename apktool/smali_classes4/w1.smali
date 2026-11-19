.class public final synthetic Lw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lw1;->b:I

    iput-object p1, p0, Lw1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lw1;->b:I

    const-string v1, "SELECTED_CANCELLATION_REASON_ID"

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p0, p0, Lw1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    sget v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->q:I

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    invoke-direct {v0, p0, v4, v3, v5}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lokhttp3/Handshake;

    sget v0, Lokhttp3/internal/connection/ConnectPlan;->y:I

    invoke-virtual {p0}, Lokhttp3/Handshake;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_3
    check-cast p0, Landroidx/compose/runtime/MutableIntState;

    sget-object v0, Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVTimelineKt;->a:Lcom/vuitton/android/presentation/compose/components/ComposableSingletons$LVTimelineKt;

    sget-object v0, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;->c(I)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->g:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->getDefault()Lkotlinx/coroutines/scheduling/DefaultScheduler;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "dispatcherProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_6
    check-cast p0, Landroidx/activity/compose/ManagedActivityResultLauncher;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    move-object v0, p0

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    invoke-interface {p0, v0, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->s:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_1

    :cond_4
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity;->q:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModel;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewState;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v3, v5

    :goto_2
    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ConfirmCancellationClickedEvent;

    invoke-direct {v4, v3, v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ConfirmCancellationClickedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;->q:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    if-eqz v3, :cond_7

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;->b:Ljava/lang/String;

    :cond_7
    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;->N2()Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ConfirmCancellationClickedEvent;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ConfirmCancellationClickedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->L(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/vuitton/android/presentation/CacheFactory;

    new-instance v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;-><init>()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/CacheFactory;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/datasource/cache/SimpleCache;

    iput-object p0, v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->a:Landroidx/media3/datasource/cache/SimpleCache;

    new-instance p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->e:Z

    const/16 v1, 0x2710

    iput v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->d:I

    iput v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c:I

    iput-object p0, v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->d:Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    iput v3, v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->e:I

    return-object v0

    :pswitch_10
    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$LoginContinueEvent;->a:Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel$LoginContinueEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->va(Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoTrackingUiModel;)V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->Y1()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLanguageSelectorEvent;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLanguageSelectorEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    invoke-virtual {p0}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    invoke-interface {p0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->o0()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    return-object p0

    :pswitch_19
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    return-object p0

    :pswitch_1a
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_9
    const-string p0, "authenticationActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_1b
    check-cast p0, Lkotlin/time/AbstractLongTimeSource;

    invoke-virtual {p0}, Lkotlin/time/AbstractLongTimeSource;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Landroid/view/Window;

    sget v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a:F

    if-eqz p0, :cond_a

    invoke-virtual {p0, v4}, Landroid/view/Window;->setDimAmount(F)V

    :cond_a
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
