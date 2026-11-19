.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps$a;
.super Ljava/util/AbstractCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public final clear()V
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->d()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-interface {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-interface {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->size()I

    move-result p0

    return p0
.end method
