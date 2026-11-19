.class public final Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0099\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;",
        "nativeLoginUseCase",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;",
        "emailValidationRules",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;",
        "passwordValidationRules",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "loginFormSupervisor",
        "Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;",
        "getAuthenticationFormUseCase",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;",
        "reportDYLoginEventUseCase",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "notificationsManager",
        "Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;",
        "getContactIdUseCase",
        "Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;",
        "updateContactIdUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;",
        "setAppsFlyerCustomerIdUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final d:Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;

.field public final e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

.field public final f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

.field public final g:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final h:Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;

.field public final i:Lcom/vuitton/android/core/events/LVEventSender;

.field public final j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final l:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

.field public final m:Lcom/vuitton/android/presentation/push/NotificationsManager;

.field public final n:Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

.field public final q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final r:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final s:Lkotlinx/coroutines/flow/Flow;

.field public final t:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final u:Lkotlinx/coroutines/flow/Flow;

.field public final v:Ljava/lang/String;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;)V
    .locals 9
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;

    move-object/from16 p3, p7

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    move-object/from16 p3, p8

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    move-object/from16 p3, p9

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->i:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 p1, 0x0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->r:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->s:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->u:Lkotlinx/coroutines/flow/Flow;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v0

    const-class v2, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRoute$Login;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {p2, v2, v0}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRoute$Login;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRoute$Login;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->v:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p11, p2

    move-object/from16 p10, v0

    move/from16 p14, v2

    move-object/from16 p15, v3

    move-object/from16 p12, v4

    move/from16 p13, v5

    invoke-direct/range {p10 .. p15}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p2, p10

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->z:Ljava/util/LinkedHashMap;

    invoke-interface {p3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    const/4 v3, 0x4

    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    aput-object p2, v3, p1

    const/4 p1, 0x1

    aput-object p3, v3, p1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const/4 p1, 0x3

    aput-object v0, v3, p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$special$$inlined$combine$1;

    invoke-direct {p2, v3}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p3

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;

    const/16 v3, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object p4, v2

    move/from16 p9, v3

    move-object/from16 p10, v4

    move-object p5, v5

    move-object p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-direct/range {p4 .. p10}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, p3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->A:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance p3, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;

    invoke-direct {p3, p0, v1}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$loadAuthenticationForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, v1, p3, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$updateContactId$1;->d:I

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

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {v1, v0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

    iget-object v1, v0, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;->a:Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;->b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;->b(Ljava/lang/String;)V

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "NativeLoginViewModelImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final P6(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel;)V
    .locals 11

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$NativeLoginScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$NativeLoginScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "identification_login"

    const-string v4, "identification_login"

    const-string v5, "mylv_native_authentification"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnHitForgetPasswordEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnHitForgetPasswordEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "mylv_native_authentification"

    const-string v4, "forgot_password"

    const-string v5, "mylv_native"

    const-string v6, "create_new_password"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginClickEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginClickEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "mylv_native_authentification"

    const-string v4, "sign_in_intention"

    const-string v5, "mylv_native"

    const-string v6, "i_already_have_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginSuccessEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x40

    const/4 v10, 0x0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;

    const-string v3, "mylv_native_authentification"

    const-string v4, "login_successful"

    const-string v5, "mylv_native"

    const-string v6, "i_already_have_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginFailureEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginFailureEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x41

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "mylv_native_authentification"

    const-string v3, "login_failed"

    const-string v4, "mylv_native"

    const-string v5, "i_already_have_an_account"

    const-string v6, "mylv_native_authentification"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->A:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->s:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final c7(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/authentication/NativeLoginMonitoring$Action$LogIn;->a:Lcom/vuitton/android/domain/monitoring/authentication/NativeLoginMonitoring$Action$LogIn;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->z:Ljava/util/LinkedHashMap;

    const-string v2, "loginJob"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p0, v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v3, v5, v5, v4, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->a:Z

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->b:Ljava/lang/String;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v0, v5, v2, v6}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    new-instance v0, Lrq;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Lrq;-><init>(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->a:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    move v2, v4

    :cond_3
    const/4 p0, 0x3

    invoke-static {p1, v1, v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    move-result-object p0

    invoke-interface {v3, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final k()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->u:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method
