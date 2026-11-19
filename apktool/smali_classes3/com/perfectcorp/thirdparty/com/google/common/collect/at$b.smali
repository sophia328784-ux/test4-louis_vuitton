.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;

.field public d:Ljava/util/Iterator;

.field public e:Ljava/util/ArrayDeque;


# virtual methods
.method public final hasNext()Z
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    instance-of v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    :cond_5
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_6

    :goto_4
    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    goto :goto_0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->b:Ljava/util/Iterator;

    return-void
.end method
