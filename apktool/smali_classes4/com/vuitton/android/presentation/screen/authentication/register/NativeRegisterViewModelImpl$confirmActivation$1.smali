.class final Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$confirmActivation$1"
    f = "NativeRegisterViewModelImpl.kt"
    l = {
        0x1b4,
        0x1b8,
        0x1b9,
        0x1bd,
        0x200
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Throwable;

.field public f:Ljava/util/List;

.field public g:Ljava/util/Iterator;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->l:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->l:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->k:I

    const-string v3, "NativeRegisterViewModelImpl"

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->j:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->i:I

    iget v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->g:Ljava/util/Iterator;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->f:Ljava/util/List;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_0
    const/4 v9, 0x5

    goto/16 :goto_d

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->i:I

    iget v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    check-cast v5, Lkotlin/Unit;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_3
    move/from16 v24, v4

    move v4, v2

    move/from16 v2, v24

    goto/16 :goto_3

    :cond_4
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->i:I

    iget v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    check-cast v5, Lkotlin/Unit;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    check-cast v11, Lkotlin/Result;

    iget-object v11, v11, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v11

    move-object v11, v4

    move v4, v2

    goto :goto_1

    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->l:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v11, Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Action$ActivateAccount;->a:Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Action$ActivateAccount;

    invoke-interface {v4, v5, v11}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v4

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;->a:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v13, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v11, :cond_2b

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->k:I

    invoke-virtual {v12, v11, v5, v0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    goto/16 :goto_a

    :cond_8
    move-object v11, v2

    move-object v12, v4

    move v4, v8

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v5, Lkotlin/Result$Failure;

    if-nez v2, :cond_b

    move-object v2, v5

    check-cast v2, Lkotlin/Unit;

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->R:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->i:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->k:I

    invoke-interface {v2, v13, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto/16 :goto_a

    :cond_9
    move v2, v8

    :goto_2
    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->i:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->k:I

    sget-object v14, Lcom/vuitton/android/core/events/AppEvent$LogInEvent;->a:Lcom/vuitton/android/core/events/AppEvent$LogInEvent;

    invoke-virtual {v13, v14, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_3

    goto/16 :goto_a

    :goto_3
    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v14, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RegistrationCompleted;

    new-instance v15, Lkotlin/Pair;

    const-string v8, "af_registration_method"

    const-string v6, "email_sign_up"

    invoke-direct {v15, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v14, v6}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RegistrationCompleted;-><init>(Ljava/util/Map;)V

    invoke-interface {v13, v3, v14}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->i:I

    const/4 v4, 0x4

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->k:I

    invoke-virtual {v6, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_a

    goto/16 :goto_a

    :cond_a
    move-object v4, v5

    move-object v5, v11

    move-object v11, v12

    :goto_4
    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConfirmActivateAccountSuccess;

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationSuccessEvent;

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    move-object v12, v11

    move-object v11, v5

    move-object v5, v4

    move v4, v2

    :cond_b
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_29

    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationFailureEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnAccountRegistrationFailureEvent;

    invoke-virtual {v11, v6}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    new-instance v6, Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Error$ActivateAccountError;

    invoke-direct {v6, v2}, Lcom/vuitton/android/domain/monitoring/authentication/NativeRegisterMonitoring$Error$ActivateAccountError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v12, v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v6, v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    if-eqz v6, :cond_28

    move-object v6, v2

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListExceptionUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;->b:Ljava/util/List;

    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v13, v11

    move v11, v4

    move-object v4, v13

    move-object v14, v2

    move-object v15, v5

    move-object v13, v6

    move-object v5, v12

    const/4 v2, 0x0

    move-object v12, v8

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    move-object/from16 v17, v10

    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordRules;

    if-nez v10, :cond_c

    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsName;

    if-nez v10, :cond_c

    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsEmail;

    if-eqz v10, :cond_d

    :cond_c
    const/4 v9, 0x5

    goto/16 :goto_c

    :cond_d
    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidEmail;

    if-nez v10, :cond_e

    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UserAlreadyExists;

    if-nez v10, :cond_e

    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$EmailAndUsernameNotMatch;

    if-eqz v10, :cond_f

    :cond_e
    const/4 v9, 0x5

    goto/16 :goto_b

    :cond_f
    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;

    if-eqz v10, :cond_10

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->j:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;->b:Ljava/lang/String;

    invoke-virtual {v10, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :cond_10
    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;

    if-eqz v10, :cond_11

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;->b:Ljava/lang/String;

    invoke-virtual {v10, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :cond_11
    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;

    if-eqz v10, :cond_12

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;->b:Ljava/lang/String;

    invoke-virtual {v10, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :cond_12
    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;

    if-eqz v10, :cond_13

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;->b:Ljava/lang/String;

    invoke-virtual {v10, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :cond_13
    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;

    if-eqz v10, :cond_18

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;

    iget-object v10, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;

    sget-object v16, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v16, v6

    if-eq v6, v7, :cond_17

    if-eq v6, v9, :cond_16

    const/4 v9, 0x3

    if-eq v6, v9, :cond_15

    const/4 v9, 0x4

    if-ne v6, v9, :cond_14

    goto :goto_6

    :cond_14
    invoke-static {}, Lv40;->g()V

    return-object v17

    :cond_15
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6, v10}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6, v10}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6, v10}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    :goto_6
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :cond_18
    instance-of v9, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeBlocked;

    if-nez v9, :cond_19

    instance-of v9, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeToBeBlocked;

    if-eqz v9, :cond_1a

    :cond_19
    const/4 v9, 0x2

    goto/16 :goto_9

    :cond_1a
    instance-of v9, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPhone;

    if-nez v9, :cond_1b

    instance-of v9, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCallingCode;

    if-eqz v9, :cond_1c

    :cond_1b
    const/4 v9, 0x2

    goto/16 :goto_8

    :cond_1c
    instance-of v9, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;

    if-eqz v9, :cond_1d

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;->b:Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :cond_1d
    instance-of v9, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;

    if-eqz v9, :cond_23

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;

    iget-object v9, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1$WhenMappings;->b:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v10, v6

    if-eq v6, v7, :cond_22

    const/4 v10, 0x2

    if-eq v6, v10, :cond_21

    const/4 v10, 0x3

    if-eq v6, v10, :cond_20

    const/4 v10, 0x4

    if-eq v6, v10, :cond_1f

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-static {}, Lv40;->g()V

    return-object v17

    :cond_1f
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6, v9}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_20
    const/4 v10, 0x4

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6, v9}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_21
    const/4 v10, 0x4

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6, v9}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_22
    const/4 v10, 0x4

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6, v9}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    :goto_7
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :cond_23
    const/4 v10, 0x4

    instance-of v7, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidOtp;

    if-eqz v7, :cond_24

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidOtp;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidOtp;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140967

    move-object/from16 v10, v17

    const/4 v9, 0x2

    invoke-direct {v6, v7, v10, v9, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v6}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Fc(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)V

    goto/16 :goto_0

    :goto_8
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_0

    :goto_9
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->T:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;->a()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25

    const-string v6, ""

    :cond_25
    invoke-direct {v9, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v23, 0x3c

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    invoke-static/range {v18 .. v23}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v6

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->d:Ljava/lang/Object;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->e:Ljava/lang/Throwable;

    move-object v9, v13

    check-cast v9, Ljava/util/List;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->f:Ljava/util/List;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->g:Ljava/util/Iterator;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->h:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->i:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->j:I

    const/4 v9, 0x5

    iput v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$confirmActivation$1;->k:I

    invoke-interface {v7, v6, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_26

    :goto_a
    return-object v1

    :goto_b
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto :goto_d

    :goto_c
    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    :cond_26
    :goto_d
    const/4 v7, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;

    const/4 v10, 0x0

    invoke-direct {v1, v13, v4, v10}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$redirectToEarlierStep$1;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v0, v10, v10, v1, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object v11, v4

    move-object v12, v5

    move-object v2, v14

    :cond_28
    sget-object v0, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v1, "Unable to validate registration"

    invoke-virtual {v0, v3, v1, v2}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29
    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2a
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v12}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_2b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
