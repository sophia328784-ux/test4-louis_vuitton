.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/av;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# instance fields
.field public synthetic b:Ljava/util/Iterator;

.field public synthetic c:I


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/av;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/av;->c:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/av;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_1
    if-ge p0, v0, :cond_1

    aput-object v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-ne v4, v0, :cond_2

    return-object p0

    :cond_2
    invoke-interface {p0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lb21;->x()V

    return-object v2
.end method
