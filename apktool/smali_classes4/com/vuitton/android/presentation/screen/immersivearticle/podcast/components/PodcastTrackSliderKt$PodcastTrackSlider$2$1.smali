.class final Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


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


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic b:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1;->b:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1;->b:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1;->a:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt$PodcastTrackSlider$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->b(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
