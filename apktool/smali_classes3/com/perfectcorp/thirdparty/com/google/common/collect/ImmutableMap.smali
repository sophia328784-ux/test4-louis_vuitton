.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

.field public transient c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

.field public transient d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;


# direct methods
.method public static d(Ljava/util/Map;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;
    .locals 4

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    array-length v3, v1

    if-le v0, v3, :cond_2

    array-length v3, v1

    invoke-static {v3, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$b;->a(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->f:[Ljava/lang/Object;

    iget v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->g:I

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;[Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;

    const/4 v2, 0x0

    iget v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->g:I

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->f:[Ljava/lang/Object;

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;-><init>([Ljava/lang/Object;II)V

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;)V

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->c()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;

    const/4 v2, 0x1

    iget v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->g:I

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->f:[Ljava/lang/Object;

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;-><init>([Ljava/lang/Object;II)V

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->c()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->c(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v0, 0x3

    shl-long/2addr v2, v0

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    move-result-object p0

    return-object p0
.end method
