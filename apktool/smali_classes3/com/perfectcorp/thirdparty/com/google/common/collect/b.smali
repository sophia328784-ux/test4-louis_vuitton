.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/b;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/by;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/by<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;


# virtual methods
.method public final hasNext()Z
    .locals 6

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/c;->a:[I

    iget v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    sub-int/2addr v4, v3

    aget v0, v0, v4

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aw;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aw;->d:Ljava/util/Iterator;

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aw;->e:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-interface {v5, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;->c:I

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    const/4 v4, 0x0

    :goto_1
    iput-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;->c:I

    if-eq v0, v1, :cond_4

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;->a:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    :cond_3
    return v3

    :cond_4
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;->b:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method
