.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/l;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/e<",
        "TK;TV;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$g;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$g;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/l;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method

.method public final d(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic f()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/l;->k()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic g()Ljava/util/Collection;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
