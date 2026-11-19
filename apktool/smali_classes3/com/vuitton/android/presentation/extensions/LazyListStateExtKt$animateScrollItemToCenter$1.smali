.class final Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.extensions.LazyListStateExtKt"
    f = "LazyListStateExt.kt"
    l = {
        0x37,
        0x3d,
        0x40,
        0x47
    }
    m = "animateScrollItemToCenter"
    v = 0x2
.end annotation


# instance fields
.field public b:Landroidx/compose/foundation/lazy/LazyListState;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public synthetic h:Ljava/lang/Object;

.field public i:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1, p0}, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt;->a(Landroidx/compose/foundation/lazy/LazyListState;IJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
