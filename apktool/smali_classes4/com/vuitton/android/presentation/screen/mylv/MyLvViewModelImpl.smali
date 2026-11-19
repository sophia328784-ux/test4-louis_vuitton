.class public final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u00e1\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u00a2\u0006\u0004\u00089\u0010:\u00a8\u0006;"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "contactUsDelegate",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;",
        "getOngoingOrdersUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;",
        "clearOrdersCacheUseCase",
        "Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;",
        "getHotContentUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;",
        "getCareServiceListBffUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;",
        "getCareServiceListUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;",
        "getBookingsUseCase",
        "Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;",
        "getCertificateListUseCase",
        "Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;",
        "getUserExclusiveSalesUseCase",
        "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;",
        "getOnlineStoreAppointmentListUseCase",
        "Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;",
        "checkEligibilityForPassUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;",
        "getECommerceStatusUseCase",
        "Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;",
        "getUserConsentsUseCase",
        "Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;",
        "listenProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;",
        "getUserAvatarUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;",
        "getAccessibilityValueUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V",
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

.field public final B:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public final C:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final D:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final E:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final F:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final G:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final H:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final I:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final J:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final K:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final L:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final M:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final N:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final O:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final P:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final R:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final S:Lkotlinx/coroutines/flow/StateFlow;

.field public T:Z

.field public final U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final a:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final c:Lcom/vuitton/android/core/events/LVEventSender;

.field public final d:Lcom/vuitton/foundation/logger/Logger;

.field public final e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final f:Lcom/vuitton/android/presentation/push/NotificationsManager;

.field public final g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final h:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final i:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final v:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

.field public final w:Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

.field public final x:Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;

.field public final y:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

