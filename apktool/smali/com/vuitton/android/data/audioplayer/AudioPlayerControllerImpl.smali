.class public final Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;",
        "Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public b:Lkotlin/jvm/functions/Function5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/session/SessionToken;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, p1, v1}, Landroidx/media3/session/SessionToken;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroidx/media3/session/MediaController$Builder;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/MediaController$Builder;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V

    invoke-virtual {v1}, Landroidx/media3/session/MediaController$Builder;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v0, Lz1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {p1, v0, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImplKt;->a(Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaController;->R(Landroidx/media3/common/MediaItem;)V

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->f()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->pause()V

    :cond_1
    return-void
.end method

.method public final b(ILjava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;

    invoke-static {v2}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImplKt;->a(Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media3/session/MediaController;->x0(Ljava/util/List;IJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->f()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->pause()V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaController;->P(Z)V

    :cond_0
    return-void
.end method

.method public final d(Lkotlin/jvm/functions/Function5;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->b:Lkotlin/jvm/functions/Function5;

    return-void
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->stop()V

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->b:Lkotlin/jvm/functions/Function5;

    iget-object p0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0}, Landroidx/media3/session/MediaController;->X0(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;)V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->b()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaController;->t(F)V

    :cond_0
    return-void
.end method

.method public final f()Landroidx/media3/session/MediaController;
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_1

    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_1
    instance-of v1, p0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_2
    check-cast v0, Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->pause()V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->c()V

    :cond_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaController;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->stop()V

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->D()V

    :cond_1
    return-void
.end method
