.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;
    }
.end annotation


# direct methods
.method public static varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    const-string v1, "arraySize"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->c(ILjava/lang/String;)V

    const-wide/16 v1, 0x5

    int-to-long v3, v0

    add-long/2addr v3, v1

    div-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Ints;->a(J)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static b(ILjava/util/List;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->f(Z)V

    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$c;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;-><init>(Ljava/util/List;I)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public static c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;
    .locals 1

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;-><init>(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;-><init>(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V

    return-object v0
.end method
