.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/am;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

.field public c:Ljava/lang/Object;

.field public d:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/aj;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/aj;->b:Ljava/lang/Object;

    iput-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/aj;->c:Ljava/lang/Object;

    return-object v1
.end method
