.class public Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/ak$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/al<",
        "TK;TV;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    if-nez p0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    :cond_0
    return-object p0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
