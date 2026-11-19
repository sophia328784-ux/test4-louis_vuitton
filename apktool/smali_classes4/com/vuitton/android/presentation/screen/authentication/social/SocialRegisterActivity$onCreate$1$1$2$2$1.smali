.class final synthetic Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$onCreate$1$1$2$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$onCreate$1$1$2$2$1;->p()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final p()V
    .locals 7

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->p:Ljava/util/LinkedHashMap;

    const-string v2, "onConfirmClickedJob"

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
    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->m:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->o:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    if-nez v6, :cond_1

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->GOOGLE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    :cond_1
    invoke-direct {v3, v4, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->o:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    if-nez v0, :cond_2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->GOOGLE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    :cond_2
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->r:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$ActivateAccount;->a:Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$ActivateAccount;

    invoke-interface {v3, v4, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v3

    const-string v4, "social"

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v0, v3, v6}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v4, v6, v6, v5, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
