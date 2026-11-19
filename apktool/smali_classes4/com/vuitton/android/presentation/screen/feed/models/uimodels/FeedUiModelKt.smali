.class public abstract Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v2, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    if-eq v2, v4, :cond_6

    instance-of v2, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    :cond_5
    if-ne v3, v4, :cond_1

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method
