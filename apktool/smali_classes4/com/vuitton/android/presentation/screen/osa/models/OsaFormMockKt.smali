.class public abstract Lcom/vuitton/android/presentation/screen/osa/models/OsaFormMockKt;
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
.field public static final a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const-string v4, ""

    const-string v5, "2023-02-25"

    const-string v1, "00U2f0000065pWYEAY"

    const-string v2, "3:00 PM"

    const-string v3, "2023-02-25T14:00:00.000"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const-string v5, ""

    const-string v6, "2023-02-25"

    const-string v2, "00U2f0000065pWYEAY"

    const-string v3, "3:00 PM"

    const-string v4, "2023-02-25T14:00:00.000"

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const-string v6, ""

    const-string v7, "2023-02-25"

    const-string v3, "00U2f0000065pYAEAY"

    const-string v4, "4:00 PM"

    const-string v5, "2023-02-25T15:00:00.000"

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const-string v5, ""

    const-string v6, "2023-02-25"

    const-string v2, "00U2f0000065pZAEAY"

    const-string v3, "5:00 PM"

    const-string v4, "2023-02-25T16:00:00.000"

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v12, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/model/common/CtaUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    const-string v3, "megatrio hub"

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    const-string v3, "Discover"

    invoke-direct {v1, v3, v2}, Lcom/vuitton/android/presentation/model/common/CtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Surtitle"

    const-string v3, "Description"

    invoke-direct {v12, v2, v3, v1}, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    const-string v8, "https://secure-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--StFi_Louis_Vuitton_Maison_Champs-Elys\u00e9es_1_DI3.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const-string v11, "Europe/Paris"

    const-string v3, "A06"

    const-string v4, "Louis Vuitton Maison Champs-\u00c9lys\u00e9es"

    const-string v5, "101, avenue des champs"

    const-string v6, "Paris - France"

    const-string v7, "+33 9 77 40 40 77"

    invoke-direct/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V

    new-instance v3, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;->PHYSICAL:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    new-instance v7, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    const-string v11, "France"

    const-string v12, "75001"

    const-string v8, ""

    const-string v9, "Paris"

    const-string v10, "2 rue example"

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v13, 0x100

    const/4 v14, 0x0

    const-string v4, "A06"

    const-string v5, "Louis V"

    move-object v8, v7

    const-string v7, "+6 07 07 10 09 01"

    const-string v9, "Stfi_La Samaritaine_Paris"

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    move-object v4, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string v5, "2023-02-25"

    invoke-static {v5}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v6

    const-string v7, "2023-02-26"

    invoke-static {v7}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/time/LocalDate;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    const-wide v17, 0x404867ae147ae148L    # 48.81

    const-wide v19, 0x4001c28f5c28f5c3L    # 2.22

    const-string v8, "Paris,France"

    const-wide v9, 0x4048666666666666L    # 48.8

    const-wide v11, 0x4002cccccccccccdL    # 2.35

    const-wide v13, 0x4048733333333333L    # 48.9

    const-wide v15, 0x4003ae147ae147aeL    # 2.46

    invoke-direct/range {v7 .. v20}, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;-><init>(Ljava/lang/String;DDDDDD)V

    const-string v8, "A07"

    invoke-static {v3, v8}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a(Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    move-result-object v8

    const-string v9, "A08"

    invoke-static {v3, v9}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a(Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    move-result-object v9

    filled-new-array {v3, v8, v9}, [Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "4:00 PM"

    const-string v10, "2023-02-25T15:00:00.000"

    const-string v11, "00U2f0000065pYAEAY"

    invoke-static {v0, v11, v9, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    move-result-object v9

    filled-new-array {v0, v9}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v9, "5:00 PM"

    const-string v10, "2023-02-25T16:00:00.000"

    const-string v11, "00U2f0000065pZAEAY"

    invoke-static {v0, v11, v9, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    const-string v11, "2023-02-25"

    const-string v15, "Europe/Paris"

    iget-object v14, v3, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v13, v0

    move-object v0, v4

    move-object v4, v6

    move-object v6, v8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v5}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v5

    sget-object v12, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->DISTANT:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    const v24, 0x7f8004

    const/16 v25, 0x0

    move-object v14, v2

    const/4 v2, 0x0

    const/4 v10, 0x0

    move v11, v10

    const-string v10, "2/25/23"

    iget-object v3, v3, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v26, v11

    move-object v11, v3

    move/from16 v3, v26

    move-object/from16 v26, v9

    move-object v9, v5

    move-object v5, v7

    move-object/from16 v7, v26

    invoke-direct/range {v0 .. v25}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/time/LocalDate;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;ZZZZZLcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormMockKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    return-void
.end method
