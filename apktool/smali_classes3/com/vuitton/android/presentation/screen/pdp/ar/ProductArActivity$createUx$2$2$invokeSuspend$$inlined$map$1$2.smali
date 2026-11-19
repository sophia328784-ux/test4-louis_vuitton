.class public final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2;
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
.field public final synthetic b:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Pair;

    iget-object p2, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p2, Lcom/vuitton/android/presentation/ar/arcore/ViewRect;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent;

    new-instance v2, Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;

    iget v4, p1, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent;->a:F

    iget v5, p2, Lcom/vuitton/android/presentation/ar/arcore/ViewRect;->c:F

    div-float/2addr v4, v5

    iget p1, p1, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent;->b:F

    iget p2, p2, Lcom/vuitton/android/presentation/ar/arcore/ViewRect;->d:F

    div-float/2addr p1, p2

    invoke-direct {v2, v4, p1}, Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;-><init>(FF)V

    new-instance p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;

    invoke-direct {p1, v2}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;-><init>(Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;)V

    iput v3, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2$1;->c:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2$invokeSuspend$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
