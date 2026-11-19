.class final Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt$TrackDetailTranscript$1$1"
    f = "TrackDetailTranscript.kt"
    l = {
        0x49,
        0x4e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic e:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(ILandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->c:I

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->d:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->e:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->d:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->e:Landroidx/compose/runtime/MutableIntState;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->c:I

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;-><init>(ILandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->c:I

    if-ltz p1, :cond_6

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->e:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v1}, Landroidx/compose/runtime/IntState;->f()I

    move-result v5

    if-eq p1, v5, :cond_6

    invoke-interface {v1, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    add-int/2addr p1, v3

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->d:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->a()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v8}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v8

    if-ne v8, p1, :cond_3

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, v6

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v2, v5

    sub-float/2addr p1, v2

    const/high16 v2, 0x42480000    # 50.0f

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v6, v2, v5, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    iput v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->b:I

    invoke-static {v1, p1, v2, p0}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->a(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    goto :goto_2

    :cond_5
    div-int/lit8 v6, v6, 0x3

    neg-int v3, v6

    iput v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript$1$1;->b:I

    invoke-virtual {v1, p1, v3, p0}, Landroidx/compose/foundation/lazy/LazyListState;->f(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
