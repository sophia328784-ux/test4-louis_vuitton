.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;
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


# static fields
.field public static final a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;

.field public static final b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

.field public static final c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

.field public static final d:Ljava/util/List;

.field public static final e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;

    const-string v6, "https://pass-prp.louisvuitton.com/media/app-bo/bf5d0769-9582-4130-832b-af51bc195a10.jpeg"

    const-string v7, "Estimated time : 1:00"

    const-string v1, "Louis Vuitton Caf\u00e9"

    const-string v2, "Culinary Experience"

    const-string v3, "Experience the art of French cuisine at the Louis Vuitton Caf\u00e9, where culinary excellence meets luxury."

    const-string v4, "Please note that some reservations require a credit card hold."

    const-string v5, "16 May 2026, at 3:00pm"

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;->SMALL:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v5, v1

    check-cast v5, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v5, v5, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, " guests"

    invoke-static {v5, v9}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xb58

    const/16 v21, 0x0

    const-string v8, "partySize"

    const-string v9, "Guest"

    const-string v10, "Select number of guests"

    move-object/from16 v18, v1

    invoke-direct/range {v7 .. v21}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;->LARGE:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;

    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    const/16 v11, 0x10

    const/4 v10, 0x0

    const-string v6, "lunch"

    const-string v7, "Lunch"

    const-string v8, "Lunch"

    const-string v9, "Served from 12:00 pm to 2:30 pm"

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v11, 0x0

    const-string v7, "afternoonTea"

    const-string v8, "Afternoon tea"

    const-string v9, "Afternoon tea"

    const-string v10, "Served from 3:00 pm to 5:00 pm"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    const-string v11, "Fully booked for the selected date"

    const/4 v12, 0x1

    const-string v8, "dinner"

    const-string v9, "Dinner"

    const-string v10, "Dinner"

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v5, v6, v7}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "lunch"

    invoke-direct {v0, v1, v2, v5}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    const/16 v21, 0xb58

    const/16 v22, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-string v9, "service"

    const-string v10, "Service"

    const-string v11, "Select a service"

    move-object/from16 v19, v0

    invoke-direct/range {v8 .. v22}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v23, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;-><init>(Ljava/util/List;Ljava/time/LocalDateTime;)V

    const/16 v36, 0xb58

    const/16 v37, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const-string v24, "date"

    const-string v25, "Date"

    const-string v26, "Select a date"

    move-object/from16 v34, v0

    invoke-direct/range {v23 .. v37}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v23, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v1, "today_am_1"

    const-string v2, "09:00"

    const-string v12, "9 am"

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v7, "today_am_2"

    const-string v13, "10:00"

    const-string v14, "10 am"

    invoke-direct {v1, v7, v13, v14, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v8, "today_am_3"

    const-string v15, "11:00"

    const-string v9, "11 am"

    invoke-direct {v7, v8, v15, v9, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v0, v1, v7}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v1, "today_pm_1"

    const-string v8, "12:30"

    const-string v10, "12:30 pm"

    invoke-direct {v0, v1, v8, v10, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v11, "13:30"

    const-string v4, "1:30 pm"

    const-string v3, "today_pm_2"

    move-object/from16 v18, v9

    const/4 v9, 0x0

    invoke-direct {v1, v3, v11, v4, v9}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v4, "today_pm_3"

    const-string v11, "15:00"

    move-object/from16 v19, v10

    const-string v10, "3 pm"

    invoke-direct {v3, v4, v11, v10, v9}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v9, "today_pm_4"

    move-object/from16 v21, v10

    const-string v10, "17:00"

    move-object/from16 v22, v11

    const-string v11, "5 pm"

    move-object/from16 v23, v5

    const/4 v5, 0x0

    invoke-direct {v4, v9, v10, v11, v5}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v0, v1, v3, v4}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v10

    const/16 v10, 0x8

    move-object v3, v11

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v40, v8

    move-object/from16 v41, v18

    move-object/from16 v39, v19

    move-object/from16 v4, v21

    move-object/from16 v38, v22

    move-object v8, v0

    move v0, v5

    move-object/from16 v5, v23

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v18, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v7, "tmrw_am_1"

    invoke-direct {v6, v7, v2, v12, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v7, "tmrw_am_2"

    invoke-direct {v2, v7, v13, v14, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v8, "tmrw_am_3"

    move-object/from16 v9, v41

    invoke-direct {v7, v8, v15, v9, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v6, v2, v7}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v6, "tmrw_pm_1"

    move-object/from16 v7, v39

    move-object/from16 v8, v40

    invoke-direct {v2, v6, v8, v7, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v7, "14:00"

    const-string v8, "2 pm"

    const-string v9, "tmrw_pm_2"

    invoke-direct {v6, v9, v7, v8, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v8, "16:00"

    const-string v9, "4 pm"

    const-string v10, "tmrw_pm_3"

    invoke-direct {v7, v10, v8, v9, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v9, "17:30"

    const-string v10, "5:30 pm"

    const-string v11, "tmrw_pm_4"

    invoke-direct {v8, v11, v9, v10, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v2, v6, v7, v8}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v24}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v18

    new-instance v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v7

    const-wide/16 v8, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v9, "09:30"

    const-string v10, "9:30 am"

    const-string v11, "d2_am_1"

    invoke-direct {v8, v11, v9, v10, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v9, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v10, "10:30"

    const-string v11, "10:30 am"

    const-string v12, "d2_am_2"

    invoke-direct {v9, v12, v10, v11, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v11, "11:30"

    const-string v12, "11:30 am"

    const-string v13, "d2_am_3"

    invoke-direct {v10, v13, v11, v12, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v8, v9, v10}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v10, "13:00"

    const-string v11, "1 pm"

    const-string v12, "d2_pm_1"

    const/4 v13, 0x1

    invoke-direct {v9, v12, v10, v11, v13}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v11, "d2_pm_2"

    move-object/from16 v12, v38

    invoke-direct {v10, v11, v12, v4, v13}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    const-string v11, "d2_pm_3"

    invoke-direct {v4, v11, v1, v3, v13}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v9, v10, v4}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v5, v2, v6}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->d:Ljava/util/List;

    new-instance v17, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v30, 0xb58

    const/16 v31, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v18, "slot"

    const-string v19, "Slot selection"

    const-string v20, "Choose a slot"

    move-object/from16 v28, v2

    invoke-direct/range {v17 .. v31}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v8, "Halal"

    const-string v9, "Kosher"

    const-string v3, "Vegetarian"

    const-string v4, "Vegan"

    const-string v5, "Gluten-free"

    const-string v6, "Nut allergy"

    const-string v7, "Lactose intolerant"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v9, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    if-ltz v9, :cond_1

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    new-instance v17, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0xc

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v23}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    const-string v3, "restriction"

    const-string v4, "dietary restriction"

    invoke-direct {v1, v3, v4, v2}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "Business meal"

    const-string v3, "Celebration"

    const-string v4, "Birthday"

    const-string v5, "Anniversary"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v9, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v9, 0x1

    if-ltz v9, :cond_3

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    new-instance v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v4

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    const-string v2, "occasion"

    const-string v4, "special occasion"

    invoke-direct {v0, v2, v4, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    filled-new-array {v1, v0}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Yes"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    const/16 v16, 0xb18

    const/16 v17, 0x0

    const-string v4, "specialRequest"

    const-string v5, "Special requests (optional)"

    const-string v6, "Add details"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v14, v1

    invoke-direct/range {v3 .. v17}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v18, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    sget-object v21, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    sget-object v23, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->EXPERIENCE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    const-string v19, "cafe"

    const-string v20, "Louis Vuitton Caf\u00e9"

    invoke-direct/range {v18 .. v23}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;)V

    sput-object v18, Lcom/vuitton/android/presentation/screen/booking/form/models/MocksKt;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    return-void
.end method
