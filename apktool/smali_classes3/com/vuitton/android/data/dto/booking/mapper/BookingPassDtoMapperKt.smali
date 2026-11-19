.class public abstract Lcom/vuitton/android/data/dto/booking/mapper/BookingPassDtoMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/booking/BookingPassDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingPassDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/BookingPassDto;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingPassDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingPassDto;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/booking/BookingInfoDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->c(Lcom/vuitton/android/data/dto/booking/BookingInfoDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingPassDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    return-object v0
.end method
