.class public final synthetic Landroidx/media3/exoplayer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;
.implements Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/e;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f:Landroidx/media3/common/Player;

    new-instance v0, Landroidx/media3/common/Player$Events;

    invoke-direct {v0, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public b(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/u;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance p2, Landroidx/media3/exoplayer/i;

    invoke-direct {p2, p1, v0}, Landroidx/media3/exoplayer/i;-><init>(II)V

    const/16 p1, 0x15

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/e;->b:I

    iget-object p0, p0, Landroidx/media3/exoplayer/e;->c:Landroidx/media3/exoplayer/ExoPlayerImpl;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->o0(Landroidx/media3/common/MediaMetadata;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->Y(Landroidx/media3/common/Player$Commands;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
