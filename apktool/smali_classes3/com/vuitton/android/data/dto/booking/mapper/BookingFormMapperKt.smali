.class public abstract Lcom/vuitton/android/data/dto/booking/mapper/BookingFormMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/mapper/BookingFormMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->j:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;

    instance-of v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;->d:Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto;

    sget-object v5, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormMapperKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    if-eq v1, v2, :cond_1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;->LARGE:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;->SMALL:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;

    :goto_0
    iget-object v5, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;->b:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;

    iget-object v8, v5, Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;->a:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;->b:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;->d:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;->c:Ljava/lang/String;

    iget-boolean v12, v5, Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;->e:Z

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;->c:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;

    invoke-direct {v3, v1, v6, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;-><init>(Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V

    :goto_2
    move-object v14, v3

    goto/16 :goto_c

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v4

    :goto_4
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;

    invoke-direct {v1, v3, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;-><init>(Ljava/util/List;Ljava/time/LocalDateTime;)V

    move-object v14, v1

    goto/16 :goto_c

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;

    iget-object v6, v5, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v6

    if-nez v6, :cond_9

    move-object v7, v4

    goto :goto_8

    :cond_9
    iget-object v7, v5, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;->b:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    iget-object v11, v9, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->a:Ljava/lang/String;

    iget-object v12, v9, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->b:Ljava/lang/String;

    iget-object v13, v9, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->c:Ljava/lang/String;

    iget-boolean v9, v9, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->d:Z

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    iget-object v7, v5, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;->c:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    iget-object v12, v10, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->a:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->b:Ljava/lang/String;

    iget-object v14, v10, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->c:Ljava/lang/String;

    iget-boolean v10, v10, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;->d:Z

    invoke-direct {v11, v12, v13, v14, v10}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    iget-object v5, v5, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;->d:Ljava/lang/String;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;

    invoke-direct {v7, v6, v8, v9, v5}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :goto_8
    if-eqz v7, :cond_8

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;

    invoke-direct {v3, v1}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;-><init>(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;

    iget-object v7, v6, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;->a:Ljava/lang/String;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;->c:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;

    iget-object v12, v10, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;->a:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;->b:Ljava/lang/String;

    iget-boolean v14, v10, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;->c:Z

    iget-boolean v10, v10, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto;->d:Z

    invoke-direct {v11, v12, v13, v14, v10}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;

    invoke-direct {v6, v7, v8, v9}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    iget-object v1, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    if-eqz v0, :cond_10

    iget-object v3, v0, Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;->a:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;

    invoke-direct {v6, v0, v3}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    move-object v6, v4

    :goto_b
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;

    invoke-direct {v3, v5, v1, v6}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;)V

    goto/16 :goto_2

    :cond_11
    sget-object v1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v14, v4

    :goto_c
    if-nez v14, :cond_12

    return-object v4

    :cond_12
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    iget-object v6, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->f:Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;->b:Lcom/vuitton/android/data/dto/booking/BookingDisclaimerActionDto;

    if-eqz v0, :cond_13

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/booking/BookingDisclaimerActionDto;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingDisclaimerActionDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v0

    invoke-direct {v4, v10, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    :cond_13
    invoke-direct {v1, v3, v4}, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;)V

    move-object v10, v1

    goto :goto_d

    :cond_14
    move-object v10, v4

    :goto_d
    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->g:Z

    xor-int/lit8 v11, v0, 0x1

    iget-boolean v12, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->h:Z

    iget-object v13, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;->i:Ljava/util/List;

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;ZZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;)V

    return-object v5

    :cond_15
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method

.method public static final b(Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->h:Lcom/vuitton/android/data/dto/booking/BookingFormDto;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/booking/BookingFormDto;->a:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;

    move-object v3, v2

    move-object v2, v4

    iget-object v4, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->g:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v8}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v8

    iget-object v9, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->j:Ljava/lang/String;

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vuitton/android/data/dto/booking/BookingFormDto;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormMapperKt;->a(Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->i:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt;->e(Lcom/vuitton/android/data/dto/booking/BookingTypeDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    move-result-object v6

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    move-object v4, v2

    move-object v2, v3

    move-object v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingType;)V

    return-object v0
.end method
