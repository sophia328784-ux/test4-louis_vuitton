.class final Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;
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
    c = "com.vuitton.android.presentation.compose.LvVideoPlayerKt$LvVideoPlayer$3$1"
    f = "LvVideoPlayer.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/Boolean;

.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/datasource/cache/CacheDataSource$Factory;ZZZLjava/lang/Boolean;ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->b:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->e:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->f:Z

    iput-boolean p6, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->g:Z

    iput-boolean p7, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->h:Z

    iput-object p8, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->i:Ljava/lang/Boolean;

    iput-boolean p9, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->j:Z

    iput-object p10, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->k:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->m:Landroidx/compose/runtime/MutableState;

    iput-object p13, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->o:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->p:Landroidx/compose/runtime/MutableState;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->q:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    move-object/from16 p2, p17

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;

    iget-object v15, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->p:Landroidx/compose/runtime/MutableState;

    iget-object v2, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->q:Landroidx/compose/runtime/MutableState;

    move-object v3, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->b:Landroidx/media3/exoplayer/ExoPlayer;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->c:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->d:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->e:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    move-object v6, v5

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->f:Z

    move-object v7, v6

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->g:Z

    move-object v8, v7

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->h:Z

    move-object v9, v8

    iget-object v8, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->i:Ljava/lang/Boolean;

    move-object v10, v9

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->j:Z

    move-object v11, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->k:Landroidx/compose/runtime/MutableState;

    move-object v12, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->l:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->m:Landroidx/compose/runtime/MutableState;

    move-object v14, v13

    iget-object v13, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->n:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->o:Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v0, v17

    move-object/from16 v17, p2

    invoke-direct/range {v0 .. v17}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/datasource/cache/CacheDataSource$Factory;ZZZLjava/lang/Boolean;ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->k:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player$Listener;

    iget-object v2, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->b:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Landroidx/media3/common/Player;->V(Landroidx/media3/common/Player$Listener;)V

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1$1$2;

    iget-object v3, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->l:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->m:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->n:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->o:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->p:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1$1$2;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    if-eqz p1, :cond_1

    invoke-interface {v2, p1}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Landroidx/media3/common/Player;->stop()V

    invoke-interface {v2}, Landroidx/media3/common/Player;->D()V

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->c:Ljava/lang/String;

    const-string p1, "text/vtt"

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->b:Ljava/lang/String;

    iput v3, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->d:I

    new-instance p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    invoke-direct {p1, v1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, v0, Landroidx/media3/common/MediaItem$Builder;->h:Lcom/google/common/collect/ImmutableList;

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-interface {v2, p1}, Landroidx/media3/common/Player;->R(Landroidx/media3/common/MediaItem;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->e:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    if-eqz v0, :cond_4

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object p1

    invoke-interface {v2, p1}, Landroidx/media3/exoplayer/ExoPlayer;->b(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;)V

    :cond_4
    invoke-interface {v2}, Landroidx/media3/common/Player;->f()V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->f:Z

    if-nez p1, :cond_5

    invoke-interface {v2}, Landroidx/media3/common/Player;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->m(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    invoke-interface {v2, p1}, Landroidx/media3/common/Player;->F0(Landroidx/media3/common/TrackSelectionParameters;)V

    :cond_5
    iget-boolean p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->g:Z

    invoke-interface {v2, p1}, Landroidx/media3/common/Player;->P(Z)V

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->P0()V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->h:Z

    invoke-interface {v2, p1}, Landroidx/media3/common/Player;->E0(I)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->i:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v2}, Landroidx/media3/common/Player;->c()V

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Landroidx/media3/common/Player;->pause()V

    :cond_7
    :goto_0
    iget-boolean p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->j:Z

    if-eqz p1, :cond_8

    invoke-interface {v2}, Landroidx/media3/common/Player;->pause()V

    :cond_8
    invoke-interface {v2}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$3$1;->q:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
