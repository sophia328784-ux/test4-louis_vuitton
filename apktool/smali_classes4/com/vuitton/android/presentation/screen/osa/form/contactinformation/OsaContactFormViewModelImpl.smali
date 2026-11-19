.class public final Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00c1\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100\u00a8\u00061"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;",
        "phoneValidationRules",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "loggedUserFormSupervisor",
        "guestUserMainFormSupervisor",
        "guestUserEmailFormSupervisor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;",
        "getAccountStatusUseCase",
        "Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;",
        "cancelAppointmentUseCase",
        "Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;",
        "modifyAppointmentUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;",
        "confirmAppointmentUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;",
        "getGuestAppointmentFormUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;",
        "getAddressCivilitiesMappingUseCase",
        "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;",
        "getOnlineStoreAppointmentListUseCase",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final B:Lkotlinx/coroutines/flow/SharedFlow;

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

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

.field public final S:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final T:Ljava/util/LinkedHashMap;

.field public final U:Lkotlinx/coroutines/flow/StateFlow;

.field public final b:Lkotlinx/serialization/json/Json;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final g:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

.field public final h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final j:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final l:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final m:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

.field public final v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V
    .locals 32
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->b:Lkotlinx/serialization/json/Json;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v6, p14

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;

    move-object/from16 v6, p18

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v6, p20

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;

    move-object/from16 v6, p21

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;

    move-object/from16 v6, p22

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    move-object/from16 v6, p23

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-object/from16 v6, p3

    iget-object v6, v6, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v6}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v9, "ORIGIN"

    invoke-virtual {v1, v9}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->x:Ljava/lang/String;

    const-string v9, "SELECTION_ID"

    invoke-virtual {v1, v9}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->y:Ljava/lang/String;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->z:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v1, v9, v10, v11}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->B:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Bc()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p1, v1

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p2, v11

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p4, v10

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p5, v1

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p6, v1

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_CID:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 p7, v1

    filled-new-array/range {v16 .. v16}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p4 .. p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p8, v1

    invoke-static/range {p4 .. p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p9, v1

    invoke-static/range {p4 .. p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p13, v1

    const/4 v1, 0x7

    move-object/from16 v3, p4

    move-object/from16 p14, v2

    const/4 v2, 0x0

    invoke-static {v2, v1, v3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->S:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->T:Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface/range {p11 .. p11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v16

    invoke-interface/range {p10 .. p10}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v17

    move/from16 p3, v1

    const/16 v1, 0x13

    new-array v1, v1, [Lkotlinx/coroutines/flow/Flow;

    aput-object v7, v1, v2

    aput-object v12, v1, p1

    const/4 v2, 0x2

    aput-object v13, v1, v2

    const/4 v2, 0x3

    aput-object v14, v1, v2

    const/4 v7, 0x4

    aput-object v15, v1, v7

    const/4 v7, 0x5

    aput-object p5, v1, v7

    aput-object v6, v1, p2

    aput-object p13, v1, p3

    const/16 v6, 0x8

    aput-object v10, v1, v6

    const/16 v6, 0x9

    aput-object v4, v1, v6

    const/16 v4, 0xa

    aput-object v16, v1, v4

    const/16 v4, 0xb

    aput-object v17, v1, v4

    const/16 v4, 0xc

    aput-object v11, v1, v4

    const/16 v4, 0xd

    aput-object v9, v1, v4

    const/16 v4, 0xe

    aput-object p9, v1, v4

    const/16 v4, 0xf

    aput-object p6, v1, v4

    const/16 v4, 0x10

    aput-object p7, v1, v4

    const/16 v4, 0x11

    aput-object p8, v1, v4

    const/16 v4, 0x12

    aput-object p14, v1, v4

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v4, v1, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v27, v5

    check-cast v27, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-interface/range {p11 .. p11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-interface/range {p10 .. p10}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v29, v5

    check-cast v29, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    const v30, 0x7fffe

    const/16 v31, 0x0

    const/4 v9, 0x0

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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v7 .. v31}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/lang/Boolean;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v1, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->U:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$1;

    invoke-direct {v4, v3, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    invoke-static {v1, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$2;

    invoke-direct {v4, v3, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    invoke-static {v1, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$handleBottomSheetError$1;->e:I

    invoke-virtual {p2, v3, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Cc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->NOT_LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v2, "action"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p1, "appointment_reason"

    invoke-virtual {v1, p1, p3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "store_id"

    invoke-virtual {v1, p1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "login_status"

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OnlineStoreAppointment;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OnlineStoreAppointment;-><init>(Ljava/util/Map;)V

    const-string p1, "OsaContactFormViewModelImpl"

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void
.end method


# virtual methods
.method public final Ac(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, v1, v0, v3}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Z)V

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Bc()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final Cc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$showErrorNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$showErrorNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final I3(Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;->b:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;->c:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->a(Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->e:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    :cond_2
    move-object p1, v1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final I5(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V

    return-void
.end method

.method public final R2(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final W5(Lcom/vuitton/android/presentation/screen/osa/models/FormTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lrq;

    invoke-direct {p1, v1}, Lrq;-><init>(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p2, p3, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    new-instance p1, Lrq;

    invoke-direct {p1, v1}, Lrq;-><init>(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p2, p3, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_2
    new-instance p1, Lrq;

    invoke-direct {p1, v1}, Lrq;-><init>(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p2, p3, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final W8()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->U:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->S:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final e8()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final j1(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->T:Ljava/util/LinkedHashMap;

    const-string v2, "checkAccountStatusJob"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    invoke-interface {v1, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$checkAccountStatus$1;

    invoke-direct {v3, p0, p1, v4}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$checkAccountStatus$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->PDP:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->x:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p1, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final p3(Z)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final sc()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$resetBottomSheetScreen$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$resetBottomSheetScreen$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final t()V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$clearViewState$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$clearViewState$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final x1()V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->T:Ljava/util/LinkedHashMap;

    const-string v1, "loadDynamicFormsJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v2, v4, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v3, v2, v6}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;ZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v4, v6, v6, v5, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final x8()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->B:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method
