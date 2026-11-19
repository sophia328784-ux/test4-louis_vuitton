.class public final Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00e1\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u001f\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010!\u001a\u00020\u001d\u0012\u0006\u0010\"\u001a\u00020\u001d\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\u0006\u0010$\u001a\u00020\u001d\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u00a2\u0006\u0004\u00083\u00104\u00a8\u00065"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;",
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
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;",
        "emailValidationRules",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;",
        "phoneValidationRules",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;",
        "passwordValidationRules",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;",
        "genericFieldValidationRules",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "addressFormSupervisor",
        "birthInfoFormSupervisor",
        "credentialsFormSupervisor",
        "personalInfoFormSupervisor",
        "majorConsentRegistrationFormSupervisor",
        "minorConsentRegistrationFormSupervisor",
        "emailTrackingConsentRegistrationFormSupervisor",
        "Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;",
        "getAccountStatusUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;",
        "registerInitiateUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;",
        "registerValidateUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;",
        "reportDYSignUpEventUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;",
        "getRegistrationFormUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;",
        "getAddressCivilitiesMappingUseCase",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final B:Lkotlinx/coroutines/flow/Flow;

.field public final C:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final D:Lkotlinx/coroutines/flow/Flow;

.field public final E:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final F:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final G:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final H:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final I:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final J:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final K:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final L:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final M:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public N:Ljava/lang/Boolean;

.field public final O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final P:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final Q:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

.field public final R:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final S:Lkotlinx/coroutines/flow/Flow;

.field public final T:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final U:Lkotlinx/coroutines/flow/Flow;

.field public final V:Ljava/lang/String;

.field public W:Ljava/util/Map;

.field public final X:Lkotlinx/coroutines/flow/StateFlow;

.field public final Y:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

.field public final h:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

.field public final i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

.field public final j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

.field public final k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final r:Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final v:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

.field public final w:Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;

