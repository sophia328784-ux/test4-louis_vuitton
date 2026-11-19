.class final Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;
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
    c = "com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService$onStartCommand$1"
    f = "CheckMaintenanceStatusService.kt"
    l = {
        0x8f,
        0x95,
        0x9a,
        0xa9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->d:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->d:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->e:Z

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->b:I

    const-wide/32 v8, 0x493e0

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->d:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v11, :cond_1

    if-ne v0, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->c:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->b:I

    invoke-static {v13, p0}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->e(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Landroid/app/Service;->stopSelf()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->e:Z

    if-nez v0, :cond_7

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->c:Ljava/lang/Object;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->b:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_7

    goto/16 :goto_5

    :cond_7
    :goto_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->i:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->e(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v3, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->j:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

    new-instance v4, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;

    invoke-direct {v4, v13, v12}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->c:Ljava/lang/Object;

    iput v11, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->b:I

    const/4 v0, 0x3

    const-wide/16 v1, 0x3a98

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt;->a(IJLcom/vuitton/android/core/coroutine/operator/RetryMechanism;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_8

    goto :goto_5

    :cond_8
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->q:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity$Companion;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/LVApplication;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/LVApplication;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->c:Ljava/lang/Object;

    iput v10, p0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$onStartCommand$1;->b:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_7

    :goto_5
    return-object v7

    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
