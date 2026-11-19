.class final Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSession$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/audioplayer/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaSessionCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;",
        "Landroidx/media3/session/MediaSession$Callback;",
        "<init>",
        "(Lcom/vuitton/android/data/audioplayer/AudioPlayerService;)V",
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
.field public final synthetic a:Lcom/vuitton/android/data/audioplayer/AudioPlayerService;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/audioplayer/AudioPlayerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;->a:Lcom/vuitton/android/data/audioplayer/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/MediaItem;

    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->a()Landroidx/media3/common/MediaItem$Builder;

    move-result-object p3

    iget-object p2, p2, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;I)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x6

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "exoPlayer"

    iget-object p0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;->a:Lcom/vuitton/android/data/audioplayer/AudioPlayerService;

    packed-switch p3, :pswitch_data_0

    return p2

    :pswitch_0
    iget-object p3, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->l:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p3, :cond_1

    check-cast p3, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p3}, Landroidx/media3/common/BasePlayer;->S()V

    iget-object p0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->l:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/media3/common/BasePlayer;

    invoke-interface {p0, p2}, Landroidx/media3/common/Player;->P(Z)V

    return p1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object p3, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->l:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p3, :cond_3

    check-cast p3, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p3}, Landroidx/media3/common/BasePlayer;->F()V

    iget-object p0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->l:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_2

    check-cast p0, Landroidx/media3/common/BasePlayer;

    invoke-interface {p0, p2}, Landroidx/media3/common/Player;->P(Z)V

    return p1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
