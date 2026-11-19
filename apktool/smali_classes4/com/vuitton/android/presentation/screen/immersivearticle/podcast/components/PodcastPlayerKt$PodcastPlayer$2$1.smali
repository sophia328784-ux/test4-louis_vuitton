.class final Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastPlayerKt$PodcastPlayer$2$1"
    f = "PodcastPlayer.kt"
    l = {
        0x43
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

.field public final synthetic d:J

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/runtime/MutableLongState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;JLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iput-wide p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->d:J

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->f:Landroidx/compose/runtime/MutableLongState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->e:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->f:Landroidx/compose/runtime/MutableLongState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-wide v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->d:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;-><init>(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;JLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->b:I

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne p1, v1, :cond_4

    iput v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->b:I

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->f:Landroidx/compose/runtime/MutableLongState;

    invoke-interface {p1}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->d:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-interface {p1, v5, v6}, Landroidx/compose/runtime/MutableLongState;->D(J)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt$PodcastPlayer$2$1;->e:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
