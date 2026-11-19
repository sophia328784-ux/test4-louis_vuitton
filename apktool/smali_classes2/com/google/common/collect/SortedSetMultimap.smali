.class public interface abstract Lcom/google/common/collect/SortedSetMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/SortedSetMultimap;->removeAll()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 5
    invoke-interface {p0}, Lcom/google/common/collect/SortedSetMultimap;->removeAll()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/SortedSetMultimap;->get()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 5
    invoke-interface {p0}, Lcom/google/common/collect/SortedSetMultimap;->get()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public abstract get()Ljava/util/SortedSet;
.end method

.method public abstract removeAll()Ljava/util/SortedSet;
.end method
