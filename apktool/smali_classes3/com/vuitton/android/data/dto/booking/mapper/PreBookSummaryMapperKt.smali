.class public abstract Lcom/vuitton/android/data/dto/booking/mapper/PreBookSummaryMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;)Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->a:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->b:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->c:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->e(Lcom/vuitton/android/data/dto/booking/BookingTypeDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    move-result-object v7

    iget-object v8, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->d:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->e:Ljava/lang/String;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v10

    iget-object v4, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->g:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/booking/BookingInfoDto;

    invoke-static {v12}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->c(Lcom/vuitton/android/data/dto/booking/BookingInfoDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v12, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->h:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/booking/PreBookDto;->i:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->c(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v3

    :goto_2
    move-object v13, v3

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;

    const/4 v14, 0x0

    invoke-direct/range {v4 .. v14}, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/util/List;Ljava/lang/String;Ljava/time/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->b(Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    invoke-direct {v2, v1, v3, v0, p0}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;Ljava/lang/String;)V

    return-object v2
.end method