.field public final z:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V
    .locals 30
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->f:Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->h:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

    move-object/from16 v4, p17

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

    move-object/from16 v4, p19

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    move-object/from16 v4, p20

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-object/from16 v4, p21

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;

    move-object/from16 v4, p22

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v4, p23

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    move-object/from16 v4, p24

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

    move-object/from16 v4, p25

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;

    move-object/from16 v4, p26

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    move-object/from16 v4, p27

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    move-object/from16 v4, p2

    iget-object v4, v4, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v3}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->B:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    const/16 v15, 0x1fff

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 p4, v14

    move/from16 p18, v15

    move-object/from16 p19, v16

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v19

    move/from16 p8, v20

    move/from16 p9, v21

    move/from16 p10, v22

    move/from16 p11, v23

    move/from16 p12, v24

    move/from16 p13, v25

    move/from16 p14, v26

    move/from16 p15, v27

    move/from16 p16, v28

    move/from16 p17, v29

    invoke-direct/range {p4 .. p19}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;-><init>(ZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v16, ""

    move/from16 p2, v3

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p4, v5

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    const/16 v17, 0x3f

    const/16 v18, 0x0

    move-object/from16 p5, v16

    move/from16 p12, v17

    move-object/from16 p13, v18

    move/from16 p6, v19

    move/from16 p7, v20

    move/from16 p8, v21

    move/from16 p9, v22

    move/from16 p10, v23

    move/from16 p11, v24

    invoke-direct/range {p5 .. p13}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;-><init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p23, v6

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p5, v3

    invoke-static/range {p23 .. p23}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p6, v3

    invoke-static/range {p23 .. p23}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v16, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->f:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->g:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    move-object/from16 p7, v3

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p8, v3

    const/16 v3, 0xf

    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    aput-object v8, v3, p2

    const/4 v8, 0x1

    aput-object v9, v3, v8

    const/4 v8, 0x2

    aput-object v10, v3, v8

    const/4 v8, 0x3

    aput-object v11, v3, v8

    const/4 v9, 0x4

    aput-object v12, v3, v9

    const/4 v9, 0x5

    aput-object v13, v3, v9

    const/4 v9, 0x6

    aput-object v7, v3, v9

    aput-object v14, v3, p4

    const/16 v7, 0x8

    aput-object v15, v3, v7

    const/16 v7, 0x9

    aput-object p5, v3, v7

    const/16 v7, 0xa

    aput-object v5, v3, v7

    const/16 v5, 0xb

    aput-object v6, v3, v5

    const/16 v5, 0xc

    aput-object p6, v3, v5

    const/16 v5, 0xd

    aput-object p7, v3, v5

    const/16 v5, 0xe

    aput-object p8, v3, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v5, v3, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    const v9, 0xfffc

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 p5, v4

    move-object/from16 p4, v7

    move/from16 p21, v9

    move-object/from16 p22, v10

    move/from16 p6, v11

    move/from16 p7, v12

    move/from16 p8, v13

    move-object/from16 p9, v14

    move-object/from16 p10, v15

    move-object/from16 p11, v16

    move-object/from16 p12, v17

    move/from16 p14, v19

    move-object/from16 p15, v20

    move-object/from16 p16, v21

    move/from16 p17, v22

    move-object/from16 p18, v23

    move-object/from16 p19, v24

    move/from16 p20, v25

    invoke-direct/range {p4 .. p22}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLcom/vuitton/android/presentation/profile/models/ProfileUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;ZLjava/lang/Boolean;Ljava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5, v3, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->S:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v3, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$OpenMyLV;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$OpenMyLV;

    invoke-interface {v1, v4, v3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;

    move-object/from16 v4, p23

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v1, v4, v4, v3, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1;

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v1, v4, v4, v3, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initFeatureFlags$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v1, v4, v4, v3, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v1, v4, v4, v3, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1;

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v1, v4, v4, v3, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->OTHER:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {v2, v1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Fc()V

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

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

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_3

    sget-object v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadBookings;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadBookings;

    invoke-interface {p1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v3

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateBookings$1;->e:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, v3

    :goto_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    sget-object v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    const-string v2, "Unable to retrieve booking experiences list"

    invoke-interface {p0, v1, v2, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;->c:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    sget-object p1, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCertificates;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCertificates;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v4

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateCertificates$1;->e:I

    invoke-virtual {p1, v1}, Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, v4

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    const/16 v12, 0x3b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCertificatesError;

    invoke-direct {v2, p1}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCertificatesError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    const-string v2, "Unable to retrieve certificates list"

    invoke-interface {p0, v0, v2, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    instance-of v2, p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;

    invoke-direct {v2, p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;->c:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    sget-object p1, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyExclusiveOffers;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyExclusiveOffers;

    invoke-interface {v1, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    iput-object v5, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateExclusiveSales$1;->e:I

    invoke-virtual {p0, v2}, Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_4

    return-object v3

    :cond_4
    move-object p0, v5

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;

    :cond_5
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;->a:Ljava/util/List;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    move v8, v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    const/4 v10, 0x0

    const/16 v11, 0x37

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_8

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyExclusiveOffersError;

    invoke-direct {v2, p1}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyExclusiveOffersError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_8
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    const/4 v7, 0x0

    const/16 v8, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_9
    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Dc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->b:Z

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->d:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto/16 :goto_5

    :cond_3
    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->b:Z

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->b:Z

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p2, :cond_6

    sget-object v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyOrders;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyOrders;

    invoke-interface {p2, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p2

    move-object v2, p2

    goto :goto_1

    :cond_6
    move-object v2, v7

    :goto_1
    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->b:Z

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    iget-object p2, p2, Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/OrderRepository;->a()Lkotlin/Unit;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_2

    :cond_7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    if-ne p2, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p2, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->b:Z

    iput v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    iget-object p2, p2, Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/OrderRepository;->j()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_6

    :cond_a
    :goto_4
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->d:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->e:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->b:Z

    iput v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    invoke-interface {p2, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_b

    goto :goto_6

    :cond_b
    move-object v8, v4

    move-object v4, p2

    move-object p2, v8

    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v5, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->d()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance v4, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$2;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$2;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->d:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->e:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->b:Z

    iput v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    check-cast p2, Lkotlinx/coroutines/flow/AbstractFlow;

    invoke-virtual {p2, v4, v0}, Lkotlinx/coroutines/flow/AbstractFlow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    move-object p0, v2

    :goto_7
    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Ec(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    instance-of v5, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;

    iget v6, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;

    invoke-direct {v5, v0, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->c:Ljava/lang/Object;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->e:I

    const-string v8, "Unable to retrieve care services list"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v13, :cond_3

    if-eq v7, v10, :cond_2

    if-ne v7, v9, :cond_1

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v21, v7

    move-object v7, v1

    move-object/from16 v1, v21

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v4, :cond_5

    sget-object v1, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCareService;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCareService;

    invoke-interface {v4, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v12

    :goto_1
    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CARE_SERVICES_MIGRATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v1, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v13, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->e:I

    invoke-virtual {v7, v14, v11, v5}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_6

    goto/16 :goto_6

    :cond_6
    :goto_2
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iput-object v1, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->e:I

    invoke-virtual {v0, v5}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    :goto_3
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v1, Lkotlin/Result$Failure;

    if-nez v5, :cond_d

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    :cond_8
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-object v7, v5

    check-cast v7, Ljava/lang/Iterable;

    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_9

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    move v14, v11

    goto :goto_5

    :cond_9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v11

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-ne v10, v14, :cond_a

    add-int/lit8 v9, v9, 0x1

    if-ltz v9, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v12

    :cond_c
    move v14, v9

    :goto_5
    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_d
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_16

    if-eqz v4, :cond_e

    new-instance v3, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCareServiceError;

    invoke-direct {v3, v1}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCareServiceError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_e
    sget-object v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v8, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_f
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

    iput-object v1, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v9, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateRepairs$1;->e:I

    invoke-virtual {v0, v5}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_10

    :goto_6
    return-object v6

    :cond_10
    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    :goto_7
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v1, Lkotlin/Result$Failure;

    if-nez v5, :cond_14

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    :cond_11
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    invoke-static {v5, v11}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceMapperKt;->b(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CANCELLED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v13, v14, :cond_12

    sget-object v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v13, v14, :cond_12

    sget-object v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->HISTORY:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v13, v14, :cond_12

    sget-object v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v13, v14, :cond_12

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_14
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_16

    if-eqz v4, :cond_15

    new-instance v3, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCareServiceError;

    invoke-direct {v3, v1}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCareServiceError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_15
    sget-object v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v8, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_9
    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v5, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;

    iget v6, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;->d:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;

    invoke-direct {v5, v0, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;->b:Ljava/lang/Object;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;->d:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    if-ne v7, v9, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    iput v9, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$loadHotContent$1;->d:I

    move/from16 v7, p1

    invoke-virtual {v1, v7, v5}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_3

    return-object v6

    :cond_3
    :goto_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v1, Lkotlin/Result$Failure;

    if-nez v5, :cond_12

    move-object v5, v1

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;

    :cond_4
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;->a:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v12, v13}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v3, v6, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_7
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    instance-of v11, v7, Ljava/util/Collection;

    const/16 v18, 0x0

    if-eqz v11, :cond_8

    move-object v12, v7

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v12, v18

    goto :goto_4

    :cond_8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v13, v18

    :cond_9
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;

    instance-of v14, v14, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;

    if-eqz v14, :cond_9

    add-int/lit8 v13, v13, 0x1

    if-ltz v13, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v8

    :cond_b
    move v12, v13

    :goto_4
    const/16 v16, 0x0

    const/16 v17, 0x3d

    move v13, v11

    const/4 v11, 0x0

    move v14, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v19, v15

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v10

    invoke-interface {v4, v6, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CARE_SERVICES_MIGRATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v10}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_c
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    if-eqz v19, :cond_d

    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_d

    move/from16 v11, v18

    goto :goto_6

    :cond_d
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v12, v18

    :cond_e
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;

    instance-of v13, v13, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;

    if-eqz v13, :cond_e

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v8

    :cond_10
    move v11, v12

    :goto_6
    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v10

    invoke-interface {v4, v6, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_11
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v5, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;->b:Z

    xor-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_12
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    sget-object v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    const-string v6, "Unable to retrieve hot content"

    :cond_13
    invoke-interface {v0, v5, v6, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v3, v0, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_15
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_16
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;->c:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    sget-object p1, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadOsa;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadOsa;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v4

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateAppointments$1;->e:I

    invoke-virtual {p1, v1}, Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, v4

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0x2f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadOsaError;

    invoke-direct {v2, p1}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadOsaError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    const-string v2, "Unable to retrieve online store appointments list"

    invoke-interface {p0, v0, v2, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Fc()V
    .locals 5

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-virtual {v2, v3}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v2, Lkotlin/Result$Failure;

    if-eqz v4, :cond_1

    move-object v2, v3

    :cond_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final G0()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->g:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$checkUserEligibilityForPass$1;

    invoke-direct {v4, v3, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$checkUserEligibilityForPass$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v1, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->h:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->f:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->n()V

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->j:Z

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$refreshInboxNotification$1;

    invoke-direct {v1, v3, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$refreshInboxNotification$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v0, v3, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Fc()V

    return-void
.end method

.method public final Gc(Z)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Pa()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$onOrdersUpdated$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$onOrdersUpdated$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->S:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->b:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
