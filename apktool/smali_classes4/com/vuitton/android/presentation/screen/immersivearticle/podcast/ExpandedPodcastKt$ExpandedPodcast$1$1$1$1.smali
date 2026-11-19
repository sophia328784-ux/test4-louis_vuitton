.class final Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/ExpandedPodcastKt$ExpandedPodcast$1$1$1$1;
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

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/ExpandedPodcastKt$ExpandedPodcast$1$1$1$1;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/ExpandedPodcastKt$ExpandedPodcast$1$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lv9;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/ExpandedPodcastKt$ExpandedPodcast$1$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v2, v1}, Lv9;-><init>(Lkotlin/jvm/functions/Function1;I)V

    const/4 v1, 0x5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/ExpandedPodcastKt$ExpandedPodcast$1$1$1$1;->a:Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p0, v0, p2, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
