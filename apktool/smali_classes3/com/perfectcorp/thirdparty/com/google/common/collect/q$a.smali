.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->k:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/s;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/s;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->k:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    return p0
.end method
