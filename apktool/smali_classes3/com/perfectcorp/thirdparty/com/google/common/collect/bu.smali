.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ae;


# instance fields
.field public synthetic n:Ljava/util/Map$Entry;

.field public synthetic o:Lcom/perfectcorp/thirdparty/com/google/common/collect/bt;


# virtual methods
.method public final bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->n:Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->n:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->o:Lcom/perfectcorp/thirdparty/com/google/common/collect/bt;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bt;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
