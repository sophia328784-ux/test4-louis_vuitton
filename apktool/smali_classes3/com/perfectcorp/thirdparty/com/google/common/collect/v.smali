.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public synthetic e:Lcom/perfectcorp/thirdparty/com/google/common/collect/u;


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->c:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/u;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->b:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->c:I

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->d:I

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->c:I

    return-object v2

    :cond_1
    invoke-static {}, Lb21;->x()V

    return-object v3

    :cond_2
    invoke-static {}, Lv7;->c()V

    return-object v3
.end method

.method public final remove()V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/u;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->d:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "no calls to next() since the last call to remove()"

    invoke-static {v3, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->b:I

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->d:I

    aget-object v1, v1, v3

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v3, v4, v3

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->h(ILjava/lang/Object;)Z

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->d:I

    return-void

    :cond_1
    invoke-static {}, Lv7;->c()V

    return-void
.end method
