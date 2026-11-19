.class public abstract Lcom/google/common/collect/Sets$SetView;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final clear()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Ljava/util/Set;

    instance-of v1, p1, Lcom/google/common/collect/Sets$SetView;

    if-eqz v1, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/google/common/collect/Sets$SetView;

    invoke-virtual {v3}, Lcom/google/common/collect/Sets$SetView;->f()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    :goto_0
    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$SetView;->f()I

    move-result v4

    if-ge v4, v1, :cond_5

    goto :goto_3

    :cond_5
    check-cast p0, Lcom/google/common/collect/Sets$2;

    new-instance v4, Lcom/google/common/collect/Sets$2$1;

    iget-object v5, p0, Lcom/google/common/collect/Sets$2;->b:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/common/collect/Sets$2;->c:Ljava/util/Set;

    invoke-direct {v4, v5, p0}, Lcom/google/common/collect/Sets$2$1;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    move p0, v2

    :goto_2
    invoke-virtual {v4}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v5

    :try_start_0
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_7
    if-ne p0, v3, :cond_8

    goto :goto_4

    :cond_8
    if-ge p0, v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/2addr v1, v0

    if-le v1, p0, :cond_a

    :catch_0
    :goto_3
    return v2

    :cond_b
    :goto_4
    return v0
.end method

.method public abstract f()I
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
