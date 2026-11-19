.class final Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;
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
    c = "com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$RevealExpandedModuleEffect$1$1"
    f = "BookingReservationScreen.kt"
    l = {
        0x150,
        0x151
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroidx/compose/foundation/lazy/LazyListState;ILandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->d:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->f:I

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->g:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->f:I

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->g:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->d:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;-><init>(Ljava/lang/Integer;Landroidx/compose/foundation/lazy/LazyListState;ILandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->d:Ljava/lang/Integer;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->b:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget p1, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->b:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    invoke-interface {p1, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    if-eqz v1, :cond_e

    if-nez v4, :cond_4

    goto/16 :goto_6

    :cond_4
    sget-wide v7, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a:J

    iput v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->b:I

    iput v6, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->c:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto/16 :goto_4

    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v6

    iput v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->b:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->c:I

    const/16 v1, 0x2bc

    sget-object v4, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-static {v1, v3, v4, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v8}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v8

    if-ne v8, p1, :cond_6

    move-object v2, v7

    :cond_7
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    iget v6, p0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt$RevealExpandedModuleEffect$1$1;->f:I

    if-nez v2, :cond_9

    neg-int v1, v6

    invoke-virtual {v4, p1, v1, p0}, Landroidx/compose/foundation/lazy/LazyListState;->f(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_8

    goto :goto_3

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    :cond_9
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->h()I

    move-result p1

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->b()I

    move-result v5

    sub-int/2addr p1, v5

    sub-int/2addr p1, v6

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v5

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v7

    add-int/2addr v7, v5

    sub-int/2addr v7, p1

    if-gez v7, :cond_a

    goto :goto_2

    :cond_a
    move v3, v7

    :goto_2
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eqz p1, :cond_c

    int-to-float p1, p1

    invoke-static {v4, p1, v1, p0}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->a(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_b

    goto :goto_3

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3
    if-ne p0, v0, :cond_d

    :goto_4
    return-object v0

    :cond_d
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_e
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
