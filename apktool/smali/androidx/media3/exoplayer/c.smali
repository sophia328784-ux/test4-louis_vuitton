.class public final synthetic Landroidx/media3/exoplayer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/c;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/c;->c:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/c;->b:I

    iget-object p0, p0, Landroidx/media3/exoplayer/c;->c:Landroidx/media3/exoplayer/PlaybackInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->d:Landroidx/media3/common/Tracks;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->q0(Landroidx/media3/common/Tracks;)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->s(Landroidx/media3/common/PlaybackException;)V

    return-void

    :pswitch_1
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->t0(Landroidx/media3/common/PlaybackException;)V

    return-void

    :pswitch_2
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->h(Landroidx/media3/common/PlaybackParameters;)V

    return-void

    :pswitch_3
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/PlaybackInfo;->m()Z

    move-result p0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->x0(Z)V

    return-void

    :pswitch_4
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->H(I)V

    return-void

    :pswitch_5
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->g0(IZ)V

    return-void

    :pswitch_6
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->K(I)V

    return-void

    :pswitch_7
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->s0(IZ)V

    return-void

    :pswitch_8
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->I(Z)V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->e0(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
