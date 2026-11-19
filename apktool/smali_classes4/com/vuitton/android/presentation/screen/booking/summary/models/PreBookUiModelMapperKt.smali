.class public abstract Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModelMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->d:Ljava/lang/String;

    iget-object v9, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->e:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v5}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v10

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->g:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;

    new-instance v13, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;->a:Ljava/lang/String;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;->b:Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v12, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->h:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->i:Ljava/time/Instant;

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v13

    invoke-static {v5, v13}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v13, p1

    invoke-static {v5, v13}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->l(Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object/from16 v13, p1

    const/4 v5, 0x0

    :goto_2
    iget-object v14, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBook;->i:Ljava/time/Instant;

    move-object v13, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v15}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;->d:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    invoke-direct {v3, v2, v4, v1, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
