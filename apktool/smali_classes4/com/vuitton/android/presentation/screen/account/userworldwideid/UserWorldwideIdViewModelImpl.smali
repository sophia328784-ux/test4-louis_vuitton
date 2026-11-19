.class public final Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BI\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;",
        "getUserWorldwideIdUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;",
        "getStoreModeAffiliationUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;",
        "getRmsCodeUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;)V",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;

.field public final g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public i:Lkotlinx/coroutines/Job;

.field public final j:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final k:Lkotlinx/coroutines/flow/SharedFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;

    iget-object p1, p4, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p3, 0x1

    const/4 p4, 0x5

    const/4 p5, 0x0

    invoke-static {p5, p3, p1, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->j:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->k:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object p0, p8, Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->e()Ljava/lang/Object;

    move-result-object p0

    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p3, p0, Lkotlin/Result$Failure;

    if-nez p3, :cond_0

    move-object p3, p0

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

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

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v4, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadLvPass;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadLvPass;

    invoke-interface {p1, v2, v4}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/WorldwideId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/account/WorldwideId;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_4
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadLvPassError;

    const-string v2, "mylv"

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadLvPassError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_5
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final J1()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->k:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final f5()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->i:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public final k7()V
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->STORE_MODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->i:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl$checkStoreModeAccess$1;-><init>(Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;->i:Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method
