.class public final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00a9\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "myInfoEditFormSupervisor",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;",
        "addressErrorMessageMapper",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;",
        "logoutUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;",
        "deleteAccountUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;",
        "getProfileFormUseCase",
        "Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;",
        "updatePasswordUseCase",
        "Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;",
        "getUserConsentsUseCase",
        "Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;",
        "updateProfileInfoUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;",
        "resetDynamicYieldIdUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;",
        "unsetAppsFlyerCustomerIdUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;",
        "getProfileCivilitiesMappingUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final B:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final D:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final E:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final F:Lkotlinx/coroutines/flow/SharedFlow;

.field public final G:Ljava/util/LinkedHashMap;

.field public H:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final I:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final e:Lcom/vuitton/android/presentation/push/NotificationsManager;

.field public final f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final g:Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

.field public final h:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;

.field public final s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final t:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public u:Ljava/util/List;

.field public final v:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final w:Lkotlinx/coroutines/flow/SharedFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;)V
    .locals 16
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

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->e:Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual/range {p1 .. p1}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->u:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v2, v3, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->v:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->w:Lkotlinx/coroutines/flow/SharedFlow;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v9, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 p1, v9

    move/from16 p5, v10

    move-object/from16 p6, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v10, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 p1, v10

    move/from16 p5, v11

    move-object/from16 p6, v12

    move/from16 p2, v13

    move/from16 p3, v14

    move/from16 p4, v15

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v11, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->j:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->k:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v12, 0x4

    invoke-static {v3, v3, v4, v12}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->E:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v13}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->F:Lkotlinx/coroutines/flow/SharedFlow;

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->G:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    const/4 v14, 0x7

    new-array v14, v14, [Lkotlinx/coroutines/flow/Flow;

    aput-object v7, v14, v2

    aput-object v6, v14, v3

    const/4 v2, 0x2

    aput-object v9, v14, v2

    const/4 v2, 0x3

    aput-object v10, v14, v2

    aput-object v11, v14, v12

    aput-object v13, v14, v5

    const/4 v3, 0x6

    aput-object v8, v14, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v3, v14}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    const/16 v8, 0x5f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 p7, v1

    move-object/from16 p1, v7

    move/from16 p9, v8

    move-object/from16 p10, v9

    move/from16 p2, v10

    move/from16 p3, v11

    move-object/from16 p4, v12

    move-object/from16 p5, v13

    move-object/from16 p6, v14

    move/from16 p8, v15

    invoke-direct/range {p1 .. p10}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    invoke-static {v3, v5, v6, v1}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->I:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$1;

    invoke-direct {v3, v0, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v4, v4, v3, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->b:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p1, :cond_4

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    :cond_4
    if-eqz v4, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    move v2, p1

    :goto_1
    if-nez v2, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->b:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->e:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$2;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$2;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;)V

    iput v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->b:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/flow/Flow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->d:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->f:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget v4, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->c:I

    iget v6, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->b:I

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v7, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->f:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Bc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    const/4 v4, 0x0

    iput v4, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->b:I

    iput v4, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->c:I

    iput v6, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->f:I

    invoke-virtual {v1, v2}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto :goto_3

    :cond_6
    move v6, v4

    :goto_2
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->b:I

    iput v4, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->c:I

    iput v5, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileFromServer$1;->f:I

    invoke-interface {v1, v2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    :goto_3
    return-object v3

    :cond_7
    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v4}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_f

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->u:Ljava/util/List;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_9
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v10

    iget-object v11, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    iget-object v12, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    const-string v9, ""

    if-nez v7, :cond_a

    move-object/from16 v16, v9

    goto :goto_5

    :cond_a
    move-object/from16 v16, v7

    :goto_5
    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    if-nez v7, :cond_b

    move-object/from16 v17, v9

    goto :goto_6

    :cond_b
    move-object/from16 v17, v7

    :goto_6
    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->j:Ljava/lang/String;

    if-nez v7, :cond_c

    move-object v13, v9

    goto :goto_7

    :cond_c
    move-object v13, v7

    :goto_7
    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->k:Ljava/lang/String;

    if-nez v7, :cond_d

    move-object v14, v9

    goto :goto_8

    :cond_d
    move-object v14, v7

    :goto_8
    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz v9, :cond_e

    invoke-static {v9}, Lcom/vuitton/android/presentation/profile/mappers/PhoneNumbersMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    move-result-object v9

    move-object v15, v9

    goto :goto_9

    :cond_e
    move-object v15, v8

    :goto_9
    new-instance v9, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    move-object/from16 v18, v7

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$setProfile$2;

    invoke-direct {v3, v0, v8}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$setProfile$2;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v8, v8, v3, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_f
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while getting the profile from server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyInformationViewModelImpl"

    invoke-interface {v0, v3, v2, v8}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-object v1
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    instance-of v4, v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;

    iget v5, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;

    invoke-direct {v4, v0, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->h:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->g:Z

    iget-boolean v11, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->f:Z

    iget v12, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->d:I

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->c:Ljava/lang/Object;

    iget-object v14, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v16, v14

    move-object v14, v13

    move-object/from16 v13, v16

    goto/16 :goto_6

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->f:Z

    iget v11, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->e:I

    iget v12, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->d:I

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->c:Ljava/lang/Object;

    iget-object v14, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v16, v11

    move v11, v6

    move/from16 v6, v16

    goto :goto_4

    :cond_3
    iget v6, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->e:I

    iget v11, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->d:I

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->c:Ljava/lang/Object;

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v13, v1

    move v11, v7

    :goto_2
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CHINA_PRIVACY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    iput-object v13, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->c:Ljava/lang/Object;

    iput v11, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->d:I

    iput v7, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->e:I

    iput v10, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    invoke-virtual {v2, v1, v7, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_5

    goto :goto_5

    :cond_5
    move v6, v7

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v13, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->c:Ljava/lang/Object;

    iput v11, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->d:I

    iput v6, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->e:I

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->f:Z

    iput v9, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    invoke-virtual {v2, v14, v7, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v5, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v16, v11

    move v11, v1

    move-object v1, v14

    move-object v14, v13

    move-object v13, v12

    move/from16 v12, v16

    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PROFILE_PHONE_NUMBER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    iput-object v14, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->c:Ljava/lang/Object;

    iput v12, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->d:I

    iput v6, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->e:I

    iput-boolean v11, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->f:Z

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->g:Z

    iput v8, v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    invoke-virtual {v2, v15, v7, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_7

    :goto_5
    return-object v5

    :cond_7
    move-object/from16 v16, v6

    move v6, v1

    move-object/from16 v1, v16

    goto/16 :goto_1

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v15, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    invoke-direct {v15, v11, v6, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;-><init>(ZZZ)V

    invoke-interface {v13, v14, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_8
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v4

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v5

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->C:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v2, v4, v5, v6}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;-><init>(ZZZ)V

    invoke-interface {v1, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_9
    move v11, v12

    goto/16 :goto_2
.end method


# virtual methods
.method public final Bc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;->b:Z

    iput v3, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$getProfileCivilitiesMapping$1;->d:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;

    invoke-virtual {v3, p1, v2, v0}, Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;->a(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->u:Ljava/util/List;

    :cond_4
    return-object p1
.end method

.method public final Cc(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->G:Ljava/util/LinkedHashMap;

    const-string v1, "loadDynamicProfileFormJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$OpenMyInformation;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$OpenMyInformation;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v4, v2, v3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->H:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Da()V
    .locals 2

    new-instance v0, Lvd0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lvd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Ec(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x3c

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->E:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final Ec(Lkotlin/jvm/functions/Function1;)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->G:Ljava/util/LinkedHashMap;

    const-string v1, "updateProfileInfoJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Q4()V
    .locals 3

    new-instance v0, Lba0;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lba0;-><init>(I)V

    new-instance v1, Lba0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lba0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Cc(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final Y7()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->I:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final ac(Z)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->F:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final d2()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->G:Ljava/util/LinkedHashMap;

    const-string v1, "deleteAccountJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lrq;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lrq;-><init>(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final g9()V
    .locals 2

    new-instance v0, Lvd0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lvd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Ec(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final h()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->w:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final j9()V
    .locals 2

    new-instance v0, Lvd0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Ec(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final m5(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel;)V
    .locals 12

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$MyInformationScreen;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$MyInformationScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Profil"

    const-string v4, "mylv/my_profile"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreen;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "mylv_myinfo"

    const-string v4, "mylv_myinfo"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenMissingPhoneNumber;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenMissingPhoneNumber;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "mylv_myinfo_missing_phone_number"

    const-string v4, "mylv_myinfo"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenSmsMarketingDisclaimer;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenSmsMarketingDisclaimer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "mylv_myinfo_sms_marketing_disclaimer"

    const-string v4, "mylv_myinfo"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditPasswordScreen;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditPasswordScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Password/Edit"

    const-string v4, "mylv/my_profile/edit_password"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditProfileEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditProfileEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Profil"

    const-string v4, "EditProfil"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$DeleteProfileEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$DeleteProfileEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/My_information"

    const-string v4, "remove_intention"

    const-string v5, "mylv"

    const-string v6, "remove_account"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "missing_phone_number_form"

    if-eqz v0, :cond_7

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v1}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "mylv_myinfo_missing_phone_number"

    const-string v5, "cta_save_modifications"

    const-string v6, "mylv"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithMissingPhoneNumber;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithMissingPhoneNumber;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v1}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "mylv_myinfo_missing_phone_number"

    const-string v5, "cta_save_modifications"

    const-string v6, "mylv"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithSmsDisclaimerEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithSmsDisclaimerEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string p1, "sms_marketing_disclaimer_form"

    invoke-static {p1}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "mylv_myinfo_sms_marketing_disclaimer"

    const-string v3, "cta_save_modifications"

    const-string v4, "mylv"

    const-string v5, "click"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final na(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->G:Ljava/util/LinkedHashMap;

    const-string v1, "savePasswordChangesJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final q()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$logoutUser$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final q4()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->G:Ljava/util/LinkedHashMap;

    const-string v1, "loadMyInfoJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadMyInfo$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadMyInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final r5()V
    .locals 3

    new-instance v0, Lba0;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lba0;-><init>(I)V

    new-instance v1, Lba0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lba0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Cc(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final z3()V
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->VAT_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BRANCH_ID:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->e([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->I:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;->c:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_BLOC:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;->a:Z

    new-instance v2, Lg3;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lg3;-><init>(ILjava/util/Set;)V

    new-instance v0, Lka;

    invoke-direct {v0, v1, p0, v3}, Lka;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Cc(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
