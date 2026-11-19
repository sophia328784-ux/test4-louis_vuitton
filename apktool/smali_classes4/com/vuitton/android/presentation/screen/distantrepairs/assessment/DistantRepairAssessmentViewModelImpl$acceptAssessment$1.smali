.class final Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$acceptAssessment$1"
    f = "DistantRepairAssessmentViewModelImpl.kt"
    l = {
        0x1dd,
        0x1e6,
        0x1e7,
        0x1eb
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

.field public d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Throwable;

.field public g:I

.field public h:I

.field public i:I

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->i:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->f:Ljava/lang/Throwable;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->g:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->f:Ljava/lang/Throwable;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->e:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->h:I

    iget v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->g:I

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->f:Ljava/lang/Throwable;

    check-cast v7, Lkotlin/Unit;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->e:Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    goto/16 :goto_2

    :cond_3
    iget v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->g:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    check-cast v12, Lkotlin/Result;

    iget-object v12, v12, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v16, v4

    move v4, v1

    move-object/from16 v1, v16

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->d:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v12, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ConfirmAssessment;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ConfirmAssessment;

    invoke-interface {v4, v11, v12}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v11

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v1, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    invoke-virtual {v1, v4, v10, v12, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Cc(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetailKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object v12

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    const v14, 0x7ffffe

    invoke-static {v12, v13, v10, v10, v14}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object v12

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    iget-object v14, v4, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->a:Ljava/lang/String;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->g:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->i:I

    invoke-virtual {v13, v14, v12, v0}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v8, v4

    move v4, v9

    :goto_0
    sget-object v13, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v13, v12, Lkotlin/Result$Failure;

    if-nez v13, :cond_9

    move-object v13, v12

    check-cast v13, Lkotlin/Unit;

    const-string v13, "repairId"

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->a:Ljava/lang/String;

    invoke-interface {v11, v8, v13}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz v13, :cond_6

    sget-object v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    const/4 v15, -0x5

    const/16 v5, 0xff

    invoke-static {v13, v14, v9, v15, v5}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;ZII)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object v5, v10

    :goto_1
    invoke-interface {v8, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->l:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->e:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->f:Ljava/lang/Throwable;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->g:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->h:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->i:I

    sget-object v7, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    invoke-virtual {v5, v7, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_7

    goto :goto_5

    :cond_7
    move-object v8, v1

    move v1, v4

    move v4, v9

    move-object v7, v12

    :goto_2
    iget-object v5, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->K:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v12, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v13, Lkotlin/Result;

    invoke-direct {v13, v12}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->e:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->f:Ljava/lang/Throwable;

    iput v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->g:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->h:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->i:I

    invoke-interface {v5, v13, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v4, v7

    move-object v6, v8

    move-object v7, v11

    :goto_3
    move-object v12, v4

    move v4, v1

    move-object v1, v6

    goto :goto_4

    :cond_9
    move-object v7, v11

    :goto_4
    invoke-static {v12}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v6, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ConfirmAssessmentError;

    invoke-direct {v6, v5}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ConfirmAssessmentError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->e:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->f:Ljava/lang/Throwable;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->g:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->h:I

    const/4 v4, 0x4

    iput v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$acceptAssessment$1;->i:I

    sget v4, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->R:I

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Bc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    :goto_5
    return-object v3

    :cond_a
    move-object v3, v1

    move-object v1, v5

    move-object v0, v7

    :goto_6
    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string v5, "DistantRepairAssessmentViewModelImpl"

    const-string v6, "Unable to accept assessment"

    invoke-interface {v4, v5, v6, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object v7, v0

    :cond_b
    invoke-interface {v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
