.class public abstract Lcom/vuitton/android/data/dto/feed/mapper/FeedMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/data/dto/feed/FeedDto;)Lcom/vuitton/foundation/model/domain/model/feed/Feed;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/feed/FeedDto;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialSectionMapperKt;->a(Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/feed/Feed;-><init>(Ljava/util/List;)V

    return-object p0
.end method
