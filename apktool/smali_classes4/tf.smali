.class public final synthetic Ltf;
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

    iput p3, p0, Ltf;->b:I

    iput-object p1, p0, Ltf;->c:Ljava/lang/Object;

    iput-object p2, p0, Ltf;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Ltf;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Ltf;->d:Ljava/lang/Object;

    iget-object p0, p0, Ltf;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->M1(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    move-result-wide v0

    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;->d:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, v5, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;

    iget-object v1, v5, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$connectToWifi$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lz1;

    const/16 v1, 0x15

    invoke-direct {v0, v5, v1}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    iget-object p0, p0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->b:Landroidx/compose/runtime/InternalComposer;

    invoke-virtual {p0, v5}, Landroidx/compose/runtime/InternalComposer;->Q(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lcoil3/fetch/Fetcher$Factory;

    check-cast v5, Lkotlin/reflect/KClass;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    move-object v0, p0

    check-cast v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->a()Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;

    move-result-object p0

    sget-object v6, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v6, p0

    if-eq p0, v4, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    sget-object p0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Checkout:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    :goto_0
    move-object v1, p0

    move v6, v2

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    goto :goto_3

    :cond_2
    sget-object p0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Other:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Home:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    goto :goto_0

    :goto_1
    invoke-virtual {v5}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->b()Ljava/lang/String;

    move-result-object v2

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->DISTANT_CARE:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    if-ne v5, p0, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    const/16 v6, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->i(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;ZI)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3
    return-object v3

    :pswitch_6
    move-object v4, p0

    check-cast v4, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    move-object v8, v5

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    iget-object p0, v4, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Product:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    iget-object v6, v8, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->a:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->i(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;ZI)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    move v6, v2

    move-object v7, p0

    check-cast v7, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    check-cast v5, Ljava/lang/String;

    iget-object p0, v7, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v7, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v1

    iget-object v1, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-object v5, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-boolean v4, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->c:Z

    iput-boolean v4, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->m()V

    sget-object v8, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->OrderConfirmed:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v12, 0x0

    const/16 v13, 0x1c

    const-string v9, "Order Confirmed"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->i(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;ZI)V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v4, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    iput-object v3, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-boolean v6, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->c:Z

    iput-boolean v4, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    const-string v1, "trackOrder"

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_5
    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h()V

    iput-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->a:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Landroidx/navigation/NavHostController;

    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Lck;

    invoke-direct {v2, v5, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/navigation/NavOptionsBuilderKt;->a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/internal/NavControllerImpl;->o(Ljava/lang/String;Landroidx/navigation/NavOptions;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->c()V

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    move v6, v2

    check-cast p0, Landroidx/compose/runtime/State;

    check-cast v5, Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {p0, v0}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result p0

    if-lez p0, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v6

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Landroidx/compose/ui/unit/Density;

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->a()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result p0

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    return-object v0

    :pswitch_e
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    check-cast v5, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    check-cast v5, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    if-eqz p0, :cond_7

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseClickedEvent;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseClickedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    :cond_7
    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->C6()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    check-cast v5, Landroidx/navigation/NavHostController;

    invoke-virtual {p0, v4}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->f(Z)V

    invoke-virtual {v5}, Landroidx/navigation/NavController;->e()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;->c()V

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    check-cast v5, Ljava/util/UUID;

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lr6;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v5, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lxn0;

    const/16 v3, 0x13

    invoke-direct {v2, v1, v3}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->v(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/Configuration;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->f:Ljava/util/List;

    invoke-static {v1, v0, p0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExpiredPrebook;

    if-eqz v0, :cond_8

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->Y8()V

    goto :goto_5

    :cond_8
    invoke-interface {p0, v3}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->A5(Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;)V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Landroidx/navigation3/runtime/NavBackStack;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$InfoForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$InfoForm;

    invoke-virtual {p0, v0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->V8()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$AccountStatus;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$AccountStatus;

    invoke-virtual {p0, v0}, Landroidx/navigation3/runtime/NavBackStack;->remove(Ljava/lang/Object;)Z

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->a:Ljava/lang/String;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->a:Ljava/lang/String;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->c:Z

    xor-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;Z)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    move-result-object v2

    :cond_a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-interface {p0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
