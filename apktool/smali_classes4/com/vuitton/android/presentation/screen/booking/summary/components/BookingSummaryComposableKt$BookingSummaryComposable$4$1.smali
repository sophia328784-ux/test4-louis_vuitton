.class final Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;",
        "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;",
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

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$4$1;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->a:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ModifyEvent;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ModifyEvent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-interface {v2, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$4$1;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
