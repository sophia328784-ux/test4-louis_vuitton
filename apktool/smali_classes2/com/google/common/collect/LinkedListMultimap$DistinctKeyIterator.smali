.class final Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DistinctKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/HashSet;

.field public c:Lcom/google/common/collect/LinkedListMultimap$Node;

.field public d:Lcom/google/common/collect/LinkedListMultimap$Node;

.field public e:I

.field public final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->e(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->b:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget p1, p1, Lcom/google/common/collect/LinkedListMultimap;->j:I

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->e:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->e:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lv7;->c()V

    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->e:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->b:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lb21;->x()V

    return-object v2

    :cond_3
    invoke-static {}, Lv7;->c()V

    return-object v2
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    iget v2, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->e:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next()Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->remove()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->d:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;->e:I

    return-void

    :cond_2
    invoke-static {}, Lv7;->c()V

    return-void
.end method
