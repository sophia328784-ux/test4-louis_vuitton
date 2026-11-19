.class public final Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;
.super Lcom/vuitton/android/presentation/screen/maintenance/Hilt_CheckMaintenanceStatusService;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final i:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;

.field public static final j:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;


# instance fields
.field public e:Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

.field public f:Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

.field public g:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->i:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;

    sget-object v0, Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;->EXPONENTIAL_BACKOFF:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

    sput-object v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->j:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/maintenance/Hilt_CheckMaintenanceStatusService;-><init>()V

    new-instance v0, Lw1;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static final e(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->e:Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

    if-eqz p0, :cond_4

    iput v4, v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$shouldStopService$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "areConfigsInCacheUseCase"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p3, "EXTRA_SKIP_INITIAL_DELAY"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->h:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const/4 p0, 0x2

    return p0
.end method
