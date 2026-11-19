.class final Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;
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
        "Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;",
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
    c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource$getCached3DPass$2"
    f = "PassLocalDataSource.kt"
    l = {
        0x40,
        0x40
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->i:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->i:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;-><init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->c:Ljava/lang/Object;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget v0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->f:I

    iget v2, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->e:I

    iget v4, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->d:I

    iget-object v6, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->b:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/Deferred;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->i:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    iget-object v2, p1, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    :try_start_2
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {v2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1;

    invoke-direct {v7, p1, v5}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1;-><init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v7, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v6

    invoke-interface {v2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v2

    new-instance v7, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2$1$card3dRectoDiffuseDeferred$1;

    invoke-direct {v7, p1, v5}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2$1$card3dRectoDiffuseDeferred$1;-><init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v7, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->d:I

    iput v0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->e:I

    iput v0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->f:I

    iput v4, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->g:I

    invoke-interface {v6, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, p1

    move v4, v0

    move-object p1, v2

    move v2, v4

    :goto_0
    iput-object v5, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->h:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->d:I

    iput v2, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->e:I

    iput v0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->f:I

    iput v3, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$getCached3DPass$2;->g:I

    invoke-interface {v6, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_2
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    :try_start_3
    check-cast p0, Lkotlin/Pair;

    iget-object p1, p0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/io/File;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Ljava/io/File;

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p1}, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p0, v0

    goto :goto_5

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_6
    :goto_5
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_7
    throw p1
.end method
