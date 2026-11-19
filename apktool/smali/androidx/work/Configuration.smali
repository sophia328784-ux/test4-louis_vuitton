.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;,
        Landroidx/work/Configuration$Companion;,
        Landroidx/work/Configuration$Provider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\u0008B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/work/Configuration;",
        "",
        "Landroidx/work/Configuration$Builder;",
        "builder",
        "<init>",
        "(Landroidx/work/Configuration$Builder;)V",
        "Builder",
        "Provider",
        "Companion",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Landroidx/work/Clock;

.field public final e:Landroidx/work/WorkerFactory;

.field public final f:Landroidx/work/InputMergerFactory;

.field public final g:Landroidx/work/RunnableScheduler;

.field public final h:J

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:Z

.field public final n:Landroidx/work/Tracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/Configuration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/work/Configuration$Builder;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/work/ConfigurationKt;->a(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroidx/work/Configuration;->a:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    invoke-static {v1}, Lkotlinx/coroutines/ExecutorsKt;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    :goto_1
    iput-object v0, p0, Landroidx/work/Configuration;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p1, Landroidx/work/Configuration$Builder;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/work/ConfigurationKt;->a(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Landroidx/work/Configuration;->c:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Landroidx/work/Configuration$Builder;->e:Landroidx/work/Clock;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/work/SystemClock;

    invoke-direct {v0}, Landroidx/work/SystemClock;-><init>()V

    :cond_3
    iput-object v0, p0, Landroidx/work/Configuration;->d:Landroidx/work/Clock;

    iget-object v0, p1, Landroidx/work/Configuration$Builder;->b:Landroidx/work/WorkerFactory;

    if-nez v0, :cond_4

    sget-object v0, Landroidx/work/DefaultWorkerFactory;->a:Landroidx/work/DefaultWorkerFactory;

    :cond_4
    iput-object v0, p0, Landroidx/work/Configuration;->e:Landroidx/work/WorkerFactory;

    iget-object v0, p1, Landroidx/work/Configuration$Builder;->c:Landroidx/work/InputMergerFactory;

    if-nez v0, :cond_5

    sget-object v0, Landroidx/work/NoOpInputMergerFactory;->a:Landroidx/work/NoOpInputMergerFactory;

    :cond_5
    iput-object v0, p0, Landroidx/work/Configuration;->f:Landroidx/work/InputMergerFactory;

    iget-object v0, p1, Landroidx/work/Configuration$Builder;->f:Landroidx/work/RunnableScheduler;

    if-nez v0, :cond_6

    new-instance v0, Landroidx/work/impl/DefaultRunnableScheduler;

    invoke-direct {v0}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    :cond_6
    iput-object v0, p0, Landroidx/work/Configuration;->g:Landroidx/work/RunnableScheduler;

    iget v0, p1, Landroidx/work/Configuration$Builder;->h:I

    iput v0, p0, Landroidx/work/Configuration;->i:I

    iget v0, p1, Landroidx/work/Configuration$Builder;->i:I

    iput v0, p0, Landroidx/work/Configuration;->j:I

    iget v0, p1, Landroidx/work/Configuration$Builder;->j:I

    iput v0, p0, Landroidx/work/Configuration;->l:I

    iget-wide v0, p1, Landroidx/work/Configuration$Builder;->g:J

    iput-wide v0, p0, Landroidx/work/Configuration;->h:J

    iget v0, p1, Landroidx/work/Configuration$Builder;->k:I

    iput v0, p0, Landroidx/work/Configuration;->k:I

    iget-boolean v0, p1, Landroidx/work/Configuration$Builder;->l:Z

    iput-boolean v0, p0, Landroidx/work/Configuration;->m:Z

    iget-object p1, p1, Landroidx/work/Configuration$Builder;->m:Landroidx/work/Tracer;

    if-nez p1, :cond_7

    new-instance p1, Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :cond_7
    iput-object p1, p0, Landroidx/work/Configuration;->n:Landroidx/work/Tracer;

    return-void
.end method
