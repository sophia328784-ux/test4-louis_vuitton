.class final Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;
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
    c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$confirmAppointment$2"
    f = "OsaContactFormViewModelImpl.kt"
    l = {
        0x199,
        0x19f,
        0x1ad,
        0x1be,
        0x1ca,
        0x1cc,
        0x1db,
        0x1de,
        0x1e1
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

.field public final synthetic m:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->l:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->m:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->l:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->m:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->l:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    const/4 v15, 0x1

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->m:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const-string v3, "appointmentId"

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :pswitch_0
    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    check-cast v0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;

    :pswitch_1
    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1f

    :pswitch_2
    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v2

    move-object/from16 v16, v13

    const/4 v2, 0x3

    move-object v13, v6

    goto/16 :goto_16

    :pswitch_3
    iget v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v5, v0

    move-object v0, v3

    move-object/from16 v16, v13

    move-object v3, v2

    move-object v13, v6

    const/4 v2, 0x3

    goto/16 :goto_14

    :pswitch_4
    iget v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iget-object v8, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    check-cast v9, Lkotlin/Result;

    iget-object v9, v9, Lkotlin/Result;->b:Ljava/lang/Object;

    move v5, v0

    move-object v15, v2

    move-object/from16 v16, v13

    const/4 v2, 0x3

    move-object v13, v6

    goto/16 :goto_f

    :pswitch_5
    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v2

    move-object/from16 v24, v3

    move-object/from16 v16, v13

    const/4 v2, 0x3

    move-object v13, v6

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v15, v2

    move-object/from16 v24, v3

    :goto_0
    move-object/from16 v16, v13

    const/4 v2, 0x3

    move-object v13, v6

    goto/16 :goto_8

    :pswitch_6
    iget v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->j:I

    iget v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->i:I

    iget v8, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->h:I

    iget v9, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->g:I

    iget v10, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    check-cast v1, Lkotlin/Pair;

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object v4, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v2

    move-object/from16 v24, v3

    move v5, v7

    move-object/from16 v16, v13

    move v2, v0

    move-object v7, v4

    move-object v13, v6

    move-object/from16 v0, p1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v15, v2

    move-object/from16 v24, v3

    move-object v7, v4

    goto :goto_0

    :pswitch_7
    iget v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->h:I

    iget v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->g:I

    iget v4, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    check-cast v7, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object v8, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object v9, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v25, v4

    move v4, v0

    move-object v0, v8

    move-object v8, v7

    move v7, v1

    move-object v1, v9

    move/from16 v9, v25

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v15, v2

    move-object/from16 v24, v3

    move-object v7, v9

    goto :goto_0

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v4, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$BookAppointment;->a:Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$BookAppointment;

    invoke-interface {v0, v1, v4}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v7

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v7, v0, v3}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    :try_start_3
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v12, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput v5, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    iput v5, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->g:I

    iput v5, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->h:I

    iput v15, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    invoke-virtual {v13, v0, v11}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v14, :cond_1

    goto/16 :goto_20

    :cond_1
    move-object v8, v2

    move v4, v5

    move v9, v4

    move-object v1, v7

    move-object v0, v12

    move v7, v9

    :goto_1
    :try_start_4
    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v15

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v10, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, v5, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object v5, v5, Lkotlin/Pair;->c:Ljava/lang/Object;

    if-eqz v10, :cond_5

    if-eqz v5, :cond_5

    check-cast v5, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    check-cast v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Bc()Z

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    :try_start_5
    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    move-object/from16 v19, v2

    :try_start_6
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-object/from16 p1, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->z:Ljava/util/List;

    move-object/from16 v22, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2$1$1$appointment$1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-object/from16 v23, v3

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2$1$1$appointment$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    move-object/from16 v18, v6

    move-object v6, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->y:Ljava/lang/String;

    iput-object v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iput v9, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    iput v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->g:I

    iput v4, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->h:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    const/4 v3, 0x0

    :try_start_8
    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->i:I

    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->j:I

    const/4 v3, 0x2

    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v3, v18

    move-object/from16 v18, v1

    move-object v1, v3

    move-object/from16 v17, v0

    move-object/from16 v16, v13

    move v0, v15

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    move-object/from16 v24, v23

    const/4 v13, 0x0

    move/from16 v20, v7

    move/from16 v19, v9

    move-object/from16 v7, v21

    move-object v9, v2

    move/from16 v21, v4

    move-object/from16 v4, v22

    move-object/from16 v2, p1

    :try_start_9
    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt;->b(ZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-ne v0, v14, :cond_2

    goto/16 :goto_20

    :cond_2
    move-object/from16 v1, v17

    move-object/from16 v7, v18

    move/from16 v10, v19

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    :try_start_a
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    if-eqz v0, :cond_4

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Bc()Z

    move-result v1

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iput v10, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    iput v9, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->g:I

    iput v8, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->h:I

    iput v5, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->i:I

    iput v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->j:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/4 v2, 0x3

    :try_start_b
    iput v2, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    invoke-virtual {v3, v0, v1, v11}, Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;->a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_3

    goto/16 :goto_20

    :cond_3
    :goto_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    const/4 v2, 0x3

    goto/16 :goto_8

    :cond_4
    const/4 v2, 0x3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to build an appointment from forms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    const/4 v2, 0x3

    :goto_4
    move-object/from16 v7, v18

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v16, v13

    move-object/from16 v15, v19

    move-object/from16 v24, v23

    :goto_5
    const/4 v2, 0x3

    const/4 v13, 0x0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v16, v13

    move-object/from16 v15, v19

    move-object/from16 v24, v23

    const/4 v2, 0x3

    move-object v13, v3

    goto :goto_4

    :catchall_8
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v24, v3

    move-object/from16 v16, v13

    move-object/from16 v15, v19

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object/from16 v18, v1

    move-object v15, v2

    move-object/from16 v24, v3

    move-object/from16 v16, v13

    goto :goto_5

    :catchall_a
    move-exception v0

    move-object/from16 v18, v1

    move-object v15, v2

    move-object/from16 v24, v3

    move-object/from16 v16, v13

    const/4 v2, 0x3

    move-object v13, v6

    goto :goto_4

    :cond_5
    move-object/from16 v18, v1

    move-object v15, v2

    move-object/from16 v24, v3

    move-object/from16 v16, v13

    const/4 v2, 0x3

    move-object v13, v6

    move-object v6, v13

    move-object/from16 v7, v18

    :goto_6
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v6}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_7
    move-object v8, v7

    goto :goto_9

    :goto_8
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_7

    :goto_9
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_a

    :cond_6
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_23

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_a
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_9

    :try_start_c
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)Ljava/lang/Object;

    move-result-object v6

    instance-of v0, v6, Lkotlin/Result$Failure;

    if-eqz v0, :cond_7

    move-object v6, v13

    :cond_7
    check-cast v6, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v0

    goto :goto_b

    :cond_8
    move-object v6, v13

    goto :goto_c

    :goto_b
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_c
    move-object v7, v6

    goto :goto_d

    :cond_9
    move-object v7, v0

    :goto_d
    instance-of v0, v7, Lkotlin/Result$Failure;

    if-nez v0, :cond_16

    move-object v0, v7

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    move-object/from16 v3, v24

    invoke-interface {v8, v1, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_a
    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    if-eqz v0, :cond_b

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;->b:Ljava/lang/String;

    goto :goto_e

    :cond_b
    move-object v6, v13

    :goto_e
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    iput-object v8, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v12, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v15, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/4 v3, 0x0

    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    const/4 v3, 0x4

    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    invoke-virtual {v1, v0, v11}, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v14, :cond_d

    goto/16 :goto_20

    :cond_d
    move-object v3, v12

    const/4 v5, 0x0

    :goto_f
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, v9, Lkotlin/Result$Failure;

    if-nez v0, :cond_e

    :try_start_d
    check-cast v9, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;)Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    move-object v9, v0

    goto :goto_10

    :catchall_c
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v9, v1

    :cond_e
    :goto_10
    instance-of v0, v9, Lkotlin/Result$Failure;

    if-nez v0, :cond_10

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_11

    :cond_f
    move-object v3, v12

    const/4 v5, 0x0

    :cond_10
    :goto_11
    sget-object v0, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$BookStoreAppointment;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$BookStoreAppointment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    const-string v4, "OsaContactFormViewModelImpl"

    invoke-interface {v1, v4, v0}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    sget-object v0, Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;->BOOKED:Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    if-eqz v1, :cond_11

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->b:Ljava/lang/String;

    goto :goto_12

    :cond_11
    move-object v6, v13

    :goto_12
    if-eqz v15, :cond_12

    iget-object v1, v15, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->a:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v1, v13

    :goto_13
    invoke-static {v3, v0, v6, v1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v8, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iput v5, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    const/4 v1, 0x5

    iput v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    sget-object v1, Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;

    invoke-virtual {v0, v1, v11}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_13

    goto/16 :goto_20

    :cond_13
    move-object v0, v7

    move-object v7, v8

    :goto_14
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Bc()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1;

    invoke-direct {v4, v13, v3}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    invoke-static {v1, v13, v13, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_15
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iput v5, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    const/4 v4, 0x6

    iput v4, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    invoke-virtual {v1, v3, v11}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_15

    goto/16 :goto_20

    :cond_15
    :goto_16
    move-object v1, v0

    goto :goto_17

    :cond_16
    move-object v1, v7

    move-object v7, v8

    :goto_17
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v3, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$BookAppointmentError;

    invoke-direct {v3, v0}, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$BookAppointmentError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v3, v0, Lretrofit2/HttpException;

    const v4, 0x7f140a5a

    if-eqz v3, :cond_21

    check-cast v0, Lretrofit2/HttpException;

    iget v3, v0, Lretrofit2/HttpException;->b:I

    const/16 v5, 0x193

    if-ne v3, v5, :cond_21

    iget-object v0, v0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    :cond_17
    move-object v6, v13

    :goto_18
    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->b:Lkotlinx/serialization/json/Json;

    if-eqz v6, :cond_19

    :try_start_e
    invoke-static {v6}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_19

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->Companion:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v3, v6}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1a

    :catchall_d
    move-exception v0

    goto :goto_1b

    :cond_19
    :goto_19
    move-object v6, v13

    :goto_1a
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v6}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    goto :goto_1c

    :goto_1b
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_1c
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_1d

    :cond_1a
    instance-of v0, v3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_20

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    :goto_1d
    check-cast v0, Lkotlin/Result;

    iget-object v6, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, v6, Lkotlin/Result$Failure;

    if-eqz v0, :cond_1b

    move-object v6, v13

    :cond_1b
    check-cast v6, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;

    if-eqz v6, :cond_1c

    iget-object v0, v6, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;->b:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;->d:Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;

    if-eqz v0, :cond_1c

    iget-object v6, v0, Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;->c:Ljava/lang/String;

    goto :goto_1e

    :cond_1c
    move-object v6, v13

    :goto_1e
    const-string v0, "appointment_already_existing"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Bc()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {v12}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1;

    invoke-direct {v1, v13, v12}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$setAlreadyHasAppointConnectedBottomSheet$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    invoke-static {v0, v13, v13, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_21

    :cond_1d
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$GuestWithAppointmentConfirmBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$GuestWithAppointmentConfirmBottomSheet;

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/4 v3, 0x0

    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    const/4 v1, 0x7

    iput v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    move-object/from16 v1, v16

    invoke-virtual {v1, v0, v11}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_1e

    goto :goto_20

    :cond_1e
    move-object v0, v7

    :goto_1f
    move-object v7, v0

    goto :goto_21

    :cond_1f
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v3, 0x2

    invoke-direct {v0, v4, v13, v3, v13}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/4 v3, 0x0

    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    const/16 v1, 0x8

    iput v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    invoke-static {v12, v0, v11}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_1e

    goto :goto_20

    :cond_20
    throw v3

    :cond_21
    const/4 v3, 0x2

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v0, v4, v13, v3, v13}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->c:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->d:Ljava/lang/Object;

    iput-object v13, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/4 v3, 0x0

    iput v3, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->f:I

    const/16 v1, 0x9

    iput v1, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$confirmAppointment$2;->k:I

    invoke-static {v12, v0, v11}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_1e

    :goto_20
    return-object v14

    :cond_22
    :goto_21
    invoke-interface {v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_23
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
