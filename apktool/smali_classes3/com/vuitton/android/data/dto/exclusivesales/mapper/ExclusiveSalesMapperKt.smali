.class public abstract Lcom/vuitton/android/data/dto/exclusivesales/mapper/ExclusiveSalesMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;)Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;->a:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    const-string v5, "/"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v3, v5, v6, v7}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "N-"

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;->d:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;->e:Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;->f:Ljava/lang/String;

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method
