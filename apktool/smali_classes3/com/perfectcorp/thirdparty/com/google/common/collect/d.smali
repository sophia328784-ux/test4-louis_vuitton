.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/d;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/collect/ListMultimap;


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
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    check-cast p2, Ljava/util/List;

    instance-of v0, p2, Ljava/util/RandomAccess;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$d;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-object v0
.end method

.method public final d(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic g()Ljava/util/Collection;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
