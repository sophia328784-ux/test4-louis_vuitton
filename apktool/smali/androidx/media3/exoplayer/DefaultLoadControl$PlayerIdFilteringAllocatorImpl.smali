.class final Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/PlayerIdAwareAllocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerIdFilteringAllocatorImpl"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final synthetic c:Landroidx/media3/exoplayer/DefaultLoadControl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->a:Ljava/util/HashMap;

    iput-object p2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->b:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->a()Landroidx/media3/exoplayer/upstream/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->f(Landroidx/media3/exoplayer/upstream/Allocation;)V

    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->next()Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()Landroidx/media3/exoplayer/upstream/Allocation;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b()Landroidx/media3/exoplayer/upstream/Allocation;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->a:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->b:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v1, v1, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->b:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    if-eqz v1, :cond_0

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public final declared-synchronized c(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->c(Landroidx/media3/exoplayer/upstream/Allocation;)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->f(Landroidx/media3/exoplayer/upstream/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget v0, v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    if-eqz p0, :cond_0

    monitor-enter p0

    :try_start_0
    iget p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    return-void
.end method
