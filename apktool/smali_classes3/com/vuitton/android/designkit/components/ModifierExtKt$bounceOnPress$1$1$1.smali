.class final Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
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
    c = "com.vuitton.android.designkit.components.ModifierExtKt$bounceOnPress$1$1$1"
    f = "ModifierExt.kt"
    l = {
        0x12a,
        0x12d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->f:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, p2, p0}, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, v0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->c:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->d:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->c:I

    const/4 p1, 0x3

    invoke-static {v0, v3, p0, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p1, Lcom/vuitton/android/designkit/components/BounceState;->Pressed:Lcom/vuitton/android/designkit/components/BounceState;

    invoke-interface {v4, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->d:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->c:I

    sget-object p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a:Lkotlin/jvm/functions/Function3;

    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-static {v0, p1, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    sget-object v2, Lcom/vuitton/android/designkit/components/BounceState;->Released:Lcom/vuitton/android/designkit/components/BounceState;

    invoke-interface {v4, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vuitton/android/designkit/components/ModifierExtKt$bounceOnPress$1$1$1;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0
.end method
