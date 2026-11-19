.class final Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$getRepairDetail$1"
    f = "RepairBffViewModelImpl.kt"
    l = {
        0x113
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->e:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v3, p0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v6, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenRepairDetails;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenRepairDetails;

    invoke-interface {p1, v3, v6}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;

    sget-object v6, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetail$1;->c:I

    invoke-virtual {v3, v6, p0}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v3, p1

    move-object p1, p0

    :goto_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p0, p1, Lkotlin/Result$Failure;

    if-nez p0, :cond_9

    move-object p0, p1

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;

    const-string v2, "repairId"

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->f:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;->c:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->CURRENT:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    if-ne v6, v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v4, v5

    :goto_1
    check-cast v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;

    if-eqz v4, :cond_6

    iget-object v2, v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;->a:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v2, v5

    :goto_2
    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    const-string v4, "repairStatus"

    invoke-interface {v3, v2, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->b:Ljava/lang/String;

    if-eqz p0, :cond_8

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f140910

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v5, v4, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    :cond_8
    invoke-interface {v2, v5}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    :cond_9
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_a
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance p1, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenRepairDetailError;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenRepairDetailError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "RepairBffViewModelImpl"

    const-string v2, "Unable to get care detail"

    invoke-interface {p1, v0, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-interface {v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