.field public final x:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V
    .locals 27
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

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v5, p17

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v6, p18

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v7, p19

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v8, p20

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v9, p21

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    move-object/from16 v9, p22

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;

    move-object/from16 v9, p23

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;

    move-object/from16 v9, p24

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v9, p25

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    move-object/from16 v9, p26

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;

    move-object/from16 v9, p27

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    sget-object v9, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->CREDENTIALS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->z:Lkotlinx/coroutines/flow/Flow;

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->A:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->B:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v9, v10, v11}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v12}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->D:Lkotlinx/coroutines/flow/Flow;

    new-instance v12, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 p5, v12

    move/from16 p9, v13

    move-object/from16 p10, v14

    move-object/from16 p6, v15

    move-object/from16 p7, v16

    move/from16 p8, v17

    invoke-direct/range {p5 .. p10}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    const/16 v14, 0x3f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 p5, v13

    move/from16 p12, v14

    move-object/from16 p13, v15

    move/from16 p6, v16

    move-object/from16 p7, v17

    move-object/from16 p8, v18

    move-object/from16 p9, v19

    move-object/from16 p10, v20

    move-object/from16 p11, v21

    invoke-direct/range {p5 .. p13}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/16 v25, 0x3ff

    const/16 v26, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v14 .. v26}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;-><init>(ZZZLjava/lang/String;Ljava/lang/Long;ZZZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v15, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    const/4 v10, 0x3

    invoke-direct {v15, v11, v11, v10, v11}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    const/16 v24, 0x7f

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v16 .. v25}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p7, v11

    invoke-static/range {p7 .. p7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p7 .. p7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v11, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    move-object/from16 v3, p7

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-direct {v11, v2, v2, v4, v3}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v3, p3

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string v4, "EXTRA_TRACKING_ORIGIN"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->P:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->SIGN_UP:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Q:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    move-object/from16 p8, v2

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v2, v11}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->R:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->S:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v2, v11}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->T:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->U:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->V:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->W:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p16 .. p16}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface/range {p17 .. p17}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface/range {p15 .. p15}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-interface/range {p14 .. p14}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v16

    move-object/from16 p3, v3

    const/16 v3, 0xe

    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    const/16 v17, 0x0

    aput-object v12, v3, v17

    const/4 v12, 0x1

    aput-object v4, v3, v12

    const/4 v4, 0x2

    aput-object v13, v3, v4

    const/4 v4, 0x3

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v14, v3, v4

    const/4 v4, 0x5

    aput-object v11, v3, v4

    const/4 v4, 0x6

    aput-object v15, v3, v4

    const/4 v4, 0x7

    aput-object v6, v3, v4

    const/16 v4, 0x8

    aput-object v7, v3, v4

    const/16 v4, 0x9

    aput-object v8, v3, v4

    const/16 v4, 0xa

    aput-object v10, v3, v4

    const/16 v4, 0xb

    aput-object v9, v3, v4

    const/16 v4, 0xc

    aput-object v16, v3, v4

    const/16 v4, 0xd

    aput-object p8, v3, v4

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v4, v3, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    const v7, 0xffff

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 p8, v6

    move/from16 p25, v7

    move-object/from16 p26, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v13

    move-object/from16 p13, v15

    move-object/from16 p14, v16

    move-object/from16 p15, v17

    move-object/from16 p16, v18

    move-object/from16 p17, v19

    move-object/from16 p18, v20

    move-object/from16 p19, v21

    move-object/from16 p20, v22

    move/from16 p21, v23

    move-object/from16 p22, v24

    move-object/from16 p23, v25

    move-object/from16 p24, v26

    invoke-direct/range {p8 .. p26}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v3, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->X:Lkotlinx/coroutines/flow/StateFlow;

    const-string v3, "KEY_KISA_CONSENTS"

    invoke-virtual {v1, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v4, p4

    invoke-virtual {v4, v3, v1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Y:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    const-string v1, "loadDynamicRegistrationFormJob"

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-ne v3, v12, :cond_1

    const/4 v5, 0x3

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1;

    const/4 v11, 0x0

    invoke-direct {v4, v11, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    const/4 v5, 0x3

    invoke-static {v3, v11, v11, v4, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$1;

    invoke-direct {v2, v11, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    invoke-static {v1, v11, v11, v2, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    invoke-static/range {p3 .. p3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3fd

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p4, v0

    move/from16 p6, v1

    move/from16 p12, v2

    move/from16 p13, v3

    move/from16 p5, v4

    move/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move/from16 p10, v8

    move/from16 p11, v9

    invoke-static/range {p4 .. p13}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object v0

    invoke-interface {v14, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;->d:I

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

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array/range {v4 .. v10}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$2;

    invoke-direct {v2, v4, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    move v4, v3

    new-instance v3, Lg3;

    const/4 v5, 0x4

    invoke-direct {v3, v5, p1}, Lg3;-><init>(ILjava/util/Set;)V

    new-instance v9, Lxf0;

    invoke-direct {v9, p0, v4}, Lxf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;I)V

    iput v4, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadAddressForm$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x17c

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;->d:I

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

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTRY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BIRTHDATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_BLOC:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array/range {v4 .. v9}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$2;

    invoke-direct {v2, v4, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    move v4, v3

    new-instance v3, Lg3;

    const/4 v5, 0x7

    invoke-direct {v3, v5, p1}, Lg3;-><init>(ILjava/util/Set;)V

    new-instance v9, Lxf0;

    const/4 p1, 0x3

    invoke-direct {v9, p0, p1}, Lxf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;I)V

    new-instance v10, Lbe0;

    const/16 p0, 0x1b

    invoke-direct {v10, p0}, Lbe0;-><init>(I)V

    iput v4, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadBirthInfoForm$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x7c

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->f:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :pswitch_0
    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_15

    :pswitch_1
    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;

    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_13

    :pswitch_2
    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;

    iget-object v5, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v7

    goto/16 :goto_f

    :pswitch_3
    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v7

    goto/16 :goto_d

    :pswitch_4
    iget-boolean v4, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->e:Z

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->d:Ljava/util/Set;

    check-cast v8, Ljava/util/Set;

    iget-object v9, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    check-cast v9, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout$Companion;

    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v10

    :goto_2
    move-object v10, v9

    move-object/from16 v9, v20

    goto/16 :goto_9

    :pswitch_5
    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->d:Ljava/util/Set;

    check-cast v4, Ljava/util/Set;

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout$Companion;

    iget-object v9, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v8

    move-object v8, v4

    move-object v4, v9

    move-object/from16 v9, v20

    goto/16 :goto_8

    :pswitch_6
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_1
    move-object v9, v1

    goto :goto_3

    :pswitch_7
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v5, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    invoke-virtual {v1, v4, v14}, Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    goto/16 :goto_14

    :goto_3
    invoke-static {v9}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "NativeRegisterViewModelImpl"

    const-string v8, "Unable to load the registration consents"

    sget-object v10, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v10, v4, v8, v1}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout$Companion;

    instance-of v4, v9, Lkotlin/Result$Failure;

    if-eqz v4, :cond_3

    move-object v4, v7

    goto :goto_4

    :cond_3
    move-object v4, v9

    :goto_4
    check-cast v4, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/forms/Form;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    if-eqz v11, :cond_4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/forms/FormField;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/forms/FormField;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    goto :goto_7

    :cond_7
    move-object v4, v7

    :goto_7
    if-nez v4, :cond_8

    sget-object v4, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    :cond_8
    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_CUSTOMER_MATCH:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v9, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    iput-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, Ljava/util/Set;

    iput-object v10, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->d:Ljava/util/Set;

    const/4 v10, 0x2

    iput v10, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    invoke-virtual {v2, v8, v6, v14}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_9

    goto/16 :goto_14

    :cond_9
    move-object/from16 v20, v9

    move-object v9, v1

    move-object v1, v8

    move-object v8, v4

    move-object/from16 v4, v20

    :goto_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SMS_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v10}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v10

    iput-object v4, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    iput-object v9, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    move-object v11, v8

    check-cast v11, Ljava/util/Set;

    iput-object v11, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->d:Ljava/util/Set;

    iput-boolean v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->e:Z

    const/4 v11, 0x3

    iput v11, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    invoke-virtual {v2, v10, v6, v14}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_a

    goto/16 :goto_14

    :cond_a
    move-object/from16 v20, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_2

    :goto_9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v8

    if-eqz v4, :cond_b

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LEGACY_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LEGACY_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_c
    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_d
    :goto_a
    if-nez v1, :cond_e

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_e
    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LEGACY_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_f
    if-eqz v4, :cond_10

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_10
    if-eqz v4, :cond_11

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ALL_MARKETING_COMMUNICATIONS_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    filled-new-array {v1, v10}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    if-eqz v4, :cond_12

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_12
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    iget-object v1, v10, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v10, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {v10, v11}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_13
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;

    invoke-direct {v8, v1, v4}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;->a:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move v1, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$2;

    invoke-direct {v5, v9, v7}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lzf0;

    invoke-direct {v10, v8, v6}, Lzf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;I)V

    iput-object v9, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    iput-object v8, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    iput-object v7, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->d:Ljava/util/Set;

    const/4 v11, 0x4

    iput v11, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    move-object v11, v7

    const/4 v7, 0x0

    move-object v12, v8

    const/4 v8, 0x0

    move-object v13, v9

    const/4 v9, 0x0

    move v15, v6

    move-object v6, v10

    const/4 v10, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v18, v13

    const/4 v13, 0x0

    move/from16 v19, v15

    const/16 v15, 0x1fc

    move-object/from16 v1, v16

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_15

    goto/16 :goto_14

    :cond_15
    move-object/from16 v4, v17

    move-object/from16 v8, v18

    :goto_d
    move-object v5, v8

    goto :goto_e

    :cond_16
    move-object v1, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    :goto_e
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;->b:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    new-instance v7, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$4;

    invoke-direct {v7, v5, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$4;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v8, v6

    new-instance v6, Lzf0;

    const/4 v9, 0x1

    invoke-direct {v6, v4, v9}, Lzf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;I)V

    iput-object v5, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    iput-object v4, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    iput-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->d:Ljava/util/Set;

    const/4 v9, 0x5

    iput v9, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    move-object/from16 v18, v5

    move-object v5, v7

    const/4 v7, 0x0

    move-object/from16 v17, v4

    move-object v4, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x1fc

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_17

    goto/16 :goto_14

    :cond_17
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    :goto_f
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;->b:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    invoke-interface {v9}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v9, v8}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_19

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    :cond_19
    move-object v10, v1

    :goto_11
    if-eqz v10, :cond_18

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1a
    invoke-static {v7}, Lkotlin/collections/MapsKt;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->W:Ljava/util/Map;

    goto :goto_12

    :cond_1b
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_12
    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;->b:Ljava/util/List;

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    iput-object v5, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    iput-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    iput-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->d:Ljava/util/Set;

    const/4 v6, 0x6

    iput v6, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    const/4 v15, 0x0

    invoke-virtual {v2, v4, v15, v14}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1c

    goto :goto_14

    :cond_1c
    :goto_13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$7;

    invoke-direct {v2, v5, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$7;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lbe0;

    const/16 v5, 0x1d

    invoke-direct {v6, v5}, Lbe0;-><init>(I)V

    iput-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->b:Ljava/lang/Object;

    iput-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->c:Ljava/lang/Object;

    const/4 v1, 0x7

    iput v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadConsentForms$1;->h:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x1fc

    move-object v5, v2

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1d

    :goto_14
    return-object v3

    :cond_1d
    :goto_15
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->N:Ljava/lang/Boolean;

    :cond_1e
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Lc()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static final Dc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;->d:I

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

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CONFIRM_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {p1, v1, v4}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$2;

    invoke-direct {v2, v4, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    move v4, v3

    new-instance v3, Lg3;

    const/4 v5, 0x5

    invoke-direct {v3, v5, p1}, Lg3;-><init>(ILjava/util/Set;)V

    new-instance v9, Lxf0;

    const/4 p1, 0x0

    invoke-direct {v9, p0, p1}, Lxf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;I)V

    new-instance v10, Lbe0;

    const/16 p0, 0x1c

    invoke-direct {v10, p0}, Lbe0;-><init>(I)V

    iput v4, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadCredentialsForm$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x7c

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Ec(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;->d:I

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;->d:I

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

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {p1, v1, v4, v5, v6}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object v4, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$2;

    invoke-direct {v2, v4, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    move v4, v3

    new-instance v3, Lg3;

    const/4 v5, 0x6

    invoke-direct {v3, v5, p1}, Lg3;-><init>(ILjava/util/Set;)V

    new-instance v9, Lxf0;

    const/4 p1, 0x2

    invoke-direct {v9, p0, p1}, Lxf0;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;I)V

    new-instance v10, Lag0;

    const/4 p0, 0x0

    invoke-direct {v10, p0}, Lag0;-><init>(I)V

    iput v4, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$loadPersonalInfoForm$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x7c

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Fc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$showErrorNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$showErrorNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)Z
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;->d:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput v5, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;->d:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Gc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    :try_start_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;

    iput v4, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$initiateRegistration$1;->d:I

    invoke-virtual {v3, p1, v1}, Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;->a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    :goto_2
    return-object v2

    :cond_6
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v1

    :cond_7
    :goto_5
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_8

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_8
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9

    const-string v1, "NativeRegisterViewModelImpl"

    const-string v2, "Unable to initiate registration"

    sget-object v3, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v3, v1, v2, p0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-object p1
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Fa(Lcom/vuitton/android/presentation/screen/authentication/register/Step;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x9

    const/4 v5, 0x3

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v11, 0x2

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eq v3, v13, :cond_9

    if-eq v3, v11, :cond_8

    if-eq v3, v5, :cond_7

    const/4 v11, 0x4

    if-eq v3, v11, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v3, Lrq;

    invoke-direct {v3, v4}, Lrq;-><init>(I)V

    invoke-interface {v8, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lrq;

    invoke-direct {v3, v4}, Lrq;-><init>(I)V

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v11, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lrq;

    invoke-direct {v3, v4}, Lrq;-><init>(I)V

    invoke-interface {v6, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lrq;

    invoke-direct {v3, v4}, Lrq;-><init>(I)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v1, v3, :cond_3

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move-object v3, v15

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Mc(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnSmsMarketingConsentWithoutPhoneNumberEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnSmsMarketingConsentWithoutPhoneNumberEvent;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    :cond_3
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->j(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_4
    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BIRTHDATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v3, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g()Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v3, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g()Z

    move-result v3

    if-ne v3, v13, :cond_6

    :cond_5
    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v19, v13

    goto :goto_2

    :cond_6
    const/16 v19, 0x0

    :goto_2
    const/16 v24, 0x0

    const/16 v25, 0x3fb

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v16 .. v25}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object v3

    invoke-interface {v12, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    new-instance v3, Lrq;

    invoke-direct {v3, v4}, Lrq;-><init>(I)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Nc()V

    goto :goto_3

    :cond_8
    new-instance v3, Lrq;

    invoke-direct {v3, v4}, Lrq;-><init>(I)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Z)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    move-result-object v3

    invoke-interface {v14, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    new-instance v3, Lrq;

    invoke-direct {v3, v4}, Lrq;-><init>(I)V

    invoke-interface {v7, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v4

    const/4 v5, 0x3

    invoke-static {v3, v15, v4, v5}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    move-result-object v3

    invoke-interface {v9, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_3
    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_a

    move-object v15, v2

    check-cast v15, Ljava/lang/Boolean;

    :cond_a
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Jc(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    return-void

    :pswitch_2
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    move-object v15, v2

    check-cast v15, Ljava/lang/Boolean;

    :cond_b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Jc(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Ic()V

    return-void

    :pswitch_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_c

    move-object v15, v2

    check-cast v15, Ljava/lang/Boolean;

    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Jc(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Ic()V

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Kc(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_d

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_4

    :cond_d
    move-object v4, v15

    :goto_4
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Jc(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    if-eqz v3, :cond_e

    move-object v15, v2

    check-cast v15, Ljava/lang/Boolean;

    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :goto_5
    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {v2, v3}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v1, :cond_10

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->W:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v13

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    goto :goto_6

    :cond_11
    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Mc(Z)Z

    :cond_12
    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Kc(Ljava/lang/Object;)V

    :cond_13
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Lc()V

    return-void

    :pswitch_5
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_6
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_7
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_8
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_9
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_a
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_b
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/Instant;

    if-eqz v1, :cond_15

    invoke-static {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->j(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    const-wide/16 v3, 0x12

    cmp-long v1, v1, v3

    if-gez v1, :cond_15

    goto :goto_8

    :cond_14
    invoke-static {v10}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    const-wide/16 v3, 0xe

    cmp-long v1, v1, v3

    if-gez v1, :cond_15

    :goto_8
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140e1e

    const/4 v4, 0x2

    invoke-direct {v2, v3, v15, v4, v15}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$onFieldUpdated$2;

    invoke-direct {v2, v15, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$onFieldUpdated$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    const/4 v5, 0x3

    invoke-static {v1, v15, v15, v2, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_9

    :cond_15
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    :goto_9
    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/4 v9, 0x0

    const/16 v10, 0x3fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object v0

    invoke-interface {v12, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_d
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_e
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_f
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_10
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_11
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    return-void

    :pswitch_12
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->c()V

    :cond_16
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v2, v3, v13}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    move-result-object v1

    invoke-interface {v9, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->a:Z

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->b:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final G3()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->U:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final Gc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->j:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->g:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->f:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->e:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->c:Ljava/lang/Object;

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    check-cast v2, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v11, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->c:Ljava/lang/Object;

    iput v7, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    invoke-virtual {v5, v1, v8, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_7

    :cond_5
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-object v10, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v10, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->c:Ljava/lang/Object;

    iput v9, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    invoke-virtual {v11, v4, v1, v2}, Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;->a(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_7

    :cond_6
    :goto_2
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-nez v4, :cond_19

    check-cast v1, Ljava/util/List;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/Instant;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    invoke-interface {v12}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v12, v13, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->a:Ljava/lang/String;

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_8
    move-object v13, v10

    :goto_3
    check-cast v13, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    if-eqz v13, :cond_9

    iget-object v1, v13, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->b:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v12, v1

    :cond_9
    if-nez v12, :cond_a

    const-string v12, ""

    :cond_a
    move-object v14, v12

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v12, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v12, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v12, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v9, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v4, :cond_b

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v4, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "yyyy-MM-dd"

    invoke-static {v4, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->j(Ljava/lang/String;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_4

    :cond_b
    move-object/from16 v20, v10

    :goto_4
    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTRY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v4, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v4, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v4, v9, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-direct {v11, v1, v9, v4}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V

    move-object/from16 v21, v11

    goto :goto_5

    :cond_c
    move-object/from16 v21, v10

    :goto_5
    new-instance v13, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    invoke-direct/range {v13 .. v21}, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    const/4 v11, 0x6

    invoke-static {v4, v9, v10, v8, v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v4, v9, v10, v8, v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v4, v9, v10, v8, v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v4, v9, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v4, v9, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v4, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v19

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    invoke-direct/range {v14 .. v20}, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    move-object v14, v10

    :goto_6
    new-instance v9, Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v4, v11, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v11, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v4, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-interface {v11}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v12}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v12

    iput-object v10, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v13, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->c:Ljava/lang/Object;

    iput-object v9, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    iput-object v14, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->e:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Y:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iput-object v0, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->f:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iput-object v11, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->g:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    invoke-virtual {v5, v12, v8, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_e

    :goto_7
    return-object v3

    :cond_e
    move-object v5, v0

    move-object v0, v1

    move-object v1, v2

    move-object v3, v4

    move-object v4, v11

    move-object v11, v13

    move-object v6, v14

    :goto_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LEGACY_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v12

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ALL_MARKETING_COMMUNICATIONS_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, v13}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v3, v13}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v13

    sget-object v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v3, v14}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v14

    sget-object v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v3, v15}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_f
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_10
    move v0, v8

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_11
    move-object v0, v2

    :goto_a
    new-instance v13, Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_b

    :cond_12
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_b

    :cond_13
    move v12, v8

    :goto_b
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    if-eqz v16, :cond_15

    if-eqz v14, :cond_14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_c

    :cond_14
    move v2, v8

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_15
    move-object/from16 v23, v2

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_d

    :cond_16
    move v2, v8

    :goto_d
    if-eqz v1, :cond_18

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v4, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v8, 0x1

    :cond_17
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :cond_18
    move-object/from16 v24, v10

    new-instance v17, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    const/16 v21, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v24}, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v5, v0}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;-><init>(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;)V

    invoke-direct {v13, v12, v7}, Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;-><init>(ZLcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;

    invoke-direct {v0, v11, v6, v9, v13}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;-><init>(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)V

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object v0

    :cond_19
    return-object v1
.end method

.method public final Hc()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToNextStep$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToNextStep$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Ic()V
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v3, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-static {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Lc()V

    return-void
.end method

.method public final Jc(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_EMAILS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->TARGETED_ADVERTISING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->MARKETING_TEXTS_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v4, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    invoke-direct {v4, v1, v0, v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;-><init>(ZZZZ)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-direct {v2, v1, v0, v3}, Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;-><init>(ZZZ)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p0, "Unsupported consent checkbox type for tracking: "

    invoke-static {p1, p0}, Lmt;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailTrackingConsentCheckBoxClick;

    invoke-direct {p1, p2, v4, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailTrackingConsentCheckBoxClick;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;

    invoke-direct {p1, p2, v4, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnOnlinePlatformsConsentCheckBoxClick;

    invoke-direct {p1, p2, v4, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnOnlinePlatformsConsentCheckBoxClick;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailConsentCheckBoxClick;

    invoke-direct {p1, p2, v4, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailConsentCheckBoxClick;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnPrivacyPolicyConsentCheckBoxClick;

    invoke-direct {p1, p2, v4, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnPrivacyPolicyConsentCheckBoxClick;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Kc(Ljava/lang/Object;)V
    .locals 10

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    move v7, p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/4 v8, 0x0

    const/16 v9, 0x3bf

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    if-nez v7, :cond_2

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lrq;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lrq;-><init>(I)V

    invoke-interface {p1, v0, p0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->N:Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterCredentialsScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterCredentialsScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation_credentials_step"

    const-string v4, "account_creation_steps"

    const-string v5, "mylv_native_authentification"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterPersonalInformationScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterPersonalInformationScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation_personal_info_step"

    const-string v4, "account_creation_steps"

    const-string v5, "mylv_native_authentification"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterBirthInformationScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterBirthInformationScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation_birth_info_step"

    const-string v4, "account_creation_steps"

    const-string v5, "mylv_native_authentification"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterActivateYourAccountScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$NativeRegisterActivateYourAccountScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation_activation_step"

    const-string v4, "account_creation_steps"

    const-string v5, "mylv_native_authentification"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialCtaEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "confirm_credentials_cta"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmCredentialSuccess;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "credentials_step_success"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoCtaEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "confirm_personal_info_cta"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoSuccess;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "personal_info_step_success"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoCtaEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "confirm_birth_info_cta"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmBirthInfoSuccess;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "birth_info_step_success"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountCtaEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountCtaEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "activate_cta_click"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountSuccess;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "account_activation_step_success"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnResendCodeActivateAccountEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnResendCodeActivateAccountEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "resend_account_activation_code"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationSuccessEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x40

    const/4 v10, 0x0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;

    const-string v3, "account_creation"

    const-string v4, "registration_successful"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationFailureEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationFailureEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "registration_failed"

    const-string v5, "mylv_native"

    const-string v6, "event"

    const-string v7, "mylv_native_authentification"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnPrivacyPolicyConsentCheckBoxClick;

    const-string v1, "untick"

    const-string v2, "tick"

    if-eqz v0, :cond_10

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnPrivacyPolicyConsentCheckBoxClick;

    iget-boolean v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnPrivacyPolicyConsentCheckBoxClick;->a:Z

    if-eqz v0, :cond_f

    move-object v1, v2

    :cond_f
    const-string v0, "privacy_policy_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnPrivacyPolicyConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnPrivacyPolicyConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-static {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModelKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailConsentCheckBoxClick;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailConsentCheckBoxClick;

    iget-boolean v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailConsentCheckBoxClick;->a:Z

    if-eqz v0, :cond_11

    move-object v1, v2

    :cond_11
    const-string v0, "email_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-static {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModelKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto/16 :goto_0

    :cond_12
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailTrackingConsentCheckBoxClick;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailTrackingConsentCheckBoxClick;

    iget-boolean v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailTrackingConsentCheckBoxClick;->a:Z

    if-eqz v0, :cond_13

    move-object v1, v2

    :cond_13
    const-string v0, "email_tracking_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailTrackingConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnEmailTrackingConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-static {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModelKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnOnlinePlatformsConsentCheckBoxClick;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnOnlinePlatformsConsentCheckBoxClick;

    iget-boolean v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnOnlinePlatformsConsentCheckBoxClick;->a:Z

    if-eqz v0, :cond_15

    move-object v1, v2

    :cond_15
    const-string v0, "online_platforms_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnOnlinePlatformsConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnOnlinePlatformsConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-static {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModelKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_16
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;

    iget-boolean v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->a:Z

    if-eqz v0, :cond_17

    move-object v1, v2

    :cond_17
    const-string v0, "sms_consent_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-static {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModelKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_18
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnSmsMarketingConsentWithoutPhoneNumberEvent;

    if-eqz v0, :cond_19

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string p1, "missing_phone_number_form"

    invoke-static {p1}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "missing_phone_number_for_sms_marketing_consent"

    const-string v5, "mylv_native"

    const-string v6, "click"

    const-string v7, "mylv_native_authentification"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_19
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnRegistrationCloseEvent;

    if-eqz v0, :cond_1e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnRegistrationCloseEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnRegistrationCloseEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "account_creation"

    const-string v4, "close"

    const-string v5, "mylv_native"

    const-string v6, "create_an_account"

    const-string v7, "mylv_native_authentification"

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    instance-of p1, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Q:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->P:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz p1, :cond_1b

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    iget-object p1, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;->e:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    if-eqz v2, :cond_1a

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1a
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1b
    instance-of p1, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    if-eqz p1, :cond_1d

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object p1, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;->g:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    if-eqz v2, :cond_1c

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1c
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1d
    :goto_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_1e
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final La()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$goToPreviousStep$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Lc()V
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->j(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PRIVACY_POLICY_CONSENT:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v8, p0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x1

    goto :goto_0

    :goto_2
    const/4 v10, 0x0

    const/16 v11, 0x3df

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Mc(Z)Z
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1, v0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    return p1
.end method

.method public final N4(J)V
    .locals 12

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->j(Ljava/lang/String;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v10, 0x0

    const/16 v11, 0x3e7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->BIRTH_INFO:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    sget-object p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BIRTHDATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p0, p1, p2, v6}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Fa(Lcom/vuitton/android/presentation/screen/authentication/register/Step;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Nc()V
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    new-instance v4, Lk60;

    const/16 v5, 0x18

    invoke-direct {v4, v1, v2, v5}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move v6, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v11, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V

    invoke-interface {p0, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Q9(Lcom/vuitton/android/presentation/screen/authentication/register/Step;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->j(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BIRTHDATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g()Z

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->o:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    const/16 v11, 0x3fb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Nc()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Z)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result p0

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final V5()V
    .locals 13

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v1, v0, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v1, v0, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/4 v11, 0x1

    const/16 v12, 0x37f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Hc()V

    return-void
.end method

.method public final Z8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->V:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->X:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->D:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final c9()V
    .locals 11

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/4 v9, 0x0

    const/16 v10, 0x3fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->B:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final g8(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressInfoScreen;

    if-eqz v0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressInfoScreen;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressInfoScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressInfoScreen;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v7

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v3, 0x0

    const-string v4, "account_creation_address_info_step"

    const-string v5, "account_creation_step"

    const-string v6, "mylv_native_authentification"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;

    if-eqz v0, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz p1, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v7

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v3, 0x0

    const-string v4, "address_autocomplete"

    const-string v5, "account_creation_step"

    const-string v6, "mylv_native_authentification"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;

    const-string v1, "email_sign_up"

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;

    if-eqz v0, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz p1, :cond_7

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v4, "account_creation_address_info_step"

    const-string v5, "confirm_address_info"

    const-string v6, "mylv_native"

    const-string v7, "click"

    const-string v8, "mylv_native_authentification"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;

    if-eqz v0, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v1, :cond_9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz p1, :cond_a

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v4, "account_creation_address_info_step"

    const-string v5, "skip_address_info"

    const-string v6, "mylv_native"

    const-string v7, "click"

    const-string v8, "mylv_native_authentification"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;

    if-eqz v0, :cond_e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;

    iget v2, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;->c:I

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;-><init>(I)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v1, :cond_c

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz p1, :cond_d

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v4, "address_autocomplete"

    const-string v5, "send_search"

    const-string v6, "mylv"

    const-string v7, "click"

    const-string v8, "mylv_native_authentification"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSelectAddressClickedEvent;

    if-eqz v0, :cond_11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSelectAddressClickedEvent;

    iget v2, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSelectAddressClickedEvent;->c:I

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;-><init>(I)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSelectAddressClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v1, :cond_f

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSelectAddressClickedEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz p1, :cond_10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v4, "address_autocomplete"

    const-string v5, "select_address"

    const-string v6, "mylv"

    const-string v7, "click"

    const-string v8, "mylv_native_authentification"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_11
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;

    if-eqz v0, :cond_14

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;

    iget v2, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;->c:I

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;-><init>(I)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v1, :cond_12

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz p1, :cond_13

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v4, "address_autocomplete"

    const-string v5, "close"

    const-string v6, "mylv"

    const-string v7, "click"

    const-string v8, "mylv_native_authentification"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_14
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final i0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->BIRTHDATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/4 v8, 0x0

    const/16 v9, 0x3fe

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j4(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    new-instance v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    invoke-direct {v4, v0, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->e:Ljava/lang/String;

    if-eqz p1, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v1, v0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Nc()V

    return-void
.end method

.method public final k()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->S:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final n4(Lcom/vuitton/android/presentation/screen/authentication/register/Step;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;

    invoke-direct {v2, v1, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    invoke-static {p1, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;

    invoke-direct {v2, v1, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmBirthInfo$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    invoke-static {p1, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0, p1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, p1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, p1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    const/4 v9, 0x0

    const/16 v10, 0x37f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;ZZZLjava/lang/String;Ljava/lang/Long;ZZZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Hc()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Hc()V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmPersonalInfoSuccess;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    return-void

    :cond_4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;

    invoke-direct {v2, v1, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmCredentials$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    invoke-static {p1, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final x2()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->z:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final xb()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$onResendCodeClick$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$onResendCodeClick$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
