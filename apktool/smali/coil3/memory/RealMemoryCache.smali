.class public final Lcoil3/memory/RealMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/memory/MemoryCache;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcoil3/memory/RealMemoryCache;",
        "Lcoil3/memory/MemoryCache;",
        "Lcoil3/memory/StrongMemoryCache;",
        "strongMemoryCache",
        "Lcoil3/memory/WeakMemoryCache;",
        "weakMemoryCache",
        "<init>",
        "(Lcoil3/memory/StrongMemoryCache;Lcoil3/memory/WeakMemoryCache;)V",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcoil3/memory/StrongMemoryCache;

.field public final b:Lcoil3/memory/WeakMemoryCache;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcoil3/memory/StrongMemoryCache;Lcoil3/memory/WeakMemoryCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    iput-object p2, p0, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/WeakMemoryCache;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;
    .locals 4

    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {v1, p1}, Lcoil3/memory/StrongMemoryCache;->a(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/WeakMemoryCache;

    invoke-interface {v1, p1}, Lcoil3/memory/WeakMemoryCache;->a(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    invoke-interface {v2}, Lcoil3/Image;->a()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {v3, p1}, Lcoil3/memory/StrongMemoryCache;->c(Lcoil3/memory/MemoryCache$Key;)Z

    move-result v3

    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/WeakMemoryCache;

    invoke-interface {p0, p1}, Lcoil3/memory/WeakMemoryCache;->c(Lcoil3/memory/MemoryCache$Key;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {p0, p1, p2}, Lcoil3/memory/StrongMemoryCache;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {v1}, Lcoil3/memory/StrongMemoryCache;->clear()V

    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/WeakMemoryCache;

    invoke-interface {p0}, Lcoil3/memory/WeakMemoryCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()J
    .locals 3

    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {p0}, Lcoil3/memory/StrongMemoryCache;->d()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e()J
    .locals 3

    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {p0}, Lcoil3/memory/StrongMemoryCache;->e()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final g(J)V
    .locals 1

    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {p0, p1, p2}, Lcoil3/memory/StrongMemoryCache;->g(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getSize()J
    .locals 3

    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    invoke-interface {p0}, Lcoil3/memory/StrongMemoryCache;->getSize()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final h(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)V
    .locals 9

    const-string v0, "Image size must be non-negative: "

    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p2, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    invoke-interface {v2}, Lcoil3/Image;->getSize()J

    move-result-wide v7

    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/StrongMemoryCache;

    iget-object v5, p2, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    iget-object v6, p2, Lcoil3/memory/MemoryCache$Value;->b:Ljava/util/Map;

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcoil3/memory/StrongMemoryCache;->f(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method
