.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$sendRepairData$3"
    f = "DistantRepairFormViewModelImpl.kt"
    l = {
        0x225,
        0x22f,
        0x23a,
        0x23b,
        0x23e,
        0x243
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

.field public d:Ljava/lang/Object;

.field public e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

.field public f:Ljava/io/Serializable;

.field public g:I

.field public h:Z

.field public i:I

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

.field public final synthetic k:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->k:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->k:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v2, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->i:I

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    packed-switch v7, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :pswitch_0
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v44, v3

    move-object v3, v0

    move-object v0, v4

    move-object/from16 v4, v44

    goto/16 :goto_2a

    :pswitch_1
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_2
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_25

    :pswitch_3
    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->h:Z

    iget v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->g:I

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, v5

    move v5, v3

    move-object v3, v8

    move v8, v0

    move-object v0, v4

    move-object v4, v7

    goto/16 :goto_24

    :pswitch_4
    iget v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->g:I

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1d

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    :pswitch_5
    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    check-cast v14, Lkotlin/Result;

    iget-object v14, v14, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v15, v7

    move-object v7, v14

    goto/16 :goto_8

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object v13, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$BookRepair;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$BookRepair;

    invoke-interface {v7, v4, v13}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v7

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->a()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_0
    move-object v13, v12

    :goto_0
    if-nez v13, :cond_1

    move-object v13, v10

    :cond_1
    const-string v14, "repairType"

    invoke-virtual {v7, v13, v14}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->F:Ljava/lang/String;

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v12

    :goto_1
    if-nez v8, :cond_3

    move-object/from16 v16, v10

    goto :goto_2

    :cond_3
    move-object/from16 v16, v8

    :goto_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v8, v12

    :goto_3
    if-nez v8, :cond_5

    move-object/from16 v17, v10

    goto :goto_4

    :cond_5
    move-object/from16 v17, v8

    :goto_4
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->c:Ljava/lang/String;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v12, :cond_6

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-nez v12, :cond_7

    move-object/from16 v20, v10

    goto :goto_6

    :cond_7
    move-object/from16 v20, v12

    :goto_6
    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->f:Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;

    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->b:Ljava/util/List;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v14}, Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    if-nez v12, :cond_8

    move-object/from16 v23, v10

    goto :goto_7

    :cond_8
    move-object/from16 v23, v12

    :goto_7
    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->k:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    move-object/from16 v18, v8

    move-object/from16 v19, v12

    move-object/from16 v22, v13

    invoke-direct/range {v15 .. v23}, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceUseCase;

    iput-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    const/4 v12, 0x1

    iput v12, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->i:I

    invoke-virtual {v8, v15, v1}, Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceUseCase;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_9

    goto/16 :goto_29

    :cond_9
    move-object v13, v7

    move-object v7, v8

    :goto_8
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v8, v7, Lkotlin/Result$Failure;

    if-nez v8, :cond_27

    move-object v8, v7

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->a:Ljava/lang/String;

    const-string v12, "repairId"

    invoke-interface {v13, v8, v12}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_a
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-direct {v9, v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v14, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    :try_start_1
    sget-object v12, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v24, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v12, :cond_b

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->e:Ljava/lang/String;

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_1a

    :cond_b
    const/4 v12, 0x0

    :goto_9
    if-nez v12, :cond_c

    move-object/from16 v25, v10

    goto :goto_a

    :cond_c
    move-object/from16 v25, v12

    :goto_a
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethodKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v26, v12

    check-cast v26, Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v5, :cond_d

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_e

    move-object/from16 v27, v10

    goto :goto_c

    :cond_e
    move-object/from16 v27, v5

    :goto_c
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v5, :cond_f

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    goto :goto_d

    :cond_f
    const/4 v5, 0x0

    :goto_d
    if-nez v5, :cond_10

    move-object/from16 v28, v10

    goto :goto_e

    :cond_10
    move-object/from16 v28, v5

    :goto_e
    if-eqz v9, :cond_11

    iget-object v5, v9, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    goto :goto_f

    :cond_11
    const/4 v5, 0x0

    :goto_f
    if-nez v5, :cond_12

    move-object/from16 v29, v10

    goto :goto_10

    :cond_12
    move-object/from16 v29, v5

    :goto_10
    if-eqz v9, :cond_13

    iget-object v5, v9, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    goto :goto_11

    :cond_13
    const/4 v5, 0x0

    :goto_11
    if-nez v5, :cond_14

    move-object/from16 v30, v10

    goto :goto_12

    :cond_14
    move-object/from16 v30, v5

    :goto_12
    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    if-eqz v5, :cond_15

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;->a:Ljava/lang/String;

    goto :goto_13

    :cond_15
    const/4 v5, 0x0

    :goto_13
    if-nez v5, :cond_16

    move-object/from16 v33, v10

    goto :goto_14

    :cond_16
    move-object/from16 v33, v5

    :goto_14
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;->b:Ljava/lang/String;

    goto :goto_15

    :cond_17
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_18

    move-object/from16 v34, v10

    goto :goto_16

    :cond_18
    move-object/from16 v34, v0

    :goto_16
    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->MOBILE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->c()Ljava/lang/String;

    move-result-object v35

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a:Ljava/util/List;

    if-eqz v9, :cond_19

    iget-object v0, v9, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    goto :goto_17

    :cond_19
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    if-eqz v9, :cond_1a

    iget-object v0, v9, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    goto :goto_18

    :cond_1a
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_1b

    move-object/from16 v38, v10

    goto :goto_19

    :cond_1b
    move-object/from16 v38, v0

    :goto_19
    new-instance v40, Ljava/lang/String;

    invoke-direct/range {v40 .. v40}, Ljava/lang/String;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v42, 0x10000

    const/16 v43, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    move-object/from16 v31, v4

    move-object/from16 v37, v8

    :try_start_2
    invoke-direct/range {v24 .. v43}, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v0, v24

    :try_start_3
    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1b

    :catchall_2
    move-exception v0

    move-object/from16 v8, v37

    :goto_1a
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1b
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_1c

    :cond_1c
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_26

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_1c
    check-cast v3, Lkotlin/Result;

    iget-object v0, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_1e

    :try_start_4
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;

    iput-object v13, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iput-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    iput v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->g:I

    const/4 v4, 0x2

    iput v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->i:I

    invoke-virtual {v3, v0, v11, v1}, Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;->a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v0, v6, :cond_1d

    goto/16 :goto_29

    :cond_1d
    move-object v5, v2

    move-object v4, v8

    move v3, v11

    move-object v10, v15

    :goto_1d
    :try_start_5
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1f

    :catchall_3
    move-exception v0

    move-object v5, v2

    move-object v4, v8

    move v3, v11

    move-object v10, v15

    :goto_1e
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v8, Lkotlin/Result$Failure;

    invoke-direct {v8, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_1f
    move-object v15, v5

    move v5, v3

    move-object v3, v15

    move-object v15, v10

    goto :goto_20

    :cond_1e
    move-object v3, v2

    move-object v4, v8

    move v5, v11

    :goto_20
    instance-of v0, v0, Lkotlin/Result$Failure;

    xor-int/lit8 v8, v0, 0x1

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    sget-object v10, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->EMAIL:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eq v9, v10, :cond_21

    if-nez v0, :cond_1f

    goto :goto_22

    :cond_1f
    iput-object v13, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iput-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->g:I

    iput-boolean v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->h:Z

    const/4 v0, 0x5

    iput v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->i:I

    invoke-static {v3, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_20

    goto/16 :goto_29

    :cond_20
    move-object v0, v4

    move-object v4, v7

    move-object v7, v13

    move-object v5, v15

    :goto_21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;

    const/4 v10, 0x0

    invoke-direct {v9, v3, v5, v0, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v8, v10, v10, v9, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object v0, v7

    move-object v7, v4

    goto/16 :goto_26

    :cond_21
    :goto_22
    sget-object v0, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->BOOKED:Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->f:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v9, :cond_22

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    invoke-virtual {v3, v0, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->Cc(Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->E:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v9, Lkotlin/Result;

    invoke-direct {v9, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v13, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v15, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iput-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    const/4 v10, 0x0

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->g:I

    iput-boolean v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->h:Z

    const/4 v4, 0x3

    iput v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->i:I

    invoke-interface {v0, v9, v1}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_23

    goto/16 :goto_29

    :cond_23
    move-object v0, v3

    move-object v3, v7

    move-object v10, v13

    move-object v4, v15

    :goto_24
    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->g:I

    iput-boolean v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->h:Z

    const/4 v5, 0x4

    iput v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->i:I

    sget-object v5, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    invoke-virtual {v7, v5, v1}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_24

    goto/16 :goto_29

    :cond_24
    move-object v5, v10

    :goto_25
    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairCreationConfirmationScreen;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairCreationConfirmationScreen;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_25
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    const/4 v10, 0x7

    const/4 v12, 0x0

    invoke-static {v8, v12, v9, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object v7, v3

    move-object v0, v5

    move-object v5, v4

    :goto_26
    move-object v4, v5

    goto :goto_27

    :cond_26
    throw v0

    :cond_27
    move-object v0, v13

    move-object v4, v15

    :goto_27
    invoke-static {v7}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2b

    new-instance v5, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$BookRepairError;

    invoke-direct {v5, v3}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$BookRepairError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput-object v7, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->d:Ljava/lang/Object;

    iput-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iput-object v3, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->f:Ljava/io/Serializable;

    iput v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->g:I

    const/4 v5, 0x6

    iput v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$sendRepairData$3;->i:I

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v9, 0x7f140a5a

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-direct {v8, v9, v12, v10, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v7

    invoke-interface {v5, v7, v1}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v1, v5, :cond_28

    goto :goto_28

    :cond_28
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_28
    if-ne v1, v6, :cond_29

    :goto_29
    return-object v6

    :cond_29
    move-object v1, v0

    move-object v0, v4

    move-object v4, v2

    :goto_2a
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;

    const/4 v10, 0x0

    invoke-direct {v7, v4, v0, v5, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    invoke-static {v6, v10, v10, v7, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2a
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v4, "DistantRepairFormViewModelImpl"

    const-string v5, "Unable to create care service"

    invoke-interface {v0, v4, v5, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_2b
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2c
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
