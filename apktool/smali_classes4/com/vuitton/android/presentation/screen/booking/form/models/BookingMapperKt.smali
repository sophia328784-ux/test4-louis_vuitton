.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;
    .locals 31

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;->b:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;->c:Ljava/lang/String;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;->d:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;->e:Ljava/lang/String;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;->f:Ljava/lang/String;

    const/16 v15, 0xe

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Scale;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v12, 0x40

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    iget-object v12, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    iget-object v13, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->b:Ljava/lang/String;

    iget-object v14, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->c:Ljava/lang/String;

    iget-object v15, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->d:Ljava/lang/String;

    const/16 v16, 0x0

    iget-boolean v8, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    iget-boolean v6, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    if-eqz v10, :cond_3

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    sget-object v19, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt$WhenMappings;->b:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v19, v10

    move-object/from16 v21, v1

    const/4 v1, 0x1

    if-eq v10, v1, :cond_1

    const/4 v1, 0x2

    if-ne v10, v1, :cond_0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;->LARGE:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;->SMALL:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;

    :goto_1
    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    move-object/from16 v22, v2

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    const/16 v3, 0xa

    invoke-static {v10, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->a:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->b:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->c:Ljava/lang/String;

    move-object/from16 v29, v3

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->d:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->e:Z

    new-instance v25, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;

    move-object/from16 v28, v3

    move/from16 v30, v4

    move-object/from16 v26, v10

    invoke-direct/range {v25 .. v30}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    goto :goto_2

    :cond_2
    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;

    invoke-direct {v4, v1, v2, v3}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;-><init>(Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V

    :goto_3
    move/from16 v20, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    goto/16 :goto_13

    :cond_3
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    instance-of v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    if-eqz v1, :cond_4

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;->a:Ljava/util/List;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;->b:Ljava/time/LocalDateTime;

    invoke-direct {v4, v1, v2}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;-><init>(Ljava/util/List;Ljava/time/LocalDateTime;)V

    goto :goto_3

    :cond_4
    instance-of v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    if-eqz v1, :cond_10

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;->c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->b:Ljava/util/List;

    check-cast v10, Ljava/util/Collection;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->c:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v10, v7}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    move-object/from16 v17, v3

    goto :goto_7

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->a:Ljava/lang/String;

    move-object/from16 v17, v3

    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->a:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 v3, v16

    :goto_6
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v3, v17

    goto :goto_5

    :goto_7
    move-object/from16 v3, v17

    goto :goto_4

    :cond_9
    move-object/from16 v4, v16

    :goto_8
    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    if-eqz v4, :cond_a

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    goto :goto_9

    :cond_a
    move-object/from16 v3, v16

    :goto_9
    new-instance v4, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    if-eqz v1, :cond_b

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->a:Ljava/lang/String;

    :goto_b
    move-object/from16 v17, v1

    goto :goto_c

    :cond_b
    move-object/from16 v10, v16

    goto :goto_b

    :goto_c
    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_d

    :cond_c
    move-object/from16 v10, v16

    :goto_d
    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    move-object/from16 v18, v2

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    move-object/from16 v19, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v20, v6

    move/from16 v25, v8

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    move-object/from16 v26, v2

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->a:Ljava/lang/String;

    move-object/from16 v27, v9

    iget-object v9, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->b:Ljava/lang/String;

    move-object/from16 v28, v11

    iget-object v11, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->c:Ljava/lang/String;

    iget-boolean v6, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->d:Z

    invoke-direct {v8, v2, v9, v11, v6}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v26

    move-object/from16 v9, v27

    move-object/from16 v11, v28

    goto :goto_e

    :cond_d
    move-object/from16 v27, v9

    move-object/from16 v28, v11

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->a:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->b:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->c:Ljava/lang/String;

    iget-boolean v7, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->d:Z

    invoke-direct {v8, v9, v11, v2, v7}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v26

    goto :goto_f

    :cond_e
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;

    invoke-direct {v2, v1, v3, v6, v10}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v6, v20

    move/from16 v8, v25

    move-object/from16 v9, v27

    move-object/from16 v11, v28

    goto/16 :goto_a

    :cond_f
    move/from16 v20, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;-><init>(Ljava/util/List;)V

    move-object v4, v1

    goto/16 :goto_13

    :cond_10
    move/from16 v20, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    instance-of v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    if-eqz v1, :cond_14

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->c:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;

    iget-object v9, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->a:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->b:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-boolean v3, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->c:Z

    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->d:Z

    invoke-direct {v11, v9, v1, v3, v10}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    const/16 v9, 0xa

    goto :goto_11

    :cond_11
    move-object/from16 v17, v1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;

    invoke-direct {v1, v4, v6, v8}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    goto :goto_10

    :cond_12
    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->b:Ljava/lang/String;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;

    if-eqz v3, :cond_13

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;->b:Ljava/lang/String;

    invoke-direct {v8, v4, v3}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_13
    move-object/from16 v8, v16

    :goto_12
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;

    invoke-direct {v4, v2, v1, v8}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;)V

    :goto_13
    const/16 v16, 0x0

    move/from16 v18, v20

    move/from16 v17, v25

    move-object/from16 v19, v27

    move-object/from16 v11, v28

    move-object/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;ZZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    const/16 v6, 0xa

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_15
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    const/16 v16, 0x0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt$WhenMappings;->d:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingType;->EXPERIENCE:Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    :goto_14
    move-object v6, v0

    goto :goto_15

    :cond_16
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_17
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingType;->APPOINTMENT:Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    goto :goto_14

    :goto_15
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    const/4 v3, 0x0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v24

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingType;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-object v2, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->a:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->b:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->c:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->e:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;->b:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;

    if-eqz v6, :cond_0

    new-instance v10, Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;

    iget-object v11, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v6}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v6

    invoke-direct {v10, v11, v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    goto :goto_0

    :cond_0
    move-object v10, v7

    :goto_0
    invoke-direct {v8, v9, v10}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;)V

    move-object v6, v7

    goto :goto_1

    :cond_1
    move-object v6, v7

    move-object v8, v6

    :goto_1
    iget-boolean v7, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->f:Z

    iget-boolean v9, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->g:Z

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->h:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;

    const/16 v12, 0xa

    if-eqz v11, :cond_5

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;->a:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;

    sget-object v13, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt$WhenMappings;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v13, v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_3

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;->LARGE:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    goto :goto_2

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v6

    :cond_3
    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;->SMALL:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    :goto_2
    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;->b:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;

    new-instance v14, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    iget-object v15, v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;->a:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;->b:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;->d:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;->c:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;->e:Z

    move-object/from16 v18, v1

    move/from16 v19, v12

    invoke-direct/range {v14 .. v19}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    goto :goto_3

    :cond_4
    move-object/from16 v20, v1

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;->c:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    invoke-direct {v1, v6, v13, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V

    :goto_4
    move-object v11, v1

    move-object/from16 v28, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_d

    :cond_5
    move-object/from16 v20, v1

    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;

    if-eqz v1, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;->b:Ljava/time/LocalDateTime;

    invoke-direct {v1, v6, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;-><init>(Ljava/util/List;Ljava/time/LocalDateTime;)V

    goto :goto_4

    :cond_6
    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->a:Ljava/time/LocalDateTime;

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->b:Ljava/util/List;

    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 v16, v6

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 p0, v0

    invoke-static {v15, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    new-instance v12, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->a:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->b:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->c:Ljava/lang/String;

    iget-boolean v15, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->d:Z

    invoke-direct {v12, v0, v1, v2, v15}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    const/16 v12, 0xa

    goto :goto_6

    :cond_7
    move-object/from16 v19, v1

    move-object/from16 v28, v2

    iget-object v0, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    new-instance v11, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    iget-object v12, v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->a:Ljava/lang/String;

    iget-object v15, v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->c:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->d:Z

    invoke-direct {v11, v12, v15, v0, v2}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    goto :goto_7

    :cond_8
    new-instance v21, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    const/16 v25, 0x0

    const/16 v26, 0x8

    const/16 v27, 0x0

    move-object/from16 v24, v1

    move-object/from16 v23, v6

    move-object/from16 v22, v13

    invoke-direct/range {v21 .. v27}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v6, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    const/16 v12, 0xa

    goto/16 :goto_5

    :cond_9
    move-object/from16 p0, v0

    move-object/from16 v28, v2

    move-object/from16 v16, v6

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->b:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->c:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->a:Ljava/lang/String;

    iget-object v12, v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;->d:Ljava/lang/String;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_8

    :cond_c
    move-object/from16 v6, v16

    :goto_8
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_d
    move-object/from16 v6, v16

    :goto_9
    if-eqz v6, :cond_e

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    iget-object v1, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->a:Ljava/lang/String;

    iget-object v2, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->b:Ljava/lang/String;

    iget-object v11, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->c:Ljava/lang/String;

    iget-boolean v6, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;->d:Z

    invoke-direct {v0, v1, v2, v11, v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v16, v0

    :cond_e
    new-instance v13, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    const/4 v15, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v18}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object v11, v13

    goto/16 :goto_d

    :cond_f
    move-object/from16 v28, v2

    move-object/from16 v16, v6

    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;

    iget-object v11, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;->a:Ljava/lang/String;

    iget-object v12, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;->c:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v6, v14}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;

    new-instance v14, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    move-object/from16 p0, v1

    iget-object v1, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;->a:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;->b:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-boolean v4, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;->c:Z

    iget-boolean v15, v15, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;->d:Z

    invoke-direct {v14, v1, v3, v4, v15}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    const/16 v14, 0xa

    goto :goto_b

    :cond_10
    move-object/from16 p0, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    invoke-direct {v1, v11, v12, v13}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_a

    :cond_11
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;->c:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;

    if-eqz v0, :cond_12

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    move-object/from16 v3, v16

    :goto_c
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    invoke-direct {v0, v2, v1, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;)V

    move-object v11, v0

    :goto_d
    const/16 v13, 0x8a0

    const/4 v14, 0x0

    const/4 v6, 0x0

    move-object v0, v5

    move-object v5, v8

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_13
    invoke-static {}, Lv40;->g()V

    return-object v16
.end method
