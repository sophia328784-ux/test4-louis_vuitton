.class final Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;",
        "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;",
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$1$2$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    check-cast p3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$1$2$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-interface {p0, p1, p3}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->qc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
