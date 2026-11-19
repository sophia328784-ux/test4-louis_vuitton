.class final Lcom/perfectcorp/common/network/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/BlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/concurrent/locks/ReentrantLock;

.field public final d:Ljava/util/concurrent/locks/Condition;

.field public e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public f:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/network/l;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/perfectcorp/common/network/l;->b:Ljava/util/HashMap;

    new-instance v5, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v6, Lcom/perfectcorp/common/network/m;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/16 v7, 0xb

    invoke-direct {v5, v7, v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/common/network/l;->d:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/common/network/l;->f:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setRunningPriority] start. priority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/common/network/l;->f:Ljava/util/concurrent/BlockingQueue;

    const-string p1, "[setRunningPriority] signalAll"

    invoke-static {p1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/common/network/l;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "[setRunningPriority] end"

    invoke-static {p0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Runnable;

    const-string v0, "[add]"

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/l;->b(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "[addAll] start"

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->b(Ljava/lang/Runnable;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "[addAll] end"

    invoke-static {p0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final b(Ljava/lang/Runnable;)Z
    .locals 5

    const-string v0, "[offer] end"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[offer] start. r="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    check-cast p1, Lcom/perfectcorp/common/network/j;

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v2, "[offer] offer"

    invoke-static {v2}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[offer] offered="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", task.getPriority()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", runningPriority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object p1

    iget-object v3, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    if-ne p1, v3, :cond_0

    const-string p1, "[offer] signal"

    invoke-static {p1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/common/network/l;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final clear()V
    .locals 5

    const-string v0, "[clear] start"

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "[clear] end"

    invoke-static {p0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "[contains] end"

    const-string v1, "[contains] start. o="

    invoke-static {p1, v1}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "[containsAll] end"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[containsAll] start. c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final drainTo(Ljava/util/Collection;)I
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[drainTo] c="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/common/network/l;->drainTo(Ljava/util/Collection;I)I

    move-result p0

    return p0
.end method

.method public final drainTo(Ljava/util/Collection;I)I
    .locals 7

    const-string v0, "[drainTo] end"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[drainTo] strat. c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxElements="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v5

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final element()Ljava/lang/Object;
    .locals 3

    const-string v0, "[element] end"

    const-string v1, "[element] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/l;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 7

    const-string v0, "[isEmpty] end"

    const-string v1, "[isEmpty] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6

    const-string v0, "[iterator] end"

    const-string v1, "[iterator] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/common/network/l;->toArray()[Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p0, v4

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object p0

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 137
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/l;->b(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3

    check-cast p1, Ljava/lang/Runnable;

    const-string v0, "[offer] end"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[offer] start. r="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", unit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    check-cast p1, Lcom/perfectcorp/common/network/j;

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v2, "[offer] offer"

    invoke-static {v2}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[offer] offered="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", task.getPriority()="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", runningPriority="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object p1

    iget-object p3, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    if-ne p1, p3, :cond_0

    const-string p1, "[offer] signal"

    invoke-static {p1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/common/network/l;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return p2

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 3

    const-string v0, "[peek] end"

    const-string v1, "[peek] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    .line 93
    const-string v0, "[poll] end"

    const-string v1, "[poll] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/common/network/l;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[poll] start. timeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-string v0, "[poll] awaitNanos"

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/common/network/l;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[poll] end. result="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final synthetic put(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Runnable;

    const-string v0, "[put]"

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/l;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final remainingCapacity()I
    .locals 3

    const-string v0, "[remainingCapacity] end"

    const-string v1, "[remainingCapacity] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove()Ljava/lang/Object;
    .locals 2

    .line 58
    const-string v0, "[remove] end"

    const-string v1, "[remove] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/common/network/l;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "[remove] end"

    const-string v1, "[remove] start. o="

    invoke-static {p1, v1}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    instance-of v2, p1, Lcom/perfectcorp/common/network/j;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/perfectcorp/common/network/j;

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4

    const-string v0, "[removeAll] end"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[removeAll] start. c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/perfectcorp/common/network/l;->remove(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 7

    const-string v0, "[retainAll] end"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[retainAll] start. c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v5

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final size()I
    .locals 7

    const-string v0, "[size] end"

    const-string v1, "[size] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[size] size="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return v5

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final take()Ljava/lang/Object;
    .locals 2

    const-string v0, "[take] start"

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_0

    const-string v1, "[take] await"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[take] end. result="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 8

    const-string v0, "[toArray] end"

    const-string v1, "[toArray] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {p0, v7}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-array p0, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object p0

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .line 68
    const-string v0, "[toArray(T[])] end"

    const-string v1, "[toArray(T[])] start"

    invoke-static {v1}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->values()[Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {p0, v6}, Lcom/perfectcorp/common/network/l;->f(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    return-object p0

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v0}, Lcom/perfectcorp/common/network/l$a;->a(Ljava/lang/String;)V

    throw p0
.end method
