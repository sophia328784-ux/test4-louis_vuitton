.class public final Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00011B\u00b9\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100\u00a8\u00062"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;",
        "listenAppsFlyerDeeplinkUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "contactUsDelegate",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;",
        "logoutUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;",
        "getCartSizeUseCase",
        "Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;",
        "updateLocaleUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;",
        "startAppsFlyerUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;",
        "getECommerceStatusUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;",
        "resetDynamicYieldIdUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;",
        "isStoreModeStillValidUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;",
        "initializeDynamicYieldUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;",
        "unsetAppsFlyerCustomerIdUseCase",
        "Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;",
        "updateAITooltipVisibilityUseCase",
        "Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;",
        "hasAITooltipBeenDisplayedUseCase",
        "Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;",
        "clearContributionLinkToLaunchUseCase",
        "Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;",
        "shouldRequestNotificationsPermissionUseCase",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final J:Ljava/lang/String;


# instance fields
.field public final A:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final B:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final D:Lkotlinx/coroutines/flow/Flow;

.field public final E:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final F:Lkotlinx/coroutines/flow/SharedFlow;

.field public final G:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final H:Lkotlinx/coroutines/flow/SharedFlow;

.field public final I:Lkotlinx/coroutines/flow/StateFlow;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final f:Lcom/vuitton/android/presentation/push/NotificationsManager;

.field public final g:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;

.field public final t:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final u:Lkotlinx/coroutines/flow/Flow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "MainActivityViewModelImpl"

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->J:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;)V
    .locals 20
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->f:Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;

    const/4 v1, -0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->u:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->w:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v12, p3

    iget-object v12, v12, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;->a:Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    invoke-interface {v12}, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;->d()Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->D:Lkotlinx/coroutines/flow/Flow;

    const/4 v12, 0x1

    const/4 v13, 0x5

    invoke-static {v5, v12, v3, v13}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->E:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v14}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->F:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {v5, v12, v3, v13}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->G:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v14}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->H:Lkotlinx/coroutines/flow/SharedFlow;

    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v14, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v4, 0x7

    new-array v4, v4, [Lkotlinx/coroutines/flow/Flow;

    aput-object v9, v4, v5

    aput-object v7, v4, v12

    const/4 v7, 0x2

    aput-object v8, v4, v7

    const/4 v7, 0x3

    aput-object v14, v4, v7

    const/4 v8, 0x4

    aput-object v6, v4, v8

    aput-object v11, v4, v13

    aput-object v10, v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v8, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    const/16 v9, 0x1ff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 p1, v8

    move/from16 p11, v9

    move-object/from16 p12, v10

    move/from16 p2, v11

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move-object/from16 p7, v16

    move/from16 p8, v17

    move/from16 p9, v18

    move/from16 p10, v19

    invoke-direct/range {p1 .. p12}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v4, v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->I:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v2, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v4, p22

    invoke-virtual {v4, v2, v5}, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$RequestNotificationPermission;->a:Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$RequestNotificationPermission;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$1;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    invoke-static {v1, v3, v3, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$2;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    invoke-static {v1, v3, v3, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$3;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    invoke-static {v1, v3, v3, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    invoke-static {v1, v3, v3, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$5;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$5;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    invoke-static {v1, v3, v3, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->STORE_MODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput v4, v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$getActivityFeaturesFlags$1;->d:I

    invoke-virtual {p1, v2, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;->a()Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    move-result-object p0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;->Enabled:Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    if-ne p0, v0, :cond_4

    move v3, v4

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    invoke-direct {p0, p1, v3}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;-><init>(ZZ)V

    return-object p0
.end method


# virtual methods
.method public final A4()Z
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->c()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final C5()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->F:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V
    .locals 2

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;->b:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$ShowAlreadySignedBottomSheet;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowAlreadySignedBottomSheet;

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$ShowAlreadySignedBottomSheet;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$ShowAlreadySignedBottomSheet;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowAlreadySignedBottomSheet;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;->b:Lkotlin/Pair;

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/Pair;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->a:Ljava/util/List;

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowSightCallBottomSheet;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowSightCallBottomSheet;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-direct {v1, p1, v0}, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final N8(Ljava/lang/Integer;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$updateCartSize$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$updateCartSize$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final O3()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->H:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final S1(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->G:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final S2()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->I:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final f0()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$updateTooltipVisibility$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$updateTooltipVisibility$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final gb(Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final h()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->u:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final h2(Z)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final k2(Z)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final k8()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$clearContributionLinkToLaunch$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$clearContributionLinkToLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final lb(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$updateLocaleAndRestart$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$updateLocaleAndRestart$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final p2(Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnExploreHitEvent;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Wall"

    const-string v4, "explore"

    const-string v5, "footer"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCatalogHitEvent;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Wall"

    const-string v4, "catalog"

    const-string v5, "footer"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCartHitEvent;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Wall"

    const-string v4, "cart"

    const-string v5, "footer"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnServicesHitEvent;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/Wall"

    const-string v4, "services"

    const-string v5, "footer"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnWishlistHitEvent;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/Wall"

    const-string v3, "wishlist"

    const-string v4, "footer"

    const-string v5, "click"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final q()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$logoutUser$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$logoutUser$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final qb()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->D:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
