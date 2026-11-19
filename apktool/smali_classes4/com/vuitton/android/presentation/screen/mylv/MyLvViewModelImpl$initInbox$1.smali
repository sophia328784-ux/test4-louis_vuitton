.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initInbox$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0x1a3,
        0x1a4
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->f:Lcom/vuitton/android/presentation/push/NotificationsManager;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    sget-object p1, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyInbox;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyInbox;

    invoke-interface {v1, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    :cond_3
    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->c:I

    invoke-interface {v2, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_0
    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;->c:I

    invoke-interface {v2, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_5

    :goto_1
    return-object v3

    :cond_5
    move-object p0, v4

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    new-instance v3, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyInboxError;

    invoke-direct {v3, p1}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyInboxError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_6
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/push/NotificationsManager;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
