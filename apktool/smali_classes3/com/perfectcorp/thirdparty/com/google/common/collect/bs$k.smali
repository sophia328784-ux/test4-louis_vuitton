.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$k;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

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

.method public final first()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

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

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$k;

    invoke-direct {v1, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

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

.method public final synthetic o()Ljava/util/Collection;
    .locals 0

    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public final bridge synthetic p()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$k;

    invoke-direct {p2, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;->p()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$k;

    invoke-direct {v1, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
