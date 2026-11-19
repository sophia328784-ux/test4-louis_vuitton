.class public final synthetic Landroidx/media3/exoplayer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/b;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 11

    iget-object p0, p0, Landroidx/media3/exoplayer/b;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c:[Landroidx/media3/exoplayer/RendererCapabilities;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/LoadControl;->j(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/upstream/Allocator;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f1:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v9, p0, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->a:J

    move-object v7, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/MediaPeriodHolder;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;J)V

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/b;->b:I

    iget-object p0, p0, Landroidx/media3/exoplayer/b;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->Q(Landroidx/media3/common/MediaMetadata;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/common/TrackSelectionParameters;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->R(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/common/AudioAttributes;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->i0(Landroidx/media3/common/AudioAttributes;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/media3/common/MediaMetadata;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->Q(Landroidx/media3/common/MediaMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
