.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/az;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# instance fields
.field public b:Z

.field public synthetic c:Ljava/lang/Object;


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/az;->b:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/az;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/az;->b:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/az;->c:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method
