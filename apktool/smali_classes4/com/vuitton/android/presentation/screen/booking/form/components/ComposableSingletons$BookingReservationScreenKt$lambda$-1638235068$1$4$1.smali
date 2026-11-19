.class final Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1638235068$1$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1638235068$1$4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1638235068$1$4$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1638235068$1$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt$lambda$-1638235068$1$4$1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    check-cast p3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
