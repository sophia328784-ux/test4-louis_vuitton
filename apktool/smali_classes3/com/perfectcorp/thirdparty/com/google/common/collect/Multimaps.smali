.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;
    .locals 5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ak$a;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ak$a;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->entrySet()Ljava/util/Set;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/AbstractCollection;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/x;->h:Lcom/perfectcorp/thirdparty/com/google/common/collect/x;

    return-object p0

    :cond_2
    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->q(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;-><init>(ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;)V

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
