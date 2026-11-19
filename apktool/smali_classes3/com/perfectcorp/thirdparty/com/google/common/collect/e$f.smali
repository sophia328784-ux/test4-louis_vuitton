.class Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/e<",
        "TK;TV;>.e;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget p2, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->i()V

    :cond_0
    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->i()V

    :cond_1
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$d;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-object v0
.end method
