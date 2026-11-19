.class final Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getRepairDetail$1"
    f = "RepairViewModelImpl.kt"
    l = {
        0x16f,
        0x17a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

.field public e:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->g:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->g:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->h:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->g:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->f:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->h:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v7, :cond_1

    if-ne v3, v6, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->e:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v10, v3

    move-object v3, p1

    move-object p1, v10

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenRepairDetails;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenRepairDetails;

    invoke-interface {p1, v3, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->f:I

    invoke-virtual {v3, v5, p0}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v3, Lkotlin/Result$Failure;

    if-nez v7, :cond_7

    move-object v7, v3

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    const-string v8, "repairId"

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->a:Ljava/lang/String;

    invoke-interface {p1, v9, v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v7, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "repairStatus"

    invoke-interface {p1, v8, v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->e:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairDetail$1;->f:I

    invoke-static {v0, v5, v7, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_5

    :goto_1
    return-object v2

    :cond_5
    move-object p0, p1

    move-object v5, v3

    move-object v2, v7

    move-object v3, v0

    :goto_2
    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->L:Ljava/lang/String;

    if-eqz v2, :cond_6

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f140910

    invoke-direct {v4, v3, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    :cond_6
    invoke-interface {p1, v4}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    move-object v3, p0

    goto :goto_3

    :cond_7
    move-object v5, v3

    move-object v3, p1

    :goto_3
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_8
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance p1, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenRepairDetailError;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenRepairDetailError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "RepairViewModelImpl"

    const-string v2, "Unable to get care detail"

    invoke-interface {p1, v0, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
