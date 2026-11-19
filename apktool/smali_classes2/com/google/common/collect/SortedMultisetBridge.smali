.class interface abstract Lcom/google/common/collect/SortedMultisetBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic j0()Ljava/util/Set;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultisetBridge;->n0()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public abstract n0()Ljava/util/NavigableSet;
.end method
