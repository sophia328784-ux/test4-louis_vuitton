.class final Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1"
    f = "DistantRepairAssessmentBffViewModelImpl.kt"
    l = {
        0x134,
        0x13c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Throwable;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->e:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->f:I

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v9, v4

    move-object v4, p1

    move-object p1, v5

    move-object v5, v9

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->Q:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->c:Ljava/lang/String;

    const/4 v6, 0x0

    iput v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->f:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->g:I

    invoke-virtual {v5, v1, p0}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v1

    move v1, v6

    :goto_0
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v4, Lkotlin/Result$Failure;

    if-nez v6, :cond_4

    move-object v6, v4

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v8, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v6, v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    move-result-object v6

    invoke-interface {v7, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->r:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v6, :cond_4

    const-string v7, "repairId"

    invoke-interface {v6, v5, v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_7

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->c:Ljava/lang/String;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->d:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->e:Ljava/lang/Throwable;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->f:I

    iput v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1;->g:I

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object p0, p1

    move-object v0, v5

    :goto_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->r:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ViewEstimateError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ViewEstimateError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_6
    move-object p1, p0

    :cond_7
    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->r:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_8
    iput-object v2, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->r:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
