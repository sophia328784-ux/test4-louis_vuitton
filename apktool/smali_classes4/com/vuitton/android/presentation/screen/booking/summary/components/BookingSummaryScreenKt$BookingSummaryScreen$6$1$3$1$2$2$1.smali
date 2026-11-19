.class final Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
