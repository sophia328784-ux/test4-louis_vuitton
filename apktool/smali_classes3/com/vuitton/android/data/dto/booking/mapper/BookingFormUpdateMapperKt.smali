.class public abstract Lcom/vuitton/android/data/dto/booking/mapper/BookingFormUpdateMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->f:Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/data/dto/booking/mapper/BookingListMapperKt$WhenMappings;->c:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vuitton/android/data/dto/booking/BookingTypeDto;->EXPERIENCE:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_1
    sget-object v2, Lcom/vuitton/android/data/dto/booking/BookingTypeDto;->APPOINTMENT:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    :goto_0
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;

    instance-of v8, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;

    if-eqz v8, :cond_2

    move-object v8, v6

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;->c:Ljava/lang/String;

    goto :goto_4

    :cond_2
    instance-of v8, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;

    if-eqz v8, :cond_4

    move-object v8, v6

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;->b:Ljava/time/LocalDateTime;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_3
    :goto_2
    move-object v8, v4

    goto :goto_4

    :cond_4
    instance-of v8, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;

    if-eqz v8, :cond_7

    move-object v8, v6

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;->a:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->d:Ljava/lang/String;

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_6
    move-object v9, v4

    :goto_3
    check-cast v9, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;

    if-eqz v9, :cond_3

    iget-object v8, v9, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->d:Ljava/lang/String;

    goto :goto_4

    :cond_7
    instance-of v8, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;

    if-eqz v8, :cond_e

    goto :goto_2

    :goto_4
    instance-of v9, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;

    if-eqz v9, :cond_d

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;->c:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;

    if-eqz v9, :cond_8

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;->a:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v9, v4

    :goto_5
    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;

    iget-object v12, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;->a:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;->c:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;

    iget-boolean v15, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;->c:Z

    if-eqz v15, :cond_9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v13, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;->a:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    new-instance v13, Lcom/vuitton/android/data/dto/booking/PrebookFormCategoryDto;

    invoke-direct {v13, v12, v11}, Lcom/vuitton/android/data/dto/booking/PrebookFormCategoryDto;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-instance v6, Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;

    invoke-direct {v6, v9, v10}, Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_9

    :cond_d
    move-object v6, v4

    :goto_9
    new-instance v9, Lcom/vuitton/android/data/dto/booking/PrebookFormStepDto;

    invoke-direct {v9, v7, v8, v6}, Lcom/vuitton/android/data/dto/booking/PrebookFormStepDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;)V

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_f
    new-instance v5, Lcom/vuitton/android/data/dto/booking/PrebookFormDto;

    invoke-direct {v5, v3}, Lcom/vuitton/android/data/dto/booking/PrebookFormDto;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    move-object/from16 v3, p2

    move-object v4, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/vuitton/android/data/dto/booking/mapper/BookingFormUpdateMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    move-result-object p0

    return-object p0
.end method
