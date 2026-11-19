.class public final Lcom/perfectcorp/common/logger/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/utility/Log$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/logger/a$a;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/ThreadLocal;

.field public static final k:Ljava/lang/ThreadLocal;


# instance fields
.field public b:I

.field public final c:J

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public h:Ljava/io/BufferedWriter;

.field public i:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/logger/b;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/logger/a;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/perfectcorp/common/logger/c;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/logger/a;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/perfectcorp/common/logger/a;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/common/logger/a;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/common/logger/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    iput-object v0, p0, Lcom/perfectcorp/common/logger/a;->i:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/common/logger/a;->e:Ljava/io/File;

    iput-object p2, p0, Lcom/perfectcorp/common/logger/a;->f:Ljava/io/File;

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/perfectcorp/common/logger/d;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p0, p2, Lcom/perfectcorp/common/logger/d;->b:Lcom/perfectcorp/common/logger/a;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p1, p0, Lcom/perfectcorp/common/logger/a;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/perfectcorp/common/logger/e;

    invoke-direct {p2, p0}, Lcom/perfectcorp/common/logger/e;-><init>(Lcom/perfectcorp/common/logger/a;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/perfectcorp/common/logger/a$a;->b(I)Lcom/perfectcorp/common/logger/a$a;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/perfectcorp/common/logger/a;->b(Lcom/perfectcorp/common/logger/a$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 9
    sget-object p3, Lcom/perfectcorp/common/logger/a$a;->a:Lcom/perfectcorp/common/logger/a$a;

    invoke-virtual {p0, p3, p1, p2}, Lcom/perfectcorp/common/logger/a;->b(Lcom/perfectcorp/common/logger/a$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lcom/perfectcorp/common/logger/a$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/perfectcorp/common/logger/a;->e:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/common/logger/a$a;->a(Lcom/perfectcorp/common/logger/a$a;)I

    move-result v0

    iget v2, p0, Lcom/perfectcorp/common/logger/a;->b:I

    if-ge v0, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v4, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v6, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/perfectcorp/common/logger/a;->c:J

    sub-long/2addr v2, v8

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v0, Lcom/perfectcorp/common/logger/g;

    move-object v1, p0

    move-object v9, p1

    move-object v10, p2

    move-object v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/perfectcorp/common/logger/g;-><init>(Lcom/perfectcorp/common/logger/a;JJJLjava/util/Date;Lcom/perfectcorp/common/logger/a$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/logger/a;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/logger/f;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/logger/f;-><init>(Lcom/perfectcorp/common/logger/a;)V

    iget-object p0, p0, Lcom/perfectcorp/common/logger/a;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finalize()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/common/logger/a;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
