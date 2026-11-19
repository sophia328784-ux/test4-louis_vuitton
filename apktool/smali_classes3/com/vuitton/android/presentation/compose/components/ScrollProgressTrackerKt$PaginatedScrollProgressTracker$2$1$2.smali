.class final Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(IILandroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->b:I

    iput p2, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->c:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iget v0, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->b:I

    mul-int/2addr p1, v0

    sub-int/2addr p1, p2

    const/16 v0, 0x64

    iget v1, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->c:I

    if-gt v1, p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    sub-int/2addr v1, p2

    int-to-float p2, v1

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v0

    :goto_0
    sget-object p1, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-lt v0, p2, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1$2;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
