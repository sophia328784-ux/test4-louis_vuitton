.class public final Landroidx/media3/common/util/ListenerSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;,
        Landroidx/media3/common/util/ListenerSet$ListenerHolder;,
        Landroidx/media3/common/util/ListenerSet$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/Clock;

.field public final b:Ljava/lang/Thread;

.field public final c:Landroidx/media3/common/util/HandlerWrapper;

.field public final d:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Ljava/util/ArrayDeque;

.field public final h:Ljava/lang/Object;

.field public i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 60
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 7

    .line 57
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/media3/common/util/ListenerSet;->a:Landroidx/media3/common/util/Clock;

    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet;->b:Ljava/lang/Thread;

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p5, p0, Landroidx/media3/common/util/ListenerSet;->d:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->h:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->f:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->g:Ljava/util/ArrayDeque;

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    new-instance p1, Landroidx/media3/common/util/a;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Landroidx/media3/common/util/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p4, p2, p1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/HandlerWrapper;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/HandlerWrapper;

    :goto_0
    iput-boolean p6, p0, Landroidx/media3/common/util/ListenerSet;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->i:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    invoke-direct {v1, p1}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->b:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->d:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/HandlerWrapper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->d(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->b(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->j(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    :cond_3
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final c(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->j:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->b:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroidx/media3/common/util/b;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/common/util/b;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->b:Ljava/lang/Thread;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v2, p0, Landroidx/media3/common/util/ListenerSet;->i:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v4, p0, Landroidx/media3/common/util/ListenerSet;->d:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    iput-boolean v2, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->d:Z

    if-eqz v4, :cond_2

    iget-boolean v5, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    if-eqz v5, :cond_2

    iput-boolean v1, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    iget-object v5, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    iget-object v3, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v3}, Landroidx/media3/common/FlagSet$Builder;->c()Landroidx/media3/common/FlagSet;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->a(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e(Landroidx/media3/common/Player$Listener;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->b:Ljava/lang/Thread;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v5, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v2, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->d:Z

    iget-object v5, p0, Landroidx/media3/common/util/ListenerSet;->d:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    if-eqz v5, :cond_3

    iget-boolean v6, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    if-eqz v6, :cond_3

    iput-boolean v1, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    iget-object v6, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    iget-object v7, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v7}, Landroidx/media3/common/FlagSet$Builder;->c()Landroidx/media3/common/FlagSet;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->a(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final f(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    return-void
.end method
