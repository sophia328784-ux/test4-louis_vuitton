.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Ljava/util/Collection;

.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->c(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aj;->b:Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aj;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->c:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;->c:Ljava/util/Collection;

    return-void
.end method
