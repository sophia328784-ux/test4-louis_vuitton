.class final Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;
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
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
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
    c = "com.vuitton.android.data.repository.BotProtectionRepositoryImpl$initialize$2"
    f = "BotProtectionRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->c:Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->c:Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;-><init>(Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->c:Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p1, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/akamai/botman/CYFMonitor;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    const-class v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    sput-boolean v3, LZjTIAZ/DbkYmF;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    monitor-exit v1

    iget-object v1, p1, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;->a:Landroid/app/Application;

    const-class v2, Lcom/akamai/botman/CYFMonitor;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-class v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v1, v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->h(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v2

    iget-object p1, p1, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1

    :goto_0
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_2
    move-exception p1

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw p1

    :goto_1
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_4
    move-exception p1

    goto :goto_1

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_3
    iget-object p0, p0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl$initialize$2;->c:Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
