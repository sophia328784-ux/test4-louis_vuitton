.class final Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$2$1$1;
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
.field public final synthetic b:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;


# direct methods
.method public constructor <init>(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$2$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$2$1$1;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->a:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->a:Ljava/lang/String;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$2$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    invoke-virtual {p1, v0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingNavDisplayKt$BookingNavDisplay$3$2$1$1;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->q5()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
