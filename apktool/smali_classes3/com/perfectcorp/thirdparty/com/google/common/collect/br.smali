.class public interface abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/br;
.super Ljava/lang/Object;

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
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/SortedSet;
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/br;->a()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 5
    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/br;->a()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method
