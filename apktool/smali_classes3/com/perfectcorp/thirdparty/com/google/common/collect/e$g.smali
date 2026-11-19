.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/e$g;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/e<",
        "TK;TV;>.e;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/perfectcorp/thirdparty/com/google/common/collect/l;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/l;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$g;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;Ljava/lang/Object;Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;)V

    return-void
.end method


# virtual methods
.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->c(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$g;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/l;

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e;->g:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$e;->h()V

    :cond_1
    return p1
.end method
