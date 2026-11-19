.class public abstract Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lkotlin/Triple;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->f:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->c:Ljava/util/List;

    if-eqz v2, :cond_a

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->a:Ljava/util/List;

    if-eqz v4, :cond_6

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v4, Lkotlin/Triple;

    sget-object v5, Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;->Classic:Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;

    invoke-direct {v4, v0, v3, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    :goto_2
    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->b:Ljava/util/List;

    if-eqz v4, :cond_9

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v4, Lkotlin/Triple;

    sget-object v5, Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;->Thematic:Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;

    invoke-direct {v4, v0, v3, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    :goto_3
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_3

    move-object v1, v4

    :cond_a
    if-eqz v1, :cond_1

    :cond_b
    return-object v1
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->f:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->c:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    :cond_3
    return-object v0
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p2, :cond_4

    if-eqz p0, :cond_1

    invoke-static {p0, p2}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->c(Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return-object p1

    :cond_4
    :goto_2
    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->f:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->b:Ljava/util/List;

    :cond_5
    if-nez v0, :cond_6

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_6
    return-object v0
.end method
