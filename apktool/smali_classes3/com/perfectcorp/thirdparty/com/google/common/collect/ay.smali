.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public synthetic c:I

.field public synthetic d:Ljava/util/Iterator;


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->b:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->c:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->d:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->b:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->d:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ay;->d:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
