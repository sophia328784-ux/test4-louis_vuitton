.class public abstract Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/LazyListState;IJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;

    iget v1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;

    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->h:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p0, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->f:I

    iget p1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->e:I

    iget p2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->d:I

    iget-wide v4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->g:J

    iget p3, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->c:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget p0, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->f:I

    iget p1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->e:I

    iget p2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->d:I

    iget-wide v5, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->g:J

    iget p3, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->c:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    :try_start_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p4, p2

    move p2, p1

    move p1, p3

    move p3, p4

    move p4, p0

    move-object p0, v2

    goto :goto_3

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-gez p1, :cond_6

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p4

    invoke-interface {p4}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v8}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v8

    if-ne v8, p1, :cond_7

    goto :goto_1

    :cond_8
    move-object v2, v7

    :goto_1
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p4

    iput-object v7, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iput p1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->c:I

    iput-wide p2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->g:J

    iput v6, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    invoke-static {p0, p4, v2, v0}, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt;->b(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Landroidx/compose/foundation/lazy/LazyListItemInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto/16 :goto_5

    :cond_9
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    :try_start_3
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput-object p0, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iput p1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->c:I

    iput-wide p2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->g:J

    const/4 p4, 0x0

    iput p4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->d:I

    iput p4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->e:I

    iput p4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->f:I

    iput v5, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    invoke-virtual {p0, p1, p4, v0}, Landroidx/compose/foundation/lazy/LazyListState;->k(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    goto :goto_5

    :cond_b
    move-wide v5, p2

    move p2, p4

    move p3, p2

    :goto_3
    new-instance v2, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;

    invoke-direct {v2, p1, p0, v7}, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;-><init>(ILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iput p1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->c:I

    iput-wide v5, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->g:J

    iput p3, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->d:I

    iput p2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->e:I

    iput p4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->f:I

    iput v4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    invoke-static {v5, v6, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_c

    goto :goto_5

    :cond_c
    move-object v4, v2

    move-object v2, p0

    move p0, p4

    move-object p4, v4

    move v4, p3

    move p3, p1

    move p1, p2

    move p2, v4

    move-wide v4, v5

    :goto_4
    check-cast p4, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-nez p4, :cond_d

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_d
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v6

    iput-object v7, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iput p3, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->c:I

    iput-wide v4, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->g:J

    iput p2, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->d:I

    iput p1, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->e:I

    iput p0, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->f:I

    iput v3, v0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$1;->i:I

    invoke-static {v2, v6, p4, v0}, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt;->b(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Landroidx/compose/foundation/lazy/LazyListItemInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    :goto_5
    return-object v1

    :cond_e
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_8

    :cond_f
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_10

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_8
    check-cast p1, Lkotlin/Result;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_10
    throw p0
.end method

.method public static final b(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Landroidx/compose/foundation/lazy/LazyListItemInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->i()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->h()I

    move-result p1

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v0

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {p2, p2, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    check-cast p3, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->a(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
