.class public final synthetic Lq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq;->d:Ljava/lang/Object;

    iput-object p2, p0, Lq;->c:Ljava/lang/Object;

    iput-object p3, p0, Lq;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq;->e:Ljava/lang/Object;

    iput-object p2, p0, Lq;->c:Ljava/lang/Object;

    iput-object p3, p0, Lq;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;)V
    .locals 1

    .line 15
    const/16 v0, 0x8

    iput v0, p0, Lq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq;->d:Ljava/lang/Object;

    iput-object p3, p0, Lq;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p4, p0, Lq;->b:I

    iput-object p1, p0, Lq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq;->e:Ljava/lang/Object;

    iput-object p3, p0, Lq;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lq;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBottomSheetScreen$AssessmentBottomSheetDecline;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBottomSheetScreen$AssessmentBottomSheetDecline;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lq;->d:Ljava/lang/Object;

    iget-object v6, p0, Lq;->e:Ljava/lang/Object;

    iget-object p0, p0, Lq;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v6, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lokhttp3/CertificatePinner;

    check-cast v6, Lokhttp3/Handshake;

    check-cast v5, Lokhttp3/Address;

    sget v0, Lokhttp3/internal/connection/ConnectPlan;->y:I

    iget-object p0, p0, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lokhttp3/Handshake;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, v5, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    sget p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->d:I

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->ProductCategory:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->i(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;ZI)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lokhttp3/CertificatePinner;

    check-cast v6, Ljava/util/List;

    check-cast v5, Ljava/lang/String;

    iget-object p0, p0, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v5, v6}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, p0

    :cond_3
    :goto_1
    check-cast v6, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p0

    :pswitch_3
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v5, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, v5, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->h:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;->a:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v6, p0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->c(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    check-cast v5, Landroid/content/Context;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    if-ne p0, v3, :cond_5

    move v2, v3

    :cond_5
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v2, :cond_9

    :cond_6
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->d:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$NfcScanActivation;->a:Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$NfcScanActivation;

    invoke-interface {p0, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p0

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    if-eqz v0, :cond_7

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->h:Ljava/lang/String;

    :cond_7
    if-nez v4, :cond_8

    const-string v4, ""

    :cond_8
    const-string v0, "CXId"

    invoke-virtual {p0, v4, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;

    if-nez v0, :cond_b

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    if-eqz p0, :cond_c

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_5

    :cond_b
    :goto_4
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_c
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;

    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;->c:Ljava/lang/String;

    invoke-interface {p0, v0, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCarouselSwipeEvent;

    invoke-direct {v0, v6}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCarouselSwipeEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result p0

    if-eqz p0, :cond_d

    iget-object p0, v5, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    invoke-interface {v6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Ljava/io/File;

    check-cast v6, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;

    check-cast v5, Landroidx/media3/database/StandaloneDatabaseProvider;

    new-instance v0, Landroidx/media3/datasource/cache/SimpleCache;

    invoke-direct {v0, p0, v6, v5}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/database/DatabaseProvider;)V

    return-object v0

    :pswitch_a
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v6, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->h2(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->p:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    invoke-interface {p0, v0}, Landroidx/compose/foundation/relocation/BringIntoViewResponder;->g1(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    :cond_e
    return-object v4

    :pswitch_b
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Landroidx/compose/runtime/State;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseIntentionEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseIntentionEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    if-eqz v0, :cond_f

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->A5(Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;)V

    goto :goto_6

    :cond_f
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->b:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsScreenKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    goto :goto_7

    :cond_10
    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_11
    invoke-interface {v6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v6, Landroid/content/Context;

    check-cast v5, Landroidx/compose/runtime/State;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->BOOKING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->c(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_12
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    check-cast v5, Lcom/perfectcorp/perfectlib/SkuInfo;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    new-instance v0, Lw9;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lw9;-><init>(I)V

    invoke-virtual {p0, v6, v5, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->I(Lkotlinx/coroutines/CoroutineScope;Lcom/perfectcorp/perfectlib/SkuInfo;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    check-cast v5, Landroidx/compose/runtime/MutableState;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->m:Lcom/perfectcorp/perfectlib/SkuInfo;

    if-eqz v0, :cond_13

    new-instance v1, Lce;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v5, v2}, Lce;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {p0, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->I(Lkotlinx/coroutines/CoroutineScope;Lcom/perfectcorp/perfectlib/SkuInfo;Lkotlin/jvm/functions/Function0;)V

    :cond_13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    check-cast v6, Landroidx/compose/runtime/internal/AwaiterQueue;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->a()V

    iget-object v0, v6, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    iget v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    :cond_14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    ushr-int/lit8 v2, p0, 0x1b

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_15

    add-int/lit8 v2, p0, -0x1

    goto :goto_8

    :cond_15
    move v2, p0

    :goto_8
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;->a:Ljava/lang/String;

    invoke-interface {v6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    check-cast v6, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$TrackDetail;

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$AudioGuideScreen;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$AudioGuideScreen;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_16
    invoke-interface {v6, v4}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    check-cast v6, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v1, :cond_17

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_9

    :cond_17
    move-object v0, v4

    :goto_9
    if-eqz v0, :cond_18

    sget-object v1, Lcom/vuitton/android/presentation/tracking/AudioGuideActions;->STARTED:Lcom/vuitton/android/presentation/tracking/AudioGuideActions;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;->a:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->b(Lcom/vuitton/android/presentation/tracking/AudioGuideActions;Ljava/lang/String;)V

    :cond_18
    invoke-interface {p0, v4}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->o:Z

    if-eqz p0, :cond_19

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_a

    :cond_19
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->n:Z

    if-eqz p0, :cond_1a

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_b

    :cond_1a
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    check-cast v6, Landroidx/navigation/NavHostController;

    check-cast v5, Ljava/util/Map;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->n0()V

    invoke-virtual {v6}, Landroidx/navigation/NavController;->e()Z

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast p0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    check-cast v5, Landroid/content/ClipboardManager;

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {p0, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->a:Ljava/lang/String;

    const-string v0, "Session Id"

    invoke-static {v0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast v6, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v6, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnLongPressMessageEvent;->a:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnLongPressMessageEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast v6, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet$Exit;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnCloseExitPopinEvent;->a:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnCloseExitPopinEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_1b
    invoke-interface {v6, v4}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->T4(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet;)V

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
