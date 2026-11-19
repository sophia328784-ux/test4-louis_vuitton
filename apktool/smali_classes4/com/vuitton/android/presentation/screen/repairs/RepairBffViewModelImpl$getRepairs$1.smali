.class final Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$getRepairs$1"
    f = "RepairBffViewModelImpl.kt"
    l = {
        0xd6
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->d:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->d:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;-><init>(ZLcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    if-ne v5, v7, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v5, v0

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->d:Z

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenMyCareServices;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenMyCareServices;

    invoke-interface {v5, v6, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v6

    :cond_2
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v5, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairs$1;->c:I

    invoke-virtual {v5, v0}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    move-object v4, v0

    move-object v5, v6

    :goto_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, v4, Lkotlin/Result$Failure;

    if-nez v0, :cond_a

    :try_start_0
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object v8

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->AwaitingPayment:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    const/4 v10, 0x0

    if-ne v6, v9, :cond_4

    move/from16 v17, v7

    goto :goto_2

    :cond_4
    move/from16 v17, v10

    :goto_2
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->TrackMyShipment:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-ne v6, v9, :cond_5

    move/from16 v18, v7

    goto :goto_3

    :cond_5
    move/from16 v18, v10

    :goto_3
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ConfirmAddress:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-ne v6, v9, :cond_6

    move/from16 v19, v7

    goto :goto_4

    :cond_6
    move/from16 v19, v10

    :goto_4
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ConfirmEstimate:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-ne v6, v9, :cond_7

    move/from16 v20, v7

    goto :goto_5

    :cond_7
    move/from16 v20, v10

    :goto_5
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ContactAnExpert:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-ne v6, v9, :cond_8

    move/from16 v21, v7

    goto :goto_6

    :cond_8
    move/from16 v21, v10

    :goto_6
    const/16 v22, 0x1fff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v8 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;JLjava/lang/Long;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_9
    move-object v4, v0

    goto :goto_8

    :goto_7
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    instance-of v0, v4, Lkotlin/Result$Failure;

    if-nez v0, :cond_12

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_b
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/util/List;

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->History:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-ne v12, v13, :cond_c

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-interface {v2, v7, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_e
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-ne v11, v12, :cond_f

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    invoke-interface {v6, v0, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v5, :cond_11

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, "historyRepairNumber"

    invoke-interface {v5, v2, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_11
    if-eqz v5, :cond_12

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v0, "ongoingRepairNumber"

    invoke-interface {v5, v2, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_12
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz v5, :cond_13

    new-instance v2, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenMyCareServicesError;

    invoke-direct {v2, v0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenMyCareServicesError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_13
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "RepairBffViewModelImpl"

    const-string v4, "Unable to get care services"

    invoke-interface {v1, v2, v4, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v5, :cond_15

    invoke-interface {v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
