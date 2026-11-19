.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public final clear()V
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final isEmpty()Z
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->c(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$c;->retainAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const-string v2, "expectedSize"

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->c(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v2, :cond_1

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$b;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
