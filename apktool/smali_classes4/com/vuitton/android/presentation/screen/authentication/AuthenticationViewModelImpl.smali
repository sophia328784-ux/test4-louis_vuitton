.class public final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0081\u0002\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?\u00a2\u0006\u0004\u0008A\u0010B\u00a8\u0006C"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;",
        "authenticationAvailabilityUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;",
        "oauthCodeHelper",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "contactUsDelegate",
        "Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;",
        "kisaConsentsParser",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;",
        "loginUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;",
        "logoutUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;",
        "registerUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;",
        "getContactIdUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;",
        "getConsentListUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;",
        "refreshWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;",
        "updateContactIdUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;",
        "reportDYLoginEventUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;",
        "codeExchangeUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;",
        "reportDYSignUpEventUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;",
        "resetDynamicYieldIdUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;",
        "setAppsFlyerCustomerIdUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;",
        "getConnectedObjectListUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;",
        "unsetAppsFlyerCustomerIdUseCase",
        "Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;",
        "refreshFacadeUserSessionUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;",
        "authenticateAtgCodeExchangeUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;",
        "finaliseSalesforceAuthenticationUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;)V",
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


# instance fields
.field public final A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final B:Z

.field public final C:Z

.field public final D:Z

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Z

.field public final H:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final I:Lkotlinx/coroutines/flow/Flow;

.field public final J:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final K:Lkotlinx/coroutines/flow/Flow;

.field public final L:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final M:Lkotlinx/coroutines/flow/Flow;

.field public final N:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final O:Lkotlinx/coroutines/flow/Flow;

.field public final P:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final Q:Lkotlinx/coroutines/flow/Flow;

.field public final R:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final S:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final T:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final U:Lkotlinx/coroutines/flow/Flow;

.field public final V:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public W:Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

.field public final X:Lkotlinx/coroutines/flow/StateFlow;

.field public final Y:Lkotlinx/coroutines/flow/StateFlow;

.field public Z:Lkotlinx/coroutines/Job;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/core/events/LVEventSender;

.field public final d:Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;

.field public final e:Landroidx/lifecycle/SavedStateHandle;

.field public final f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final g:Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;

.field public final h:Lcom/vuitton/android/presentation/push/NotificationsManager;

.field public final i:Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

.field public final v:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

.field public final w:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

.field public final x:Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

.field public final y:Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;

