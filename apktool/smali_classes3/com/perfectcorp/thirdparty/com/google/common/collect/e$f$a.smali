.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/e<",
        "TK;TV;>.e.a;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;I)V
    .locals 1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->b()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->i()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->a()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    return-object p0
.end method

.method public final hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->b()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->b()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->b()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->b()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f$a;->b()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
