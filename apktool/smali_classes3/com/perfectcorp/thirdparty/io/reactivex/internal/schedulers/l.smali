.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:I

.field public static final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "rx2.purge-enabled"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;->a:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;->a:Z

    :goto_0
    iget-boolean v2, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "rx2.purge-period-seconds"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    iput v4, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;->b:I

    :goto_1
    iget-boolean v0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;->a:Z

    sput-boolean v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->a:Z

    iget v1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$a;->b:I

    sput v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->b:I

    if-eqz v0, :cond_4

    :goto_2
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_4

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    const-string v3, "RxSchedulerPurge"

    invoke-direct {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    :cond_2
    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$b;

    invoke-direct {v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l$b;-><init>()V

    sget v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/l;->b:I

    int-to-long v7, v0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v7

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
