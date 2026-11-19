.class public abstract Lcom/vuitton/android/presentation/screen/booking/list/models/MocksKt;
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
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->EXPERIENCE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->TEXT:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    const-string v4, "Guests"

    const-string v5, "2 pax"

    invoke-direct {v1, v4, v5, v2}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    const-string v5, "Date & limits"

    const-string v6, "16 May 2026, at 3:00pm"

    invoke-direct {v4, v5, v6, v2}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    const-string v5, " Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33, lorem ipsum"

    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->ADDRESS:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    const-string v7, "Address"

    invoke-direct {v2, v7, v5, v6}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    const-string v6, "+852 3892 3890"

    sget-object v7, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->PHONE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    const-string v8, "Phone"

    invoke-direct {v5, v8, v6, v7}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;)V

    filled-new-array {v1, v4, v2, v5}, [Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    sget-object v15, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->ADD_TO_CALENDAR:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;

    const-string v4, "2026-05-16T07:00:00Z"

    invoke-static {v4}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "2026-05-16T09:00:00Z"

    invoke-static {v5}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v16, "Asia/Hong_Kong"

    invoke-static/range {v16 .. v16}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4, v5, v6}, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;-><init>(Ljava/time/Instant;Ljava/time/Instant;Ljava/time/ZoneId;)V

    invoke-direct {v1, v15, v2}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->QR_CODE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->CANCEL:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    invoke-direct {v4, v6, v5}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    filled-new-array {v1, v2, v4}, [Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const-string v1, "1"

    const-string v2, "exp1"

    const-string v4, "LV The Place K11 Visionary Journeys"

    move-object v7, v5

    const-string v5, "EXHIBITION"

    move-object v8, v6

    const-string v6, "Saturday, May 16, 2026, 3:00 PM"

    move-object v9, v7

    const-string v7, ""

    move-object v11, v8

    const-string v8, ""

    move-object v12, v9

    const-string v9, "Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33"

    move-object/from16 v17, v11

    const-string v11, "Lorem Ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

    move-object/from16 v18, v12

    const-string v12, "Your card will only be charged 200 HKD in the event of a late cancellation (less than 24 hours in advance)."

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v20, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    sget-object v23, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->APPOINTMENT:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->MODIFY:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    invoke-direct {v1, v2, v15}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    move-object/from16 v8, v17

    invoke-direct {v2, v8, v15}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    filled-new-array {v1, v2}, [Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    const/16 v34, 0x0

    const-string v21, "2"

    const-string v22, "exp2"

    const-string v24, "In-store appointment"

    const-string v25, "STORE"

    const-string v26, "Saturday, May 16, 2026, 3:00 PM"

    const-string v27, ""

    const-string v28, ""

    const-string v29, "Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33"

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v30, v12

    invoke-direct/range {v20 .. v34}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v20

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;

    const-string v5, "2026-05-16T04:30:00Z"

    invoke-static {v5}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "2026-05-16T06:00:00Z"

    invoke-static {v6}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v7}, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;-><init>(Ljava/time/Instant;Ljava/time/Instant;Ljava/time/ZoneId;)V

    move-object/from16 v5, v19

    invoke-direct {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    const/16 v16, 0x0

    move-object v5, v3

    const-string v3, "3"

    const-string v4, "exp3"

    const-string v6, "Louis Vuitton Caf\u00e9"

    const-string v7, "CULINARY EXPERIENCE"

    const-string v8, "Saturday, May 16, 2026, 3:00 PM"

    const-string v9, ""

    const-string v10, ""

    const-string v11, "Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33"

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/list/models/MocksKt;->a:Ljava/util/List;

    new-instance v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    const-string v0, "FS-W-SS-23"

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    const-string v6, ""

    const/4 v7, 0x0

    const-string v2, "experience1"

    const-string v4, "In-Store Appointment"

    const-string v5, "Lorem Ipsum dolor sit amet, consectetur adipiscing elit."

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/list/models/MocksKt;->b:Ljava/util/List;

    return-void
.end method
