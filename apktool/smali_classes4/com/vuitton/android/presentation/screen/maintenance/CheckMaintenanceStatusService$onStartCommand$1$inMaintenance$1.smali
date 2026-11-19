.class final Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1"
    f = "CheckMaintenanceStatusService.kt"
    l = {
        0x9e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;->c:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;->c:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;->c:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->f:Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

    if-eqz p1, :cond_3

    iput v3, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    const-string p0, "isAppInMaintenanceUseCase"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method
