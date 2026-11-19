.class final Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$10$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$10$1;->b:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$10$1;->c:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    check-cast p3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;

    iget-object v2, p3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$10$1;->b:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;->ma()Z

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v1}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;->Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V

    if-eqz p1, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz p2, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;-><init>(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationComposableKt$BookingReservationComposable$10$1;->c:Lkotlin/jvm/functions/Function3;

    invoke-interface {p0, v1, v0, p3}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
