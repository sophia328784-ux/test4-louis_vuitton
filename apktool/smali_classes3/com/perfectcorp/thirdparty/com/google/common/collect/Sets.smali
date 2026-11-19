.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Set;)I
    .locals 3

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    not-int v1, v1

    not-int v1, v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v0

    :catch_0
    :cond_1
    return v2
.end method

.method public static c(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bh;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bh;->a()Ljava/util/Set;

    move-result-object p1

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1

    :cond_4
    return v1
.end method

.method public static d(Ljava/util/HashSet;Lf7;)Ljava/util/Set;
    .locals 1

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/SortedSet;

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$a;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->a(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;->b:Ljava/util/Collection;

    check-cast p0, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;-><init>(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$b;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;-><init>(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets$a;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;-><init>(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static e()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
