.class abstract Lcom/perfectcorp/common/downloader/p;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/downloader/p$f;,
        Lcom/perfectcorp/common/downloader/p$b;,
        Lcom/perfectcorp/common/downloader/p$a;,
        Lcom/perfectcorp/common/downloader/p$d;,
        Lcom/perfectcorp/common/downloader/p$c;,
        Lcom/perfectcorp/common/downloader/p$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p<",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:J

.field private final c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/net/URI;

.field private final f:Ljava/io/File;

.field private final g:Lcom/perfectcorp/common/downloader/o;

.field private h:I

.field private volatile i:D

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/perfectcorp/common/downloader/p;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/common/downloader/p$f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/common/downloader/p;->b:J

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p;->m:Ljava/lang/Object;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/p$f;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p;->d:Ljava/lang/Object;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/p$f;->a:Ljava/net/URI;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p;->e:Ljava/net/URI;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/p$f;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p;->f:Ljava/io/File;

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/p$f;->d:Lcom/perfectcorp/common/downloader/o;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p;->g:Lcom/perfectcorp/common/downloader/o;

    iget p1, p1, Lcom/perfectcorp/common/downloader/p$f;->e:I

    iput p1, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/perfectcorp/common/downloader/p;->i:D

    return-void
.end method

.method public abstract a(Ljava/net/URI;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/common/downloader/p;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/perfectcorp/common/downloader/p;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/o;->isDone()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/perfectcorp/common/downloader/p$a;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/perfectcorp/common/downloader/p$d;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lcom/perfectcorp/common/downloader/p$c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method public final e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method public final f()D
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/common/downloader/p;->i:D

    return-wide v0
.end method

.method public final g()J
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/p;->g:Lcom/perfectcorp/common/downloader/o;

    iget-wide v0, v0, Lcom/perfectcorp/common/downloader/o;->c:J

    iget-wide v2, p0, Lcom/perfectcorp/common/downloader/p;->b:J

    sget-wide v4, Lcom/perfectcorp/common/downloader/p;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/common/downloader/p;->j:Z

    return-void
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/common/downloader/p;->k:Z

    return p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/p;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/common/downloader/p;->l:Z

    return-void
.end method

.method public final bridge synthetic l()Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method public final declared-synchronized run()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/common/downloader/p;->m:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/o;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    const/4 v3, 0x3

    if-eq v1, v2, :cond_0

    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Change thread priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/perfectcorp/common/downloader/p;->j:Z

    iput-boolean v2, p0, Lcom/perfectcorp/common/downloader/p;->k:Z

    iput-boolean v2, p0, Lcom/perfectcorp/common/downloader/p;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/perfectcorp/common/downloader/p;->c()V

    iget-object v2, p0, Lcom/perfectcorp/common/downloader/p;->e:Ljava/net/URI;

    iget-object v4, p0, Lcom/perfectcorp/common/downloader/p;->f:Ljava/io/File;

    invoke-virtual {p0, v2, v4}, Lcom/perfectcorp/common/downloader/p;->a(Ljava/net/URI;Ljava/io/File;)V

    iget-object v2, p0, Lcom/perfectcorp/common/downloader/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget-object v4, p0, Lcom/perfectcorp/common/downloader/p;->f:Ljava/io/File;

    invoke-virtual {v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/perfectcorp/common/downloader/p$a; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/perfectcorp/common/downloader/p$c; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/perfectcorp/common/downloader/p$d; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/perfectcorp/common/downloader/p$b; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    if-eq v1, v2, :cond_2

    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Revert thread priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v3, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    const-string v4, "Task"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Task failed. key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/perfectcorp/common/downloader/p;->d:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", downloadUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/perfectcorp/common/downloader/p;->e:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/perfectcorp/common/downloader/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v4, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    if-eq v1, v2, :cond_2

    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Revert thread priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    :catchall_2
    move-exception v2

    goto/16 :goto_3

    :catch_0
    :try_start_6
    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Task finished. key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/p;->d:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/perfectcorp/common/downloader/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget-object v4, p0, Lcom/perfectcorp/common/downloader/p;->f:Ljava/io/File;

    invoke-virtual {v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    if-eq v1, v2, :cond_2

    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Revert thread priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_8
    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Task stopped. key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/p;->d:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    if-eq v1, v2, :cond_2

    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Revert thread priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_2
    :try_start_a
    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Task paused. key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/p;->d:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perfectcorp/common/downloader/p;->k:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    if-eq v1, v2, :cond_2

    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Revert thread priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_3
    :try_start_c
    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Task already done. key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/p;->d:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget v2, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    if-eq v1, v2, :cond_2

    const-string v2, "Task"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Revert thread priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :goto_3
    iget v4, p0, Lcom/perfectcorp/common/downloader/p;->h:I

    if-eq v1, v4, :cond_1

    const-string v4, "Task"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Revert thread priority to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_1
    throw v2

    :cond_2
    :goto_4
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v1

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0
.end method
