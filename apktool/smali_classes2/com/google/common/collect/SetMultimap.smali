.class public interface abstract Lcom/google/common/collect/SetMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/common/collect/SetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/util/Set;
.end method

.method public bridge synthetic f()Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/SetMultimap;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public abstract f()Ljava/util/Set;
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/Set;
.end method