.field public final z:Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;)V
    .locals 13
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v3, p5

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v3, p6

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v3, p7

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v3, p8

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;

    move-object/from16 v3, p9

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->e:Landroidx/lifecycle/SavedStateHandle;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v3, p11

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->g:Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;

    move-object/from16 v3, p12

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->h:Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-object/from16 v3, p13

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;

    move-object/from16 v3, p14

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    move-object/from16 v3, p15

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;

    move-object/from16 v3, p16

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v3, p17

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

    move-object/from16 v3, p18

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

    move-object/from16 v3, p19

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;

    move-object/from16 v3, p20

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

    move-object/from16 v3, p21

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    move-object/from16 v3, p22

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;

    move-object/from16 v3, p23

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    move-object/from16 v3, p24

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    move-object/from16 v3, p25

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

    move-object/from16 v3, p27

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    move-object/from16 v3, p28

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    move-object/from16 v3, p29

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

    move-object/from16 v3, p30

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;

    move-object/from16 v3, p31

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;

    move-object/from16 v3, p3

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_LOGIN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->B:Z

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->C:Z

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER_KISA:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->D:Z

    invoke-virtual/range {p26 .. p26}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->E:Ljava/lang/String;

    invoke-virtual/range {p26 .. p26}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->F:Ljava/lang/String;

    invoke-virtual/range {p26 .. p26}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->G:Z

    const/4 v0, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->H:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->I:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->J:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->K:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->L:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->M:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->N:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->O:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->P:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->Q:Lkotlinx/coroutines/flow/Flow;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->T:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->U:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, v1, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x80

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;->a:Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper$Companion;->a([B)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object p2, v0

    move-object/from16 p4, v1

    move/from16 p8, v3

    move-object/from16 p9, v8

    move-object/from16 p3, v9

    move-object/from16 p5, v10

    move-object/from16 p6, v11

    move-object/from16 p7, v12

    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->W:Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    iget-object p1, p1, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->g:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->X:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$loadingState$1;

    const/4 v0, 0x3

    invoke-direct {p1, v0, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v0, v6, v7, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    invoke-static {v0, p1, v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->Y:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->OTHER:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {v2, p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final B5(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedAtgLoginLegacy$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedAtgLoginLegacy$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final B9()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final D1()Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->W:Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    return-object p0
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final J8()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->N:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final L0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->B:Z

    return p0
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final M7()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->O:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final N5()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->Y:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final R()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->D:Z

    return p0
.end method

.method public final R4()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->G:Z

    invoke-static {v1, v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;

    const-string v2, "dispatchCountry"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$appendQueryParameters$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$appendQueryParameters$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Landroid/net/Uri$Builder;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->L:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->b:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final V9(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->F:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->G:Z

    invoke-static {v1, v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;

    const-string v2, "dispatchCountry"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "cid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$appendQueryParameters$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$appendQueryParameters$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Landroid/net/Uri$Builder;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->L:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->b:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    return-void
.end method

.method public final X2(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->e:Landroidx/lifecycle/SavedStateHandle;

    const-string v1, "consumed_atg_code"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->Z:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/SavedStateHandle;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->Z:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedAtgLogin$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedAtgLogin$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v1, v1, v2, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->Z:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a7()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final ab()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->X:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final e6()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->Q:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final f7(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final h()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->I:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final j0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->C:Z

    return p0
.end method

.method public final k()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->K:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final k6(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final l2()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->M:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final m7()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final q()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$logoutUser$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$logoutUser$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final q6()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedLogin$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedLogin$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final r9()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->U:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final x4(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedCodeExchange$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedCodeExchange$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final yc(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3
    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1;

    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->b:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p3, v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$2$1;

    invoke-direct {v6, p0, v4}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$2$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, p3, v4, v6, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v5

    invoke-virtual {v2, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$2$2;

    invoke-direct {v6, p0, v4}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$2$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, p3, v4, v6, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v5

    invoke-virtual {v2, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$2$3;

    invoke-direct {v6, p0, v4}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$2$3;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, p3, v4, v6, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p3

    invoke-virtual {v2, p3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p3

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    const/4 v2, 0x1

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    invoke-static {p3, v0}, Lkotlinx/coroutines/AwaitKt;->b(Ljava/util/Collection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_1
    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->zc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    goto :goto_6

    :cond_3
    move v7, p2

    move p2, p1

    move p1, v7

    :goto_2
    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    const/4 p3, 0x3

    iput p3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    invoke-virtual {p3, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_6

    :cond_4
    :goto_3
    check-cast p3, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    const/4 v2, 0x4

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    invoke-interface {p3, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_4
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    move-object v2, p3

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p1, :cond_6

    iput-object p3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->d:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    const/4 p3, 0x5

    iput p3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    invoke-virtual {p3, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_6

    :cond_6
    iput-object p3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->d:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    const/4 p3, 0x6

    iput p3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    invoke-virtual {p3, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->b:Z

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->c:Z

    const/4 p1, 0x7

    iput p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    sget-object p1, Lcom/vuitton/android/core/events/AppEvent$LogInEvent;->a:Lcom/vuitton/android/core/events/AppEvent$LogInEvent;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_6
    return-object v1

    :cond_8
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method

.method public final zc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$updateContactId$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {v1, v0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->h:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->m(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;->a:Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;->b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->b()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;->b(Ljava/lang/String;)V

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "AuthenticationViewModelImpl"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v0, p1, p0, v3}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
