.class Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final c:Ljava/util/Collection;

.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->c:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$f;Ljava/util/ListIterator;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->c:Ljava/util/Collection;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f()V

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->c:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lv7;->c()V

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->a()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->a()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    return-void
.end method
