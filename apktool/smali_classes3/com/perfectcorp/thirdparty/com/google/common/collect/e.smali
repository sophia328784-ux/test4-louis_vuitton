.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/e;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/j;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$g;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/j<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final transient f:Ljava/util/Map;

.field public transient g:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->f(Z)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
.end method

.method public abstract d(Ljava/util/Collection;)Ljava/util/Collection;
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    return-void
.end method

.method public abstract e()Ljava/util/Collection;
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->b:Ljava/util/Collection;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;)V

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->b:Ljava/util/Collection;

    :cond_1
    return-object v0
.end method

.method public abstract g()Ljava/util/Collection;
.end method

.method public final j()Ljava/util/Set;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/util/Map;)V

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/util/Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {v0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_0
    const-string p0, "New Collection violated the Collection spec"

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    return v3

    :cond_2
    return v2
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$c;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->d:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
