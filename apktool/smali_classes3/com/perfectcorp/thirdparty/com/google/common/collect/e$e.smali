.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;
.super Ljava/util/AbstractCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Ljava/util/Collection;

.field public final d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

.field public final e:Ljava/util/Collection;

.field public final synthetic f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p4, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->i()V

    :cond_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v3, v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->i()V

    :cond_1
    return p1
.end method

.method public final clear()V
    .locals 3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->e:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv7;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->i()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    :cond_1
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    :cond_0
    return p1
.end method

.method public final size()I
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
