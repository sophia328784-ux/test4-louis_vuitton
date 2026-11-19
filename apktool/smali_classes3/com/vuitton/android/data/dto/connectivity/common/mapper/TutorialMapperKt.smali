.class public abstract Lcom/vuitton/android/data/dto/connectivity/common/mapper/TutorialMapperKt;
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
.method public static final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;->a:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    return-object v1
.end method
