.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d<",
        "TK;TV;>.a<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$a;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->g:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$e;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
