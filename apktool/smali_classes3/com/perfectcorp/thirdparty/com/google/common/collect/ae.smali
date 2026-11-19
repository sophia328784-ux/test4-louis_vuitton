.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/ae;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/af;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/af;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->n:Ljava/util/Map$Entry;

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->n:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->n:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->n:Ljava/util/Map$Entry;

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
