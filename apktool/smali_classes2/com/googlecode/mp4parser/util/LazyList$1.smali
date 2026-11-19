.class Lcom/googlecode/mp4parser/util/LazyList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/googlecode/mp4parser/util/LazyList;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/util/LazyList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->c:Lcom/googlecode/mp4parser/util/LazyList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->b:I

    iget-object p0, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->c:Lcom/googlecode/mp4parser/util/LazyList;

    iget-object v1, p0, Lcom/googlecode/mp4parser/util/LazyList;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/googlecode/mp4parser/util/LazyList;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->b:I

    iget-object v1, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->c:Lcom/googlecode/mp4parser/util/LazyList;

    iget-object v2, v1, Lcom/googlecode/mp4parser/util/LazyList;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v0, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/util/LazyList$1;->b:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v1, Lcom/googlecode/mp4parser/util/LazyList;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/util/LazyList$1;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
