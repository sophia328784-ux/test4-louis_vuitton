.class final Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;",
        "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$5$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->a:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteConfirmationEvent;

    invoke-direct {v0, p2}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteConfirmationEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$5$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->w4(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
