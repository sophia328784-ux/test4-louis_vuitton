.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/y;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;


# virtual methods
.method public final c(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering$a;

    const-string v0, "Cannot compare value: "

    invoke-static {p1, v0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering$a;->b:Ljava/lang/Object;

    throw p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;->c(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;->c(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ordering.explicit("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
