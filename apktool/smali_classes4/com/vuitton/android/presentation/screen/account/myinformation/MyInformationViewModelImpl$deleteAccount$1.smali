.class final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;
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
    c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$deleteAccount$1"
    f = "MyInformationViewModelImpl.kt"
    l = {
        0x13f,
        0x140,
        0x143
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->v:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->d:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$DeleteAccount;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$DeleteAccount;

    invoke-interface {p1, v4, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$DeleteProfileEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$DeleteProfileEvent;

    invoke-virtual {v0, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->m5(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->d:I

    invoke-virtual {v0, p0}, Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, p1

    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, v0, Lkotlin/Result$Failure;

    if-nez p1, :cond_5

    move-object p1, v0

    check-cast p1, Lkotlin/Unit;

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$ShowAccountDeletedConfirmation;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$ShowAccountDeletedConfirmation;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->c:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->d:I

    invoke-virtual {v1, p1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v6, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$DeleteAccountError;

    invoke-direct {v6, p1}, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$DeleteAccountError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$AccountDeleteError;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$AccountDeleteError;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$deleteAccount$1;->d:I

    invoke-virtual {v1, p1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_6

    :goto_2
    return-object v3

    :cond_6
    move-object p0, v4

    :goto_3
    move-object v4, p0

    :cond_7
    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
