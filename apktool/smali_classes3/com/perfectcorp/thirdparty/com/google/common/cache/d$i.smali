.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$i;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d<",
        "TK;TV;>.a<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$i;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$a;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$h;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$i;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
