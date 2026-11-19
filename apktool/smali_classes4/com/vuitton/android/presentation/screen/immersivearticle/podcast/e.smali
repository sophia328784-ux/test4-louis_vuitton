.class public final synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Animatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->e:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$6$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->e:Landroidx/compose/animation/core/Animatable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$6$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
