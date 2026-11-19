.class final Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;
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
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->d:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->e:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/f;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->a:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->c:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;->e:Landroidx/compose/animation/core/Animatable;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/f;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;)V

    const/4 p0, 0x7

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2, p0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
