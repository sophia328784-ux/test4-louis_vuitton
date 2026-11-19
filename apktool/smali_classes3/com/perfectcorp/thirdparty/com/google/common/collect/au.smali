.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/au;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# instance fields
.field public b:I

.field public synthetic c:[Ljava/lang/Object;


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->b:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->c:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->b:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->b:I

    return-object v2

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method
