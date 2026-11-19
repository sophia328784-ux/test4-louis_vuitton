.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/an;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

.field public c:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

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
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
