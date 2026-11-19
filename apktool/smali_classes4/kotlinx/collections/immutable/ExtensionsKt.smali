.class public abstract Lkotlinx/collections/immutable/ExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-collections-immutable"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lkotlinx/collections/immutable/ImmutableList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_8

    instance-of v0, p0, Lkotlinx/collections/immutable/PersistentList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkotlinx/collections/immutable/PersistentList;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_8

    instance-of v0, p0, Lkotlinx/collections/immutable/PersistentList$Builder;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lkotlinx/collections/immutable/PersistentList$Builder;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/collections/immutable/PersistentList$Builder;->build()Lkotlinx/collections/immutable/PersistentList;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_7

    invoke-static {}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->b()Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_6

    check-cast p0, Ljava/util/Collection;

    iget-object v1, v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    array-length v2, v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x20

    if-gt v3, v2, :cond_5

    array-length v0, v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_3

    :cond_4
    new-instance p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    invoke-direct {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_5
    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->h()Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->build()Lkotlinx/collections/immutable/PersistentList;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->h()Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->build()Lkotlinx/collections/immutable/PersistentList;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    return-object v0
.end method
