.class public abstract Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/data/dto/booking/BookingDto;)Lcom/vuitton/foundation/model/domain/model/booking/Booking;
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->a:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->c:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->e(Lcom/vuitton/android/data/dto/booking/BookingTypeDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->h:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->i:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v9}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v9

    iget-object v10, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->j:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v10}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v10

    iget-object v11, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->k:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->l:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v12, v14}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/data/dto/booking/BookingInfoDto;

    invoke-static {v15}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->c(Lcom/vuitton/android/data/dto/booking/BookingInfoDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingDto;->m:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object v12, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/data/dto/booking/BookingActionDto;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingAction;

    move-object/from16 p0, v0

    iget-object v0, v14, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->a:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v16, v0

    move-object/from16 v16, v1

    const/4 v1, 0x1

    const/16 v17, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;->MODIFY:Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;

    goto :goto_2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v17

    :cond_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;->CANCEL:Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;->QR_CODE:Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;->ADD_TO_CALENDAR:Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;

    :goto_2
    iget-object v1, v14, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->b:Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;

    if-eqz v1, :cond_5

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v14, v2, v3, v1}, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;-><init>(Ljava/time/Instant;Ljava/time/Instant;Ljava/time/ZoneId;)V

    goto :goto_3

    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v14, v17

    :goto_3
    invoke-direct {v15, v0, v14}, Lcom/vuitton/foundation/model/domain/model/booking/BookingAction;-><init>(Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_1

    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/foundation/model/domain/model/booking/Booking;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;->a:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/android/data/dto/booking/BookingInfoDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingInfoDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/BookingInfoDto;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingInfoDto;->c:Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt$WhenMappings;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    const/4 v3, 0x3

    if-ne p0, v3, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;->PHONE:Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;->ADDRESS:Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;->TEXT:Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;

    :goto_0
    invoke-direct {v0, v1, v2, p0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;)V

    return-object v0
.end method

.method public static final d(Lcom/vuitton/android/data/dto/booking/BookingListDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingList;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingListDto;->a:Ljava/util/List;

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

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/booking/BookingDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->a(Lcom/vuitton/android/data/dto/booking/BookingDto;)Lcom/vuitton/foundation/model/domain/model/booking/Booking;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingListDto;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->b(Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    invoke-direct {p0, v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static final e(Lcom/vuitton/android/data/dto/booking/BookingTypeDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingType;->EXPERIENCE:Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingType;->APPOINTMENT:Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    return-object p0
.end method
