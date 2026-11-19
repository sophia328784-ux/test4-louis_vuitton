.class final Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$validatePassword$1"
    f = "ForgetPasswordViewModelImpl.kt"
    l = {
        0x8c,
        0x94,
        0xa2,
        0xa8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->e:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->e:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->e:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->o:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->d:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->c:Ljava/lang/Object;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlin/Result;

    iget-object v10, v10, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v7, v6

    move-object v6, v10

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v13, Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Action$LoadForgetPassword;->a:Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Action$LoadForgetPassword;

    invoke-interface {v6, v12, v13}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v6

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordValidateUseCase;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->b:Landroidx/compose/runtime/MutableState;

    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v13, v14, v15, v7}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->d:I

    invoke-virtual {v12, v13, v0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordValidateUseCase;->a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    :goto_1
    sget-object v10, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v10, v6, Lkotlin/Result$Failure;

    if-nez v10, :cond_7

    move-object v10, v6

    check-cast v10, Lkotlin/Unit;

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$PasswordResetSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$PasswordResetSuccess;

    invoke-virtual {v1, v10}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->y4(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordSuccess;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->c:Ljava/lang/Object;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->d:I

    invoke-virtual {v2, v10, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v9, v7

    :goto_2
    move-object v7, v9

    :cond_7
    invoke-static {v6}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_11

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$PasswordResetFailure;->a:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$PasswordResetFailure;

    invoke-virtual {v1, v10}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->y4(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel;)V

    new-instance v10, Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Error$LoadForgetPasswordError;

    invoke-direct {v10, v9}, Lcom/vuitton/android/domain/monitoring/authentication/ForgetPasswordMonitoring$Error$LoadForgetPasswordError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v10, v9, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException;

    if-eqz v10, :cond_10

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException;

    iget-object v10, v9, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException;->b:Ljava/lang/String;

    instance-of v11, v9, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$PasswordAlreadyUsed;

    if-eqz v11, :cond_8

    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$PasswordAlreadyUsed;

    invoke-direct {v9, v10}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$PasswordAlreadyUsed;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    instance-of v11, v9, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$InvalidOtp;

    if-eqz v11, :cond_9

    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$InvalidOtp;

    invoke-direct {v9, v10}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$InvalidOtp;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    instance-of v9, v9, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$ExpiredOtp;

    if-eqz v9, :cond_a

    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$ExpiredOtp;

    invoke-direct {v9, v10}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$ExpiredOtp;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$UnknownError;

    invoke-direct {v9, v10}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_3
    instance-of v11, v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$ExpiredOtp;

    if-nez v11, :cond_b

    instance-of v11, v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$InvalidOtp;

    if-eqz v11, :cond_c

    :cond_b
    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v11, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_c
    instance-of v10, v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$PasswordAlreadyUsed;

    if-eqz v10, :cond_e

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a:Landroidx/compose/runtime/MutableState;

    move-object v10, v9

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$PasswordAlreadyUsed;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$PasswordAlreadyUsed;->b:Ljava/lang/String;

    if-nez v10, :cond_d

    const-string v10, ""

    :cond_d
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    :cond_e
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordError;

    invoke-direct {v1, v9}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordError;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;)V

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->c:Ljava/lang/Object;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->d:I

    invoke-virtual {v2, v1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_f

    goto :goto_5

    :cond_f
    move-object v0, v7

    :goto_4
    move-object v7, v0

    goto :goto_6

    :cond_10
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordError;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$UnknownError;

    invoke-direct {v3, v11}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel$UnknownError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent$ForgetPasswordError;-><init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordExceptionUiModel;)V

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->c:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl$validatePassword$1;->d:I

    invoke-virtual {v2, v1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_f

    :goto_5
    return-object v5

    :cond_11
    :goto_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
