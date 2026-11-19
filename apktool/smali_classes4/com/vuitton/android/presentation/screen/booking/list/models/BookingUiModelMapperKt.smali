.class public abstract Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v2}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;->c:Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    const/4 v3, 0x3

    if-ne p0, v3, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->PHONE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->ADDRESS:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->TEXT:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    :goto_0
    invoke-direct {v0, v1, v2, p0}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/booking/Booking;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->c:Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt$WhenMappings;->c:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->EXPERIENCE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_1
    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->APPOINTMENT:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    goto :goto_0

    :goto_1
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->d:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->k:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->i:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->j:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    move-object v12, v9

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->h:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->l:Ljava/util/List;

    check-cast v13, Ljava/lang/Iterable;

    move-object v14, v7

    move-object v7, v10

    new-instance v10, Ljava/util/ArrayList;

    const/16 v15, 0xa

    move-object/from16 v16, v14

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->f:Ljava/lang/String;

    move-object v14, v12

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->m:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object/from16 v17, v8

    move-object v8, v11

    move-object v11, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingAction;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    iget-object v6, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingAction;->a:Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v18, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v18, v6

    move-object/from16 p0, v0

    const/4 v0, 0x1

    if-eq v6, v0, :cond_6

    const/4 v0, 0x2

    if-eq v6, v0, :cond_5

    const/4 v0, 0x3

    if-eq v6, v0, :cond_4

    const/4 v0, 0x4

    if-ne v6, v0, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->MODIFY:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    goto :goto_4

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->CANCEL:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->QR_CODE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->ADD_TO_CALENDAR:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    :goto_4
    iget-object v6, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingAction;->b:Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;

    invoke-direct {v5, v0, v6}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    move-object v6, v14

    const/4 v14, 0x0

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
