.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$f;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$g;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$i;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$e;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$k;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/SortedSet;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$k;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Set;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$j;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/List;

    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$i;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$e;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$d;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
