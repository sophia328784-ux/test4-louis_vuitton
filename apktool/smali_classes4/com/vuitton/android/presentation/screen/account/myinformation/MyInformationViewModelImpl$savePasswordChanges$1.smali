.class final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$savePasswordChanges$1"
    f = "MyInformationViewModelImpl.kt"
    l = {
        0x1c5,
        0x1c8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->f:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->f:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->f:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->e:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v10, v3

    move-object v3, p1

    move-object p1, v10

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditPassword;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditPassword;

    invoke-interface {p1, v3, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/profile/ProfilePwdUpdate;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->h:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/vuitton/foundation/model/domain/model/profile/ProfilePwdUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->e:I

    invoke-virtual {v3, v7, p0}, Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;->a(Lcom/vuitton/foundation/model/domain/model/profile/ProfilePwdUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v3, Lkotlin/Result$Failure;

    if-nez v7, :cond_6

    move-object v7, v3

    check-cast v7, Lkotlin/Unit;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->v:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v8, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditPassword$PasswordChangeSuccess;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditPassword$PasswordChangeSuccess;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1;->e:I

    invoke-virtual {v7, v8, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_5

    :goto_1
    return-object v2

    :cond_5
    move-object p0, p1

    move-object v2, v0

    :goto_2
    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140e47

    invoke-direct {p1, v7, v6, v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, p1, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z

    move-object p1, p0

    :cond_6
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditPasswordError;

    invoke-direct {v2, p0}, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditPasswordError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v2, p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$InvalidPassword;

    const v3, 0x7f140ae2

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Error to validate Login: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "MyInformationViewModelImpl"

    invoke-interface {v2, v4, p0, v6}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {p0, v3, v6, v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, v7}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z

    goto :goto_4

    :cond_7
    instance-of v2, p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;->b:Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$savePasswordChanges$1$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    if-eq p0, v4, :cond_a

    if-eq p0, v5, :cond_9

    const/4 v2, 0x3

    if-eq p0, v2, :cond_8

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140967

    invoke-direct {p0, v2, v6, v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140e48

    invoke-direct {p0, v2, v6, v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_9
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {p0, v3, v6, v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_a
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140e4b

    invoke-direct {p0, v2, v6, v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    invoke-virtual {v0, p0, v7}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z

    :cond_b
    :goto_4
    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_c
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
