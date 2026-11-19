.class public abstract Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookMocksKt;
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

.field public static final b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    new-instance v2, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v3, "https://example.louisvuitton.com/image2.jpg"

    const/4 v4, 0x0

    const-string v5, "An example image 2"

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    const-string v3, "Guest"

    const-string v4, "2 pax"

    invoke-direct {v1, v3, v4}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    const-string v11, "Date & Time"

    const-string v12, "16 may 2026 at 3:00 PM"

    invoke-direct {v3, v11, v12}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    const-string v13, "Price"

    const-string v14, "Free (credit card hold)"

    invoke-direct {v4, v13, v14}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    const-string v6, "Special request"

    const-string v7, "Yes"

    invoke-direct {v5, v6, v7}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1, v3, v4, v5}, [Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v9

    const/4 v10, 0x0

    const-string v1, "prebook1"

    move-object v5, v2

    const-string v2, "sevenrooms"

    const-string v3, "Louis Vuitton Caf\u00e9"

    const-string v4, "Culinary Experience"

    const-string v7, "Your card will only be charged in the event of a no-show or late cancellation (less than 24 hours in advance). Otherwise, the hold will be released."

    const-string v8, "12:59 PM"

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "https://example.louisvuitton.com/image2.jpg"

    const/4 v3, 0x0

    const-string v4, "An example image 2"

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    const-string v3, "Purpose"

    const-string v4, "Product discovery"

    invoke-direct {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    invoke-direct {v3, v11, v12}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    const-string v5, "Free"

    invoke-direct {v4, v13, v5}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3, v4}, [Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v24

    const/16 v25, 0x0

    const-string v16, "prebook2"

    const-string v17, "osa"

    const-string v18, "In-Store Appointment"

    const-string v19, "Store"

    const/16 v22, 0x0

    const-string v23, "12:59 PM"

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v25}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v15}, [Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookMocksKt;->a:Ljava/util/List;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v1, v0, v2, v14, v5}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookMocksKt;->b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    return-void
.end method
