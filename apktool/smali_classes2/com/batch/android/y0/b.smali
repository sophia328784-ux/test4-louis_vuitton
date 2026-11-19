.class public Lcom/batch/android/y0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/y0/h;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/msgpack/core/buffer/MessageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    .line 13
    invoke-direct {p0, v0}, Lcom/batch/android/y0/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/batch/android/y0/b;->c:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/batch/android/y0/b;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p1
.end method

.method public a()V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a([BII)V
    .locals 0

    .line 27
    invoke-static {p1, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap([BII)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 2

    .line 43
    iget-object p0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    .line 44
    invoke-virtual {v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->slice(II)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/batch/android/y0/b;->c:I

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->slice(II)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/batch/android/y0/b;->d:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/msgpack/core/buffer/MessageBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()[B
    .locals 5

    invoke-virtual {p0}, Lcom/batch/android/y0/b;->b()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v4

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(I[BII)V

    invoke-virtual {v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 4

    iget-object v0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/y0/b;->d()[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap([B)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 2

    invoke-static {p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putBytes(I[BII)V

    iget-object p0, p0, Lcom/batch/android/y0/b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
