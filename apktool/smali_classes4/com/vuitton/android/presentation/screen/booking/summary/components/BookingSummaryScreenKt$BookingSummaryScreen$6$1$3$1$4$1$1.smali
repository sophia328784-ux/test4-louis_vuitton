.class final Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1;->c:I

    add-int/2addr v1, p0

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
