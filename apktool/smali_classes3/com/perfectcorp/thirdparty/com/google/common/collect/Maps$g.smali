.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$g;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient b:Ljava/util/Set;

.field public transient c:Ljava/util/Collection;


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$g;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e$a;)V

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$g;->b:Ljava/util/Set;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$g;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$f;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Maps$g;->c:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
