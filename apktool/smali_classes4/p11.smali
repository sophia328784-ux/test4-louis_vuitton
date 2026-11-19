.class public final synthetic Lp11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lp11;->b:I

    iput-object p1, p0, Lp11;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lp11;->b:I

    const-wide v3, 0xffffffffL

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v0, Lp11;->c:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkSpotifyHelper;->b(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->b(Lcom/linkplay/core/device/LPDevice;)Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;->PM:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->k:Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->k:Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getBatteryPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;->setBatteryLevel(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->k:Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->O:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;

    invoke-virtual {v4}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "KEY_KISA_CONSENTS"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRA_KISA_CONSENT_RESULT"

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/FragmentKt;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->L:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OnConfirmKisaConsentsEvent;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-direct {v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OnConfirmKisaConsentsEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    invoke-interface {v2, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V()V

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->B9()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->d:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->I:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f010037

    const v3, 0x7f01003a

    invoke-virtual {v0, v2, v3, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->NO_CUSTOMIZATION:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v13, v11

    invoke-static/range {v7 .. v17}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;->a(Ljava/lang/String;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;Z)Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->p1:Ljava/lang/String;

    const v4, 0x7f0a0204

    invoke-virtual {v0, v4, v2, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto :goto_1

    :cond_1
    const-string v0, "router"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->P(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->K:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$HowToGetWatchfaceClickEvent;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->c:Ljava/lang/String;

    :cond_3
    invoke-direct {v2, v6}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$HowToGetWatchfaceClickEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->i:Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->P(Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;)V

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    const-string v0, "tracker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_5
    check-cast v0, Ljava/lang/Throwable;

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;->j(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->c(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    check-cast v1, Lcoil3/compose/AsyncImagePainter$State;

    sget-object v2, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    instance-of v2, v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    new-instance v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    invoke-direct {v1, v0}, Lcoil3/compose/AsyncImagePainter$State$Loading;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    goto :goto_2

    :cond_6
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    goto :goto_2

    :cond_7
    instance-of v0, v1, Lcoil3/compose/AsyncImagePainter$State$Error;

    if-eqz v0, :cond_8

    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Error;

    iget-object v0, v1, Lcoil3/compose/AsyncImagePainter$State$Error;->b:Lcoil3/request/ErrorResult;

    iget-object v0, v0, Lcoil3/request/ErrorResult;->c:Ljava/lang/Throwable;

    :cond_8
    :goto_2
    return-object v1

    :pswitch_8
    check-cast v0, Lcom/dynatrace/agent/useraction/UserActionController;

    check-cast v1, Lcom/dynatrace/agent/events/EventContent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/dynatrace/agent/useraction/UserActionController;->d:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v2}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v2

    iget-object v3, v1, Lcom/dynatrace/agent/events/EventContent;->a:Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/dynatrace/agent/events/EventContent;->b:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/UserActionController;->a:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    if-lez v4, :cond_9

    invoke-virtual {v0, v3, v1, v2}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->e(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v1, v2}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->d(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v3, ", "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v7}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialClickScreen;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialClickScreen;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;->Pb(Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lkotlinx/serialization/internal/TripleSerializer;

    check-cast v1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lkotlinx/serialization/internal/TripleSerializer;->a:Lkotlinx/serialization/KSerializer;

    invoke-interface {v2}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const-string v4, "first"

    invoke-virtual {v1, v4, v2, v3, v7}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V

    iget-object v2, v0, Lkotlinx/serialization/internal/TripleSerializer;->b:Lkotlinx/serialization/KSerializer;

    invoke-interface {v2}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const-string v4, "second"

    invoke-virtual {v1, v4, v2, v3, v7}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V

    iget-object v0, v0, Lkotlinx/serialization/internal/TripleSerializer;->c:Lkotlinx/serialization/KSerializer;

    invoke-interface {v0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v2, "third"

    invoke-virtual {v1, v2, v0, v3, v7}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_b

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_5

    :cond_b
    move-object v2, v6

    :goto_5
    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    if-eqz v0, :cond_c

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)V

    goto :goto_6

    :cond_c
    const-string v0, "watchActivityRouter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_d
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    check-cast v1, Landroidx/compose/ui/layout/LayoutInfo;

    sget v2, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->d(Landroidx/compose/ui/layout/LayoutInfo;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutInfo;->w()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-static {v1, v5}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/geometry/Rect;->g(Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    move v5, v7

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;->b:J

    iget v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;->a:F

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v0

    invoke-direct {v8, v0, v1, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x0

    const/16 v17, 0x7e

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v7 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Landroidx/compose/material3/SnackbarHostState;

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/semantics/LiveRegionMode;->b:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/semantics/LiveRegionMode;->c:I

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->m(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    iget-object v0, v0, Landroidx/compose/material3/SnackbarHostState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/SnackbarData;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroidx/compose/material3/SnackbarData;->a()Landroidx/compose/material3/SnackbarVisuals;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroidx/compose/material3/SnackbarVisuals;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :cond_10
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Landroidx/compose/ui/text/TextLinkStyles;

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    sget-object v2, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    const/16 v4, 0xe

    if-eqz v3, :cond_11

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object v5, v3, Landroidx/compose/ui/text/LinkAnnotation$Url;->b:Landroidx/compose/ui/text/TextLinkStyles;

    if-nez v5, :cond_11

    iget-object v2, v3, Landroidx/compose/ui/text/LinkAnnotation$Url;->a:Ljava/lang/String;

    iget-object v3, v3, Landroidx/compose/ui/text/LinkAnnotation$Url;->c:Landroidx/compose/ui/text/LinkInteractionListener;

    new-instance v5, Landroidx/compose/ui/text/LinkAnnotation$Url;

    invoke-direct {v5, v2, v0, v3}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    invoke-static {v1, v5, v7, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->a(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v1

    goto :goto_8

    :cond_11
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    if-eqz v3, :cond_12

    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    iget-object v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->b:Landroidx/compose/ui/text/TextLinkStyles;

    if-nez v3, :cond_12

    iget-object v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->a:Ljava/lang/String;

    iget-object v2, v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->c:Landroidx/compose/ui/text/LinkInteractionListener;

    new-instance v5, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    invoke-direct {v5, v3, v0, v2}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    invoke-static {v1, v5, v7, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->a(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v1

    :cond_12
    :goto_8
    return-object v1

    :pswitch_11
    check-cast v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a:Landroidx/compose/runtime/MutableFloatState;

    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v4

    add-float/2addr v4, v1

    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_13

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v0

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v1

    sub-float v1, v0, v1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_14

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v0

    neg-float v1, v0

    :cond_14
    :goto_9
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v0

    add-float/2addr v0, v1

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->w(F)V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_12
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v5

    const/16 v8, 0x20

    shr-long/2addr v5, v8

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    float-to-int v5, v5

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v7, v7, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Landroidx/compose/foundation/layout/g;

    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v2, v1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Landroidx/compose/animation/core/AnimationScope;->f:Landroidx/compose/animation/core/AnimationVector;

    check-cast v1, Landroidx/compose/animation/core/AnimationVector1D;

    iget v1, v1, Landroidx/compose/animation/core/AnimationVector1D;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/layout/g;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Lj1;

    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v1, v1, Landroidx/compose/ui/unit/IntSize;->a:J

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
