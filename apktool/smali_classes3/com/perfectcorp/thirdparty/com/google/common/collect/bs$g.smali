.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient d:Ljava/util/Set;

.field public transient e:Ljava/util/Collection;

.field public transient f:Ljava/util/Collection;

.field public transient g:Ljava/util/Map;


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->f:Ljava/util/Collection;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->f()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->f:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->f:Ljava/util/Collection;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->g:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$a;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->h()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->g:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->g:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->d:Ljava/util/Set;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    instance-of v3, v1, Ljava/util/SortedSet;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/util/SortedSet;

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$k;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iput-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->d:Ljava/util/Set;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->d:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->n(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->e:Ljava/util/Collection;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$d;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->e:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;->e:Ljava/util/Collection;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
