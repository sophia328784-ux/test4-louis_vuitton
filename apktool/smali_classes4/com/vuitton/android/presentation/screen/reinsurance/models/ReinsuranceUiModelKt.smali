.class public abstract Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModelKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;)Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->PAYMENT:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->DELIVERY:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->RETURN_EXCHANGE:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->PACKAGING:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->COLLECT_IN_STORE:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->CONTACT:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->OTHERS:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;->f:Ljava/util/List;

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;)Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    move-object v8, v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;->g:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;)Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method
