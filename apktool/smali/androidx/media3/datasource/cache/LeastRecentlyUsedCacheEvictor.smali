.class public final Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/cache/CacheEvictor;


# instance fields
.field public final a:J

.field public final b:Ljava/util/TreeSet;

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->a:J

    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lx5;

    const/16 v0, 0xd

    invoke-direct {p2, v0}, Lx5;-><init>(I)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->b:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->c:J

    iget-wide v2, p1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->c:J

    return-void
.end method

.method public final b(Landroidx/media3/datasource/cache/SimpleCache;J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->b:Ljava/util/TreeSet;

    :goto_0
    iget-wide v1, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->c:J

    add-long/2addr v1, p2

    iget-wide v3, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/CacheSpan;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, v1}, Landroidx/media3/datasource/cache/SimpleCache;->p(Landroidx/media3/datasource/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final c(Landroidx/media3/datasource/cache/SimpleCache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->a(Landroidx/media3/datasource/cache/CacheSpan;)V

    invoke-virtual {p0, p1, p3}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->d(Landroidx/media3/datasource/cache/SimpleCache;Landroidx/media3/datasource/cache/CacheSpan;)V

    return-void
.end method

.method public final d(Landroidx/media3/datasource/cache/SimpleCache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->c:J

    iget-wide v2, p2, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->c:J

    iget-object p2, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->b:Ljava/util/TreeSet;

    :goto_0
    iget-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->c:J

    iget-wide v2, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/CacheSpan;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/media3/datasource/cache/SimpleCache;->p(Landroidx/media3/datasource/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
