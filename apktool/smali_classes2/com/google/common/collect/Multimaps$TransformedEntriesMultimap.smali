.class abstract Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformedEntriesMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field public final f:Lcom/google/common/collect/Multimap;

.field public final g:Lfw;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ListMultimap;Lfw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f:Lcom/google/common/collect/Multimap;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->g:Lfw;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->h()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/c;

    invoke-direct {v1, p0}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V

    new-instance p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->clear()V

    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->f()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/a;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/google/common/collect/Collections2$TransformedCollection;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/collect/a;)V

    return-object p0
.end method

.method public final j()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/a;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->g:Lfw;

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/a;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/google/common/collect/Iterators$6;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Iterators$6;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->size()I

    move-result p0

    return p0
.end method
