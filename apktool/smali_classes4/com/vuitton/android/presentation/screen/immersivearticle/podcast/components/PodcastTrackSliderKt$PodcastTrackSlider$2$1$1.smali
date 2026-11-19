.class final Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1$1"
    f = "PodcastTrackSlider.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/ui/input/pointer/PointerInputScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->f:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->g:Landroidx/compose/ui/input/pointer/PointerInputScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->g:Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->e:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->d:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->c:I

    invoke-static {v0, p1, p0, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget p1, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->a:F

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;->g:Landroidx/compose/ui/input/pointer/PointerInputScope;

    invoke-direct {v1, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    throw p0
.end method
