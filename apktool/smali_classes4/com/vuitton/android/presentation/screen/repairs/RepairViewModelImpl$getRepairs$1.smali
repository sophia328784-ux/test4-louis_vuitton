.class final Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getRepairs$1"
    f = "RepairViewModelImpl.kt"
    l = {
        0xe6,
        0xea,
        0x10f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

.field public e:Ljava/util/List;

.field public f:Ljava/util/Collection;

.field public g:Ljava/lang/Object;

.field public h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final synthetic p:Z

.field public final synthetic q:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->p:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->q:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->p:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->q:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;-><init>(ZLcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->q:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->o:I

    const-string v5, "RepairViewModelImpl"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_0

    iget v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->l:I

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->i:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->g:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->f:Ljava/util/Collection;

    check-cast v12, Ljava/util/List;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->e:Ljava/util/List;

    check-cast v13, Ljava/util/List;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->c:Ljava/lang/Object;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/16 v16, 0x0

    move-object/from16 v9, p1

    check-cast v9, Lkotlin/Result;

    iget-object v9, v9, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v17, v10

    goto/16 :goto_d

    :cond_0
    const/16 v16, 0x0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :cond_1
    const/16 v16, 0x0

    iget v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->n:I

    iget v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->m:I

    iget v9, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->l:I

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->j:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->i:Ljava/lang/Object;

    check-cast v13, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->g:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->f:Ljava/util/Collection;

    check-cast v15, Ljava/util/Collection;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->e:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    check-cast v10, Ljava/util/List;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->c:Ljava/lang/Object;

    check-cast v10, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v20, v11

    move-object v11, v13

    const/4 v8, 0x2

    move-object/from16 v13, p1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    const/16 v16, 0x0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    check-cast v6, Lkotlin/Result;

    iget-object v6, v6, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_3
    move-object v7, v0

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->p:Z

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenMyCareServices;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenMyCareServices;

    invoke-interface {v0, v6, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object/from16 v0, v16

    :goto_0
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->o:I

    invoke-virtual {v6, v1}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_3

    goto/16 :goto_c

    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, v6, Lkotlin/Result$Failure;

    if-nez v0, :cond_a

    :try_start_1
    check-cast v6, Ljava/util/List;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->d:Z

    invoke-static {v6, v0}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceMapperKt;->b(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v14, v0

    move-object v10, v2

    move-object v12, v6

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->d:Ljava/lang/String;

    iget-object v15, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iput-object v7, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->c:Ljava/lang/Object;

    move-object/from16 v8, v16

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->e:Ljava/util/List;

    move-object v8, v12

    check-cast v8, Ljava/util/Collection;

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->f:Ljava/util/Collection;

    iput-object v14, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->g:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iput-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->i:Ljava/lang/Object;

    iput-object v12, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->j:Ljava/lang/Object;

    iput-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iput v9, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->l:I

    iput v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->m:I

    iput v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->n:I

    const/4 v8, 0x2

    iput v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->o:I

    invoke-virtual {v10, v13, v15, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Cc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_6

    goto/16 :goto_c

    :cond_6
    move-object/from16 v20, v11

    move-object v15, v12

    :goto_3
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    invoke-static {v10, v11}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;)Z

    move-result v26

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CONFIRM_ADDRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v11, v8, :cond_7

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const/16 v27, 0x1

    goto :goto_4

    :cond_7
    const/16 v27, 0x0

    :goto_4
    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v11, v8, :cond_8

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/16 v28, 0x1

    goto :goto_5

    :cond_8
    const/16 v28, 0x0

    :goto_5
    const v29, 0xffff

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v29}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v12, v15

    const/4 v8, 0x1

    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_9
    check-cast v12, Ljava/util/List;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v12

    goto :goto_7

    :goto_6
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    instance-of v0, v6, Lkotlin/Result$Failure;

    if-nez v0, :cond_1b

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v15, v14, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_b

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CANCELLED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v14, v15, :cond_b

    sget-object v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v14, v15, :cond_b

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v14, v13}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->l:Ljava/lang/String;

    new-instance v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v13, v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v11, v7

    move-object v7, v0

    move-object v0, v11

    move-object v14, v2

    move-object v15, v6

    move-object v13, v8

    move-object v12, v9

    move-object v11, v10

    const/4 v10, 0x0

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v8, v9, :cond_f

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->HISTORY:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v8, v9, :cond_10

    :cond_f
    move-object/from16 p1, v12

    move-object/from16 v17, v15

    goto/16 :goto_10

    :cond_10
    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CANCELLED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v8, v9, :cond_16

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v8, v9, :cond_16

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v6, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object v9, v6, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-object/from16 p1, v12

    sget-object v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v9, v12, :cond_12

    sget-object v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-ne v9, v12, :cond_11

    goto :goto_b

    :cond_11
    move-object/from16 v12, p1

    goto/16 :goto_f

    :cond_12
    :goto_b
    iget-object v9, v14, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

    sget-object v12, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    move-object/from16 v17, v12

    iget-object v12, v6, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->c:Ljava/lang/Object;

    iput-object v14, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->d:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    move-object/from16 v17, v15

    move-object v15, v13

    check-cast v15, Ljava/util/List;

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->e:Ljava/util/List;

    move-object/from16 v15, p1

    check-cast v15, Ljava/util/Collection;

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->f:Ljava/util/Collection;

    iput-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->g:Ljava/lang/Object;

    iput-object v6, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->i:Ljava/lang/Object;

    iput-object v7, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->j:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iput v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->l:I

    const/4 v15, 0x3

    iput v15, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1;->o:I

    invoke-virtual {v9, v12, v1}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_13

    :goto_c
    return-object v4

    :cond_13
    move-object/from16 v12, p1

    move-object/from16 v15, v17

    move-object/from16 v17, v6

    move-object v6, v0

    move v0, v10

    :goto_d
    sget-object v10, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v10, v9, Lkotlin/Result$Failure;

    if-nez v10, :cond_14

    move-object v10, v9

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->E:Ljava/lang/String;

    const/16 v25, 0x0

    const v26, 0xfbfff

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v10

    invoke-static/range {v17 .. v26}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;)Z

    move-result v23

    const v26, 0xdbfff

    invoke-static/range {v17 .. v26}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v10

    move/from16 p1, v0

    move-object/from16 v0, v17

    iput-object v10, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    goto :goto_e

    :cond_14
    move/from16 p1, v0

    move-object/from16 v0, v17

    :goto_e
    invoke-static {v9}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    sget-object v17, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    const-string v1, "Unable to get tracking number for repair "

    invoke-static {v1, v0, v10, v5, v9}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    move/from16 v10, p1

    move-object v0, v6

    :goto_f
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    const/16 v25, 0x0

    const v26, 0xf7fff

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v26}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;ZZZZZI)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto/16 :goto_a

    :cond_16
    move-object/from16 p1, v12

    move-object/from16 v17, v15

    goto :goto_11

    :goto_10
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v15, v17

    goto/16 :goto_a

    :cond_17
    move-object/from16 p1, v12

    move-object/from16 v17, v15

    iput-object v13, v14, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->s:Ljava/util/List;

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_18
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    move-object v7, v11

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1$invokeSuspend$lambda$2$3$$inlined$sortedByDescending$1;

    invoke-direct {v8}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1$invokeSuspend$lambda$2$3$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    if-eqz v0, :cond_19

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "historyRepairNumber"

    invoke-interface {v0, v6, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_19
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    move-object/from16 v12, p1

    check-cast v12, Ljava/lang/Iterable;

    new-instance v6, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1$invokeSuspend$lambda$2$4$$inlined$sortedByDescending$1;

    invoke-direct {v6}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getRepairs$1$invokeSuspend$lambda$2$4$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v12, v6}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "ongoingRepairNumber"

    invoke-interface {v0, v4, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_1a
    invoke-static {v14}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getSkuProductList$1;

    const/4 v8, 0x0

    invoke-direct {v4, v8, v14}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$getSkuProductList$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;)V

    const/4 v15, 0x3

    invoke-static {v1, v8, v8, v4, v15}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object v7, v0

    move-object/from16 v6, v17

    :cond_1b
    invoke-static {v6}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1d

    if-eqz v7, :cond_1c

    new-instance v1, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenMyCareServicesError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenMyCareServicesError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_1c
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "Unable to get care services"

    invoke-interface {v1, v5, v2, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v7, :cond_1e

    invoke-interface {v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_1e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1f
    move-object/from16 v1, p0

    goto/16 :goto_0
.end method
