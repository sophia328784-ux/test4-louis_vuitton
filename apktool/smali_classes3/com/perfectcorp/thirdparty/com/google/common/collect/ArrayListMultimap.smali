.class public final Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/m<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;-><init>(Ljava/util/Map;)V

    const-string v0, "expectedValuesPerKey"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->c(ILjava/lang/String;)V

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->h:I

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/Collection;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->h:I

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->e()Ljava/util/Collection;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/d;->c(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->l()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->e:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->j()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->h()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    return p0
.end method
