.class public final Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0081\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModel;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;",
        "genericFieldValidationRules",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "registrationDynamicFormSupervisor",
        "consentRegistrationFormSupervisor",
        "Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;",
        "socialRegisterUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;",
        "reportDYSignUpEventUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;",
        "getCompleteProfileFormUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

.field public final h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final j:Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final n:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Ljava/util/LinkedHashMap;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final s:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final t:Lkotlinx/coroutines/flow/Flow;

.field public final u:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final v:Lkotlinx/coroutines/flow/Flow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 24
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

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

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    const-string v4, "KEY_KISA_CONSENTS"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sget-object v6, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;

    invoke-virtual {v7}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v6, v7, v4}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->n:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    const-string v4, "KEY_EMAIL_VALUE"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, ""

    if-nez v4, :cond_1

    move-object v4, v7

    :cond_1
    const-string v8, "KEY_FIRSTNAME_VALUE"

    invoke-virtual {v1, v8}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_2

    move-object v8, v7

    :cond_2
    const-string v9, "KEY_LASTNAME_VALUE"

    invoke-virtual {v1, v9}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_3

    move-object v9, v7

    :cond_3
    const-string v10, "KEY_IDENTITY_TOKEN_VALUE"

    invoke-virtual {v1, v10}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_4

    move-object/from16 v16, v7

    goto :goto_1

    :cond_4
    move-object/from16 v16, v10

    :goto_1
    const-string v10, "KEY_RAW_NONCE_VALUE"

    invoke-virtual {v1, v10}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_5

    move-object/from16 v18, v7

    goto :goto_2

    :cond_5
    move-object/from16 v18, v10

    :goto_2
    const-string v7, "KEY_ORIGIN_VALUE"

    invoke-virtual {v1, v7}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const-string v7, "KEY_ENTRY_POINT_VALUE"

    invoke-virtual {v1, v7}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v20, v7

    check-cast v20, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    const-string v7, "KEY_PROVIDER_VALUE"

    invoke-virtual {v1, v7}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    const/16 v22, 0x5f8

    const/16 v23, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v7, v4

    invoke-direct/range {v6 .. v23}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->p:Ljava/util/LinkedHashMap;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v7, p3

    iget-object v7, v7, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v7}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->r:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static {v7, v8, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->t:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v7, v8, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->u:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->v:Lkotlinx/coroutines/flow/Flow;

    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    const/4 v9, 0x3

    invoke-direct {v8, v7, v7, v9, v5}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v8}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    const/4 v10, 0x5

    new-array v10, v10, [Lkotlinx/coroutines/flow/Flow;

    aput-object v1, v10, v7

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v2, 0x2

    aput-object v3, v10, v2

    aput-object v6, v10, v9

    const/4 v2, 0x4

    aput-object v8, v10, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v2, v10}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;

    const/16 v8, 0x3f

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 p1, v7

    move/from16 p8, v8

    move-object/from16 p9, v10

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move-object/from16 p7, v16

    invoke-direct/range {p1 .. p9}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZLcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$1;

    invoke-direct {v3, v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v5, v5, v3, v9}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const-string v2, "loadDynamicRegistrationFormJob"

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-ne v3, v1, :cond_6

    return-void

    :cond_6
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadRegistrationForms$1;

    invoke-direct {v3, v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadRegistrationForms$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v5, v5, v3, v9}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 p0, 0x0

    const/4 v3, 0x2

    invoke-direct {v2, p1, p0, v3, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/16 v6, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object p1, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$2;

    invoke-direct {v2, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V

    move p0, v3

    new-instance v3, Lav0;

    const/16 p1, 0x1a

    invoke-direct {v3, p1}, Lav0;-><init>(I)V

    iput p0, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialConsentForm$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x1fc

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;->d:I

    const/4 v13, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v13, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array/range {v3 .. v8}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->e([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object v3, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lxo0;

    const/16 v4, 0x1c

    invoke-direct {v3, p1, v4}, Lxo0;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lzt0;

    invoke-direct {v4, p0}, Lzt0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;)V

    new-instance v7, Le01;

    const/4 p1, 0x0

    invoke-direct {v7, p0, p1}, Le01;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;I)V

    new-instance v9, Le01;

    invoke-direct {v9, p0, v13}, Le01;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;I)V

    iput v13, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$loadSocialRegistrationForm$1;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x158

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p1, v0, v13}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    const/4 v8, 0x0

    const/16 v9, 0x7fdf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->x:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->t:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method
