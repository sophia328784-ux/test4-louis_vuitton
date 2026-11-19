.class public interface abstract Lcom/google/common/collect/SortedMultiset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/SortedMultisetBridge;
.implements Lcom/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/SortedMultisetBridge<",
        "TE;>;",
        "Lcom/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract j0()Ljava/util/NavigableSet;
.end method

.method public bridge synthetic j0()Ljava/util/Set;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->j0()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic n0()Ljava/util/NavigableSet;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->j0()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method
