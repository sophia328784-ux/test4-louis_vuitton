.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00a9\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "contactUsDelegate",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;",
        "photoEncodingHelper",
        "Lcom/vuitton/android/domain/repository/LoginStateRepository;",
        "loginStateRepository",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "careServiceFormSupervisor",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;",
        "genericFieldValidationRules",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;",
        "getMainAddressFormUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;",
        "getCareServiceFormUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;",
        "createCareServiceBffUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;",
        "getLocaleCountryListUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V",
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

.field public final D:Lkotlinx/coroutines/flow/StateFlow;

.field public final E:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final F:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final g:Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;

.field public final h:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

.field public final k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final l:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final m:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V
    .locals 25
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

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->g:Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->h:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 p1, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p2, v7

    move-object/from16 p3, v8

    move-object/from16 p4, v9

    move-object/from16 p5, v10

    invoke-direct/range {p1 .. p7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    const/4 v6, 0x7

    move-object/from16 p1, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    const/16 v7, 0x7f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p11, v6

    move/from16 p19, v7

    move-object/from16 p20, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    move-object/from16 p15, v12

    move-object/from16 p16, v13

    move-object/from16 p17, v14

    move-object/from16 p18, v15

    invoke-direct/range {p11 .. p20}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    const/4 v8, 0x7

    const/4 v10, 0x0

    move-object/from16 p1, v7

    move/from16 p5, v8

    move-object/from16 p6, v9

    move/from16 p2, v10

    move-object/from16 p3, v11

    move-object/from16 p4, v12

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;-><init>(ILjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    new-instance v12, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-direct {v12, v11}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v12, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    const/16 v13, 0xf

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v12

    move/from16 p6, v13

    move-object/from16 p7, v14

    move/from16 p2, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v18

    invoke-direct/range {p1 .. p7}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v13, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v23, 0x1ff

    const/16 v24, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v13 .. v24}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/16 v14, 0xa

    new-array v14, v14, [Lkotlinx/coroutines/flow/Flow;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    aput-object v4, v14, v10

    const/4 v3, 0x2

    aput-object v5, v14, v3

    const/4 v3, 0x3

    aput-object v6, v14, v3

    const/4 v4, 0x4

    aput-object v7, v14, v4

    const/4 v4, 0x5

    aput-object v8, v14, v4

    const/4 v4, 0x6

    aput-object v11, v14, v4

    const/4 v4, 0x7

    aput-object v12, v14, v4

    const/16 v5, 0x8

    aput-object v13, v14, v5

    const/16 v5, 0x9

    aput-object v1, v14, v5

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v14, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    const/16 v8, 0x7fe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 p2, v2

    move-object/from16 p1, v7

    move/from16 p13, v8

    move-object/from16 p14, v10

    move-object/from16 p3, v11

    move-object/from16 p4, v12

    move-object/from16 p5, v13

    move-object/from16 p6, v14

    move-object/from16 p7, v16

    move/from16 p8, v17

    move-object/from16 p9, v18

    move-object/from16 p10, v19

    move-object/from16 p11, v20

    move-object/from16 p12, v21

    invoke-direct/range {p1 .. p14}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p1

    invoke-static {v1, v5, v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->D:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v15, v4, v9}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->E:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v15, v4, v9}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->F:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v1, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->STARTED:Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;

    invoke-virtual {v0, v1, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->Cc(Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;

    invoke-direct {v2, v9, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    invoke-static {v1, v9, v9, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->i:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->k:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->h:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v11, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->f:Z

    iget v12, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->g:Z

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->f:Z

    iget v11, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->e:I

    iget v12, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v16, v5

    move v5, v0

    move v0, v11

    move/from16 v11, v16

    goto/16 :goto_4

    :cond_3
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->f:Z

    iget v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->e:I

    iget v11, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->e:I

    iget v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v11

    move v11, v5

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    move v1, v6

    :goto_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_VIDEO_CALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v11}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v11

    iput-object v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v1, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v6, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->e:I

    iput v10, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->k:I

    invoke-virtual {v2, v11, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v12, v11

    move v11, v1

    move-object v1, v12

    move-object v13, v0

    move-object v12, v5

    move v0, v6

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_CALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v5}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v11, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->f:Z

    iput v9, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->k:I

    invoke-virtual {v2, v5, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v16, v5

    move v5, v0

    move v0, v1

    move-object/from16 v1, v16

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_EMAIL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v11, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->g:Z

    iput v8, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->k:I

    invoke-virtual {v2, v14, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v16, v11

    move v11, v0

    move v0, v5

    move v5, v1

    move-object v1, v14

    move-object v14, v13

    move-object v13, v12

    move/from16 v12, v16

    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_ZIP_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    iput-object v14, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v12, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v11, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->f:Z

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->g:Z

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->h:Z

    iput v7, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initFeatureFlags$1;->k:I

    invoke-virtual {v2, v15, v6, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    :goto_5
    return-object v4

    :cond_9
    move/from16 v16, v1

    move-object v1, v0

    move/from16 v0, v16

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v15, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    invoke-direct {v15, v11, v5, v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;-><init>(ZZZZ)V

    invoke-interface {v14, v13, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    move v1, v12

    move-object v0, v14

    goto/16 :goto_1
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v3, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->d:I

    invoke-virtual {p1, v1, v11}, Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_4

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;->d:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_BLOC:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {v1, v5}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_BLOC:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_3
    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move v6, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$2;

    invoke-direct {v2, p1, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move p1, v3

    new-instance v3, Lud;

    invoke-direct {v3, v1, v6}, Lud;-><init>(Ljava/util/List;I)V

    new-instance v7, Lmu;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, Lmu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;I)V

    new-instance v9, Lmu;

    invoke-direct {v9, p0, p1}, Lmu;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;I)V

    iput v6, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->d:I

    const/4 v4, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x15c

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_4
    return-object v0

    :cond_6
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final Ac()Z
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->EMAIL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final Bc()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v2, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_3

    invoke-static {v7}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_3

    invoke-static {v8}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    new-instance v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v15, 0x0

    const/16 v16, 0x7d

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v3

    move-object v12, v6

    invoke-static/range {v10 .. v16}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    :goto_0
    return-void
.end method

.method public final C0()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$CreateRepairConfirmClickedEvent;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$CreateRepairConfirmClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

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

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Cc(Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->h:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->NOT_LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    :goto_0
    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v2, "action"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p1, "store_id"

    invoke-virtual {v1, p1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "login_status"

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    const-string p1, "DistantRepairFormBffViewModelImpl"

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void
.end method

.method public final E0()Z
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->VIDEO_CALL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final H0(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    const/4 v7, 0x0

    const/16 v8, 0x7b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    move-object p1, v5

    goto :goto_0
.end method

.method public final J(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v2, v3, p1, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final P(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v1, p2, v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void
.end method

.method public final V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v4, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x7d

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final W0(Landroid/net/Uri;I)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;->a:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    if-nez v2, :cond_4

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;

    invoke-direct {v2, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;

    if-eqz p2, :cond_5

    iput-object p1, p2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;->a:Landroid/net/Uri;

    :cond_5
    :goto_2
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x7

    if-gt p1, p2, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    invoke-static {}, Lkotlin/comparisons/ComparisonsKt;->c()Ljava/util/Comparator;

    move-result-object p2

    new-instance v1, Lkotlin/comparisons/a;

    invoke-direct {v1, p2}, Lkotlin/comparisons/a;-><init>(Ljava/util/Comparator;)V

    new-instance p2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sortNullsLast$$inlined$compareByDescending$1;

    invoke-direct {p2, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sortNullsLast$$inlined$compareByDescending$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/Comparator;Ljava/util/List;)V

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_7
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    const/4 v1, 0x5

    invoke-static {p2, p0, v3, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_3
    return-void
.end method

.method public final X()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->F:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->D:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->E:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final b0()V
    .locals 5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    sget-object v4, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->a:Lcom/vuitton/android/presentation/utils/DateTimeUtils;

    invoke-static {v4, v0, v2, v3}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->i(Lcom/vuitton/android/presentation/utils/DateTimeUtils;Ljava/time/LocalDateTime;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    const/4 v4, 0x3

    invoke-static {v3, v1, v0, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lrq;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lrq;-><init>(I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->Bc()V

    :goto_0
    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->READ:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->CONFIRM:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1, v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->READ:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->MODIFY:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->READ:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->DISABLED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->MODIFY:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->DISABLED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->MODIFY:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    return-void
.end method

.method public final m0(I)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    invoke-static {}, Lkotlin/comparisons/ComparisonsKt;->c()Ljava/util/Comparator;

    move-result-object v1

    new-instance v3, Lkotlin/comparisons/a;

    invoke-direct {v3, v1}, Lkotlin/comparisons/a;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sortNullsLast$$inlined$compareByDescending$1;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sortNullsLast$$inlined$compareByDescending$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/Comparator;Ljava/util/List;)V

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    const/4 v4, 0x5

    invoke-static {v3, p1, v2, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final s0(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->Ac()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->VIDEO_CALL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget v4, v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->a:I

    if-lt v1, v4, :cond_7

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    :cond_0
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ThirdStepNextClickedEvent;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ThirdStepNextClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->Ac()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SecondStepNextClickedEvent;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SecondStepNextClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->Ac()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$FirstStepNextClickedEvent;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$FirstStepNextClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->m(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V

    :cond_7
    return-void
.end method

.method public final z0(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->EMAIL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    :goto_0
    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    invoke-direct {v2, p1, v5, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
