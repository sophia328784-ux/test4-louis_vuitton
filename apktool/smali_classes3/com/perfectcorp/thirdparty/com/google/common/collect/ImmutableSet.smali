.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public transient c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public static A(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static p(I)I
    .locals 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    const/4 v1, 0x1

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string p0, "collection too large"

    invoke-static {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    return v0
.end method

.method public static q(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 2

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->o()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->r(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs r(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 13

    :goto_0
    if-eqz p0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->p(I)I

    move-result v2

    new-array v5, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v6, v3

    move v8, v6

    :goto_1
    const/4 v4, 0x0

    if-ge v3, p0, :cond_3

    aget-object v9, p1, v3

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->a(I)I

    move-result v10

    :goto_2
    and-int v11, v10, v7

    aget-object v12, v5, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    aput-object v9, p1, v8

    aput-object v9, v5, v11

    add-int/2addr v6, v4

    move v8, v10

    goto :goto_3

    :cond_0
    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "at index "

    invoke-static {v3, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v4

    :cond_3
    invoke-static {p1, v8, p0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4

    aget-object p0, p1, v0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;

    invoke-direct {p1, p0, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_4
    invoke-static {v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->p(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_5

    move p0, v8

    goto :goto_0

    :cond_5
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_6

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_6
    move-object v4, p1

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    invoke-direct/range {v3 .. v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;-><init>([Ljava/lang/Object;[Ljava/lang/Object;III)V

    return-object v3

    :cond_7
    aget-object p0, p1, v0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_8
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->j:Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    return-object p0
.end method

.method public static s()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method public static t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 2

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->q(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->j:Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static u([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->r(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->j:Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    return-object p0
.end method

.method public static v()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->j:Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->b(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->z()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public x()Z
    .locals 0

    instance-of p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    return p0
.end method

.method public z()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->s(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
