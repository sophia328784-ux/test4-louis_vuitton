.class public Lcom/perfectcorp/common/utility/EventPublisher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/utility/EventPublisher$Publisher;,
        Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Publisher;Lcom/perfectcorp/common/concurrent/CallingThread;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/perfectcorp/common/utility/EventPublisher$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/common/utility/EventPublisher$1;-><init>(Lcom/perfectcorp/common/utility/EventPublisher;Ljava/lang/Iterable;Lcom/perfectcorp/common/utility/EventPublisher$Publisher;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/common/utility/EventPublisher;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
