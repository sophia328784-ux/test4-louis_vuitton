.class final Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$4"
    f = "MainActivityViewModelImpl.kt"
    l = {
        0x95,
        0x96,
        0x97,
        0x9b,
        0x9d,
        0x9e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->d:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->d:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->d:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->b:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->b:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->c:I

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-interface {v3, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->b:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->c:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TRUNK_SPEAKER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    const/4 v3, 0x3

    iput v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->c:I

    invoke-virtual {v1, p1, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/vuitton/android/presentation/LVApplication;

    invoke-static {}, Lcom/lp/ble/manager/LPBLEManager;->getInstance()Lcom/lp/ble/manager/LPBLEManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lp/ble/manager/LPBLEManager;->init(Landroid/app/Application;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/LVApplication;->l:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;

    if-eqz p1, :cond_4

    new-instance v3, Lcom/linkplay/core/app/LPDeviceManagerParam;

    invoke-direct {v3}, Lcom/linkplay/core/app/LPDeviceManagerParam;-><init>()V

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->b:Landroid/app/Application;

    iput-object v6, v3, Lcom/linkplay/core/app/LPDeviceManagerParam;->context:Landroid/app/Application;

    const-string v6, ""

    iput-object v6, v3, Lcom/linkplay/core/app/LPDeviceManagerParam;->appid:Ljava/lang/String;

    const/16 v6, 0xa

    iput v6, v3, Lcom/linkplay/core/app/LPDeviceManagerParam;->registerMaintainMaxAgeSeconds:I

    iput-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->c:Lcom/linkplay/core/app/LPDeviceManagerParam;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v3

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->c:Lcom/linkplay/core/app/LPDeviceManagerParam;

    if-eqz v6, :cond_3

    invoke-virtual {v3, v6, p1}, Lcom/linkplay/core/app/LPDeviceManager;->init(Lcom/linkplay/core/app/LPDeviceManagerParam;Lcom/linkplay/core/clingx/InitUpnpListener;)V

    invoke-virtual {v3, p1}, Lcom/linkplay/core/app/LPDeviceManager;->addObserver(Lcom/linkplay/core/app/LPDeviceManagerObserver;)V

    invoke-virtual {v3, v5}, Lcom/linkplay/core/app/LPDeviceManager;->search([Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p0, "param"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string p0, "trunkDeviceManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_5
    :goto_3
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->b:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->c:I

    invoke-virtual {v1, p1, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_6

    :cond_6
    :goto_4
    invoke-interface {v3, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->b:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->c:I

    invoke-virtual {v1, p1, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;

    const/4 v0, 0x6

    iput v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;->c:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_8

    :goto_6
    return-object v2

    :cond_8
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
