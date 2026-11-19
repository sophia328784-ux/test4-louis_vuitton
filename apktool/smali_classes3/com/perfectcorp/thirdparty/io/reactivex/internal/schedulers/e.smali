.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

.field public static final c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

.field public static final d:J

.field public static final e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

.field public static final f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "pf.rx2.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->d:J

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    const-string v2, "PfRxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->dispose()V

    const-string v0, "pf.rx2.io-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    const-string v2, "PfRxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    const-string v3, "PfRxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->f:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

    sget-wide v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->d:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    :cond_0
    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->b()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;)V

    return-object v0
.end method
