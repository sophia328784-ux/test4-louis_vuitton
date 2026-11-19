.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$b<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
