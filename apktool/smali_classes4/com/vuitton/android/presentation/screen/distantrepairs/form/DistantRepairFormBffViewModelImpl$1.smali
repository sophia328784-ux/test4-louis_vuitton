.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$1"
    f = "DistantRepairFormBffViewModelImpl.kt"
    l = {
        0xbd,
        0xc8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->c:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenInitiateRepairForm;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenInitiateRepairForm;

    invoke-interface {p1, v3, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->c:I

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initConfig$1;

    invoke-direct {v5, v6, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$initConfig$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    const/4 v7, 0x3

    invoke-static {v3, v6, v6, v5, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;->d:Z

    if-eqz v3, :cond_4

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$retrieveAddressZipCodeRegex$1;

    invoke-direct {v5, v6, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$retrieveAddressZipCodeRegex$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    invoke-static {v3, v6, v6, v5, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_4
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$getCountryList$1;

    invoke-direct {v5, v0, p1, v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$getCountryList$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v6, v6, v5, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    const/16 v9, 0xe

    invoke-static {v7, v8, v6, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$1;->c:I

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_6

    :goto_1
    return-object v2

    :cond_6
    move-object p0, p1

    :goto_2
    sget-object p1, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DISTANT_CARE:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->DISTANT_CARE:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
