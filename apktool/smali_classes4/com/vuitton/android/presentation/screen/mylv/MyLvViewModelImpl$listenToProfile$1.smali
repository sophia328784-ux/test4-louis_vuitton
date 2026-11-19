.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0xf0,
        0xf0
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_3

    sget-object v6, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadUsername;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadUsername;

    invoke-interface {p1, v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v4

    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->c:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;->a:Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/AccountRepository;->c()Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;

    invoke-direct {v3, v5, v1, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1;->c:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
