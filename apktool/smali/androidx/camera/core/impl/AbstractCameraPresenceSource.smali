.class public abstract Landroidx/camera/core/impl/AbstractCameraPresenceSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable<",
        "Ljava/util/List<",
        "Landroidx/camera/core/CameraIdentifier;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/Throwable;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->d:Ljava/lang/Throwable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->e:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Landroidx/camera/core/CameraIdentifier;->c:Landroidx/camera/core/CameraIdentifier$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v0}, Landroidx/camera/core/CameraIdentifier$Companion;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    invoke-direct {v1, p1, p2}, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->e:Z

    invoke-virtual {p0}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->d:Ljava/lang/Throwable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    new-instance p2, Landroidx/camera/core/impl/a;

    invoke-direct {p2, p0, v0, v1}, Landroidx/camera/core/impl/a;-><init>(Ljava/lang/Throwable;Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;Ljava/util/List;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract c()V
.end method

.method public final d(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    iget-object v2, v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->b:Landroidx/camera/core/impl/Observable$Observer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->e:Z

    invoke-virtual {p0}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->f()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract f()V
.end method

.method public final g(Ljava/util/ArrayList;Landroidx/camera/core/CameraUnavailableException;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->d:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    iput-object p2, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->d:Ljava/lang/Throwable;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->d:Ljava/lang/Throwable;

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->d:Ljava/lang/Throwable;

    iput-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c:Ljava/util/List;

    :goto_2
    iget-object p1, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->d:Ljava/lang/Throwable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    iget-object p0, p0, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    iget-object v1, v0, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/core/impl/a;

    invoke-direct {v2, p2, v0, p1}, Landroidx/camera/core/impl/a;-><init>(Ljava/lang/Throwable;Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    return-void

    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
