.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/h;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/h;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/h;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/h;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/h;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/h;->c:Ljava/util/Iterator;

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
