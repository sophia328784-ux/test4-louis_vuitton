.class public final Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2;
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

.field public final synthetic c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2;->c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;

    iget v1, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;-><init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent;

    instance-of p2, p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;

    goto :goto_1

    :cond_3
    move-object p2, v4

    :goto_1
    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2;->c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget-object v2, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->d:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iget-object p2, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->e:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v2, v2, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->w:Lcom/google/ar/core/Frame;

    if-eqz v2, :cond_8

    iget-object v5, p2, Lcom/vuitton/android/presentation/ar/filament/Filament;->a:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    check-cast p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;

    iget-object v6, p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;->a:Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;

    iget v6, v6, Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;->a:F

    mul-float/2addr v5, v6

    iget-object p2, p2, Lcom/vuitton/android/presentation/ar/filament/Filament;->a:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;->a:Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;

    iget p1, p1, Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;->b:F

    mul-float/2addr p2, p1

    invoke-virtual {v2, v5, p2}, Lcom/google/ar/core/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_4

    move-object p2, v4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p2

    check-cast v2, Lcom/google/ar/core/HitResult;

    invoke-virtual {v2}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/ar/core/Point;

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/ar/core/HitResult;

    invoke-virtual {v6}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v6

    instance-of v6, v6, Lcom/google/ar/core/Point;

    if-ge v2, v6, :cond_7

    move-object p2, v5

    move v2, v6

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    check-cast p2, Lcom/google/ar/core/HitResult;

    if-eqz p2, :cond_9

    new-instance p1, Lcom/vuitton/android/presentation/ar/V3;

    invoke-virtual {p2}, Lcom/google/ar/core/HitResult;->getHitPose()Lcom/google/ar/core/Pose;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/ar/core/Pose;->getTranslation()[F

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lcom/vuitton/android/presentation/ar/V3;-><init>([F)V

    new-instance v4, Lcom/vuitton/android/presentation/ar/V3;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 p2, 0x0

    aget v2, p1, p2

    aget v5, p1, v3

    const v6, 0x3dcccccd    # 0.1f

    sub-float/2addr v5, v6

    const/4 v6, 0x2

    aget p1, p1, v6

    const/4 v7, 0x3

    new-array v7, v7, [F

    aput v2, v7, p2

    aput v5, v7, v3

    aput p1, v7, v6

    invoke-direct {v4, v7}, Lcom/vuitton/android/presentation/ar/V3;-><init>([F)V

    goto :goto_3

    :cond_8
    const-string p0, "frame"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    iput v3, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1;->c:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
