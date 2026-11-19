.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/p;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

.field public c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    iget-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    invoke-interface {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/p;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
