.class final Lcom/perfectcorp/common/network/k;
.super Ljava/util/concurrent/ThreadPoolExecutor;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/k$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/common/network/l;

.field public c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public final e:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/common/network/l;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sget-object p1, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p1, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/network/k;->d:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/network/k;->e:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/perfectcorp/common/network/k;->b:Lcom/perfectcorp/common/network/l;

    iget-object p0, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p6, p0}, Lcom/perfectcorp/common/network/l;->a(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V

    return-void
.end method


# virtual methods
.method public final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[afterExecute] start. runningTasks.size()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/k;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskQueue.size()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perfectcorp/common/network/k;->b:Lcom/perfectcorp/common/network/l;

    invoke-virtual {v3}, Lcom/perfectcorp/common/network/l;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/perfectcorp/common/network/k;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/perfectcorp/common/network/j;

    invoke-virtual {v0}, Lcom/perfectcorp/common/network/j;->e()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "[afterExecute] remove from runningTasks"

    invoke-static {v4}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "[afterExecute] checking priority. runningTasks.size()="

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    check-cast v6, Lcom/perfectcorp/common/network/j;

    invoke-virtual {v6}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v7

    iget-object v8, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    if-ne v7, v8, :cond_1

    const-string v5, "[afterExecute] has same priority task"

    invoke-static {v5}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-string v7, "[afterExecute] higher priority found"

    invoke-static {v7}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[afterExecute] resetPriority="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", nextPriority="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", runningPriority="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    if-eq p1, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[afterExecute] update priority to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/k;->c(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V

    :cond_4
    invoke-virtual {v0}, Lcom/perfectcorp/common/network/j;->e()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "[afterExecute] networkTask resume start"

    invoke-static {p0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/common/network/j;->f()V

    invoke-virtual {v3, v0}, Lcom/perfectcorp/common/network/l;->b(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "[afterExecute] networkTask offer failed"

    invoke-static {p0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string p1, "offer task queue failed"

    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/common/network/j;->a(Ljava/lang/Throwable;)Z

    :cond_5
    const-string p0, "[afterExecute] networkTask resume end"

    invoke-static {p0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[afterExecute] end. runningTasks.size()="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/perfectcorp/common/network/l;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final c(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setRunningPriority] start. priority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/common/network/k;->b:Lcom/perfectcorp/common/network/l;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/common/network/l;->a(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V

    const-string v0, "[setRunningPriority] priority of queue updated"

    invoke-static {v0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string p0, "[setRunningPriority] end"

    invoke-static {p0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic close()V
    .locals 5

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[execute] start. r="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runningTasks.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perfectcorp/common/network/k;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", taskQueue.size()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perfectcorp/common/network/k;->b:Lcom/perfectcorp/common/network/l;

    invoke-virtual {v4}, Lcom/perfectcorp/common/network/l;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/perfectcorp/common/network/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/common/network/k;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    move-object v5, p1

    check-cast v5, Lcom/perfectcorp/common/network/j;

    const-string v6, "[execute] add to runningTasks"

    invoke-static {v6}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[execute] check priority. runningPriority="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", task.getPriority()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v5}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-gez v6, :cond_2

    const-string v6, "[execute] need to promote priority"

    invoke-static {v6}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/perfectcorp/common/network/k;->c(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V

    const-string v6, "[pauseRunningTasks] start"

    invoke-static {v6}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    check-cast v7, Lcom/perfectcorp/common/network/j;

    invoke-virtual {v7}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v8

    iget-object v9, p0, Lcom/perfectcorp/common/network/k;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gez v8, :cond_0

    invoke-virtual {v7}, Lcom/perfectcorp/common/network/j;->d()V

    goto :goto_0

    :cond_1
    const-string v6, "[pauseRunningTasks] end"

    invoke-static {v6}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    const-string v6, "[execute] super.execute()"

    invoke-static {v6}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    invoke-super {p0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[execute] end. r="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/perfectcorp/common/network/l;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/network/k$a;->a(Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_3
    const-string p0, "Runnable must be NetworkTask instance"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
