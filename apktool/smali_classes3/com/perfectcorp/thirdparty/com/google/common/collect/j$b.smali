.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/j$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/j<",
        "TK;TV;>.a;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->b(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method
