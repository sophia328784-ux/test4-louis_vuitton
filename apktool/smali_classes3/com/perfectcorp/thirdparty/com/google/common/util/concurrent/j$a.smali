.class abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f<",
        "TV;TC;>.a;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/thirdparty/com/google/common/base/Optional<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai<",
            "+",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;ZZ)V

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->x()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const-string p3, "initialArraySize"

    invoke-static {p1, p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->c(ILjava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->a:Ljava/util/List;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/thirdparty/com/google/common/base/Optional<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->a:Ljava/util/List;

    return-void
.end method

.method public final a(ZILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-interface {v0, p2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string p1, "Future was done before all dependencies completed"

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isDone()Z

    move-result p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    return-void
.end method
