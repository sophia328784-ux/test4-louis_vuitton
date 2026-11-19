.class public final Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/Object;

.field public static r:Ljava/util/concurrent/ScheduledExecutorService;

.field public static s:I


# instance fields
.field public final a:Landroid/media/AudioTrack;

.field public final b:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

.field public final c:F

.field public final d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;

.field public e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

.field public final f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

.field public final g:Z

.field public final h:I

.field public final i:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

.field public final j:Landroidx/media3/common/util/ListenerSet;

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;FLandroidx/media3/common/util/Clock;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iput p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c:F

    iput-object p3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;

    new-instance p4, Landroidx/media3/common/util/ListenerSet;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p4, v0}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/lang/Thread;)V

    iput-object p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    iget p4, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    invoke-static {p4}, Landroidx/media3/common/util/Util;->K(I)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->g:Z

    if-eqz p4, :cond_0

    iget p4, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    invoke-static {p4}, Ljava/lang/Integer;->bitCount(I)I

    move-result p4

    iget v0, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->u(I)I

    move-result v0

    mul-int/2addr v0, p4

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    iput p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)V

    iget v4, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    iget v5, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    iget v6, p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    move-object v3, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;Landroidx/media3/common/util/Clock;Landroid/media/AudioTrack;III)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    if-eqz p3, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    invoke-direct {p1, v3, p3}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    :cond_1
    invoke-virtual {v3}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->i:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;Landroidx/media3/common/util/Clock;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v4, 0x41000000    # 8.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 96
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;FLandroidx/media3/common/util/Clock;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    return-object v0
.end method

.method public final b()J
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->g:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->l:J

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->h:I

    int-to-long v2, p0

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    add-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->m:J

    return-wide v0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    move-result-wide v1

    iget v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e:I

    invoke-static {v3, v1, v2}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->j:J

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v1

    iget v2, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    iget v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c:F

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v2, v4, v3}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->b:F

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v4, v2}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to set playback params"

    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result p1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    return-void
.end method

.method public final f(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    return-void
.end method

.method public final g(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method public final getAudioSessionId()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public final h(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/analytics/PlayerId;->a()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-static {}, Lno0;->h()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i()J
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x3

    if-ne v4, v12, :cond_19

    iget-object v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->c:[J

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->c()J

    move-result-wide v13

    div-long/2addr v13, v6

    move-wide/from16 v24, v6

    iget-wide v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l:J

    sub-long v6, v13, v6

    const-wide/16 v15, 0x7530

    cmp-long v6, v6, v15

    if-ltz v6, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    move-result-wide v6

    iget v15, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e:I

    invoke-static {v15, v6, v7}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v6

    cmp-long v15, v6, v8

    if-nez v15, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v15, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    iget v12, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    invoke-static {v12, v6, v7}, Landroidx/media3/common/util/Util;->D(FJ)J

    move-result-wide v6

    sub-long/2addr v6, v13

    aput-wide v6, v4, v15

    iget v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    add-int/2addr v6, v11

    const/16 v7, 0xa

    rem-int/2addr v6, v7

    iput v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    iget v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    if-ge v6, v7, :cond_1

    add-int/2addr v6, v11

    iput v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    :cond_1
    iput-wide v13, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l:J

    iput-wide v8, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    if-ge v6, v7, :cond_2

    move v15, v6

    iget-wide v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    aget-wide v16, v4, v15

    int-to-long v11, v7

    div-long v16, v16, v11

    add-long v5, v16, v5

    iput-wide v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    add-int/lit8 v6, v15, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    iget-boolean v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->g:Z

    const-wide/32 v26, 0x7a120

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->m:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_4

    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->o:J

    sub-long v11, v13, v11

    cmp-long v7, v11, v26

    if-ltz v7, :cond_4

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v11, v6

    mul-long v11, v11, v24

    move-wide v15, v11

    iget-wide v10, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->f:J

    sub-long v11, v15, v10

    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    const-wide/32 v15, 0x989680

    cmp-long v12, v10, v15

    if-lez v12, :cond_3

    iget-object v12, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v12, v10, v11}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->b(J)V

    iput-wide v8, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-object v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->m:Ljava/lang/reflect/Method;

    :cond_3
    :goto_1
    iput-wide v13, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->o:J

    :cond_4
    iget-wide v10, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    invoke-virtual {v0, v13, v14}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b(J)J

    move-result-wide v22

    iget-object v7, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    iget-object v10, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    iget v11, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->b:I

    if-nez v4, :cond_6

    move-wide/from16 v28, v8

    iget-wide v8, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g:J

    sub-long v8, v13, v8

    move-object/from16 v30, v7

    iget-wide v6, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f:J

    cmp-long v6, v8, v6

    if-gez v6, :cond_7

    :goto_3
    goto/16 :goto_9

    :cond_6
    move-object/from16 v30, v7

    move-wide/from16 v28, v8

    :cond_7
    iput-wide v13, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g:J

    move-object/from16 v7, v30

    iget-object v6, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->a:Landroid/media/AudioTrack;

    iget-object v8, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v6, v8}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v9

    if-eqz v9, :cond_a

    move/from16 v30, v5

    iget-wide v4, v8, Landroid/media/AudioTimestamp;->framePosition:J

    move-wide/from16 v20, v13

    iget-wide v12, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->d:J

    cmp-long v14, v12, v4

    if-lez v14, :cond_9

    iget-boolean v14, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->f:Z

    if-eqz v14, :cond_8

    iget-wide v14, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->g:J

    add-long/2addr v14, v12

    iput-wide v14, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->g:J

    const/4 v6, 0x0

    iput-boolean v6, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->f:Z

    goto :goto_4

    :cond_8
    iget-wide v12, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->c:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->c:J

    :cond_9
    :goto_4
    iput-wide v4, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->d:J

    iget-wide v12, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->g:J

    add-long/2addr v4, v12

    iget-wide v12, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->c:J

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    add-long/2addr v4, v12

    iput-wide v4, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    goto :goto_5

    :cond_a
    move/from16 v30, v5

    move-wide/from16 v20, v13

    :goto_5
    const/4 v4, 0x4

    if-eqz v9, :cond_d

    iget-wide v12, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v18, v12, v24

    iget-wide v12, v10, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    iget-object v5, v10, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    iget-wide v14, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v14, v14, v24

    invoke-static {v11, v12, v13}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v12

    sub-long v14, v20, v14

    move/from16 v5, v30

    invoke-static {v5, v14, v15}, Landroidx/media3/common/util/Util;->A(FJ)J

    move-result-wide v14

    add-long/2addr v14, v12

    sub-long v12, v18, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v16, 0x4c4b40

    cmp-long v12, v12, v16

    if-lez v12, :cond_b

    iget-object v15, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->c:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iget-wide v12, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    move-wide/from16 v16, v12

    invoke-interface/range {v15 .. v23}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->d(JJJJ)V

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_6

    :cond_b
    sub-long v14, v14, v22

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v12, v12, v16

    if-lez v12, :cond_c

    iget-object v15, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->c:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iget-wide v12, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    move-wide/from16 v16, v12

    invoke-interface/range {v15 .. v23}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->c(JJJJ)V

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_6

    :cond_c
    iget v12, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    if-ne v12, v4, :cond_e

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_6

    :cond_d
    move/from16 v5, v30

    :cond_e
    :goto_6
    iget v13, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    if-eqz v13, :cond_17

    const/4 v12, 0x1

    if-eq v13, v12, :cond_12

    const/4 v12, 0x2

    if-eq v13, v12, :cond_11

    const/4 v5, 0x3

    if-eq v13, v5, :cond_10

    if-ne v13, v4, :cond_f

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lr81;->b()V

    return-wide v28

    :cond_10
    if-eqz v9, :cond_1a

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto/16 :goto_a

    :cond_11
    const/4 v6, 0x0

    if-nez v9, :cond_1a

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto/16 :goto_9

    :cond_12
    if-eqz v9, :cond_16

    iget-wide v13, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    move-wide v15, v13

    iget-wide v12, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->h:J

    cmp-long v4, v15, v12

    if-gtz v4, :cond_13

    goto :goto_7

    :cond_13
    iget-wide v14, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->i:J

    invoke-static {v11, v12, v13}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v12

    sub-long v14, v20, v14

    invoke-static {v5, v14, v15}, Landroidx/media3/common/util/Util;->A(FJ)J

    move-result-wide v14

    add-long/2addr v14, v12

    iget-wide v12, v10, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    iget-object v4, v10, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    iget-wide v9, v4, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v9, v9, v24

    invoke-static {v11, v12, v13}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v11

    sub-long v9, v20, v9

    invoke-static {v5, v9, v10}, Landroidx/media3/common/util/Util;->A(FJ)J

    move-result-wide v4

    add-long/2addr v4, v11

    sub-long/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v4, v24

    if-gez v4, :cond_14

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_9

    :cond_14
    :goto_7
    iget-wide v4, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e:J

    sub-long v13, v20, v4

    const-wide/32 v4, 0x1e8480

    cmp-long v4, v13, v4

    if-lez v4, :cond_15

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_9

    :cond_15
    iget-wide v4, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    iput-wide v4, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->h:J

    iget-wide v4, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v4, v4, v24

    iput-wide v4, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->i:J

    goto :goto_9

    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_a

    :cond_17
    const/4 v6, 0x0

    if-eqz v9, :cond_18

    iget-wide v4, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v8, v4, v24

    iget-wide v10, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1b

    iget-wide v7, v7, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    iput-wide v7, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->h:J

    div-long v4, v4, v24

    iput-wide v4, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->i:J

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_a

    :cond_18
    iget-wide v4, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e:J

    sub-long v13, v20, v4

    cmp-long v4, v13, v26

    if-lez v4, :cond_1b

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    goto :goto_a

    :cond_19
    move-wide/from16 v24, v6

    :goto_8
    move-wide/from16 v28, v8

    :cond_1a
    :goto_9
    const/4 v6, 0x0

    :cond_1b
    :goto_a
    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->c()J

    move-result-wide v4

    div-long v4, v4, v24

    iget v1, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    const/4 v12, 0x2

    if-ne v1, v12, :cond_1c

    const/4 v10, 0x1

    goto :goto_b

    :cond_1c
    move v10, v6

    :goto_b
    if-eqz v10, :cond_1d

    iget v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    iget-object v6, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    iget-wide v7, v6, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->e:J

    iget-object v6, v6, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->b:Landroid/media/AudioTimestamp;

    iget-wide v11, v6, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v11, v11, v24

    iget v6, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->b:I

    invoke-static {v6, v7, v8}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v6

    sub-long v8, v4, v11

    invoke-static {v1, v8, v9}, Landroidx/media3/common/util/Util;->A(FJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    :goto_c
    move-wide v11, v8

    goto :goto_d

    :cond_1d
    invoke-virtual {v0, v4, v5}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b(J)J

    move-result-wide v8

    goto :goto_c

    :goto_d
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_21

    if-nez v10, :cond_1e

    iget v1, v2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-virtual {v0, v11, v12}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d(J)V

    :cond_1f
    :goto_e
    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-eqz v3, :cond_20

    sub-long v1, v4, v1

    iget-wide v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    sub-long v6, v11, v6

    iget v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    invoke-static {v3, v1, v2}, Landroidx/media3/common/util/Util;->A(FJ)J

    move-result-wide v1

    iget-wide v8, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    add-long/2addr v8, v1

    sub-long v13, v8, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v3, v6, v28

    if-eqz v3, :cond_20

    const-wide/32 v6, 0xf4240

    cmp-long v3, v13, v6

    if-gez v3, :cond_20

    const-wide/16 v6, 0xa

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x64

    div-long/2addr v1, v6

    sub-long v13, v8, v1

    add-long v15, v8, v1

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v11

    :cond_20
    iput-wide v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    goto :goto_f

    :cond_21
    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    invoke-virtual {v0, v11, v12}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d(J)V

    :cond_22
    :goto_f
    return-wide v11
.end method

.method public final j()Z
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p0

    return p0
.end method

.method public final l(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->A:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->f:Z

    return-void
.end method

.method public final n(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    return-void
.end method

.method public final o()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    return p0
.end method

.method public final p()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final pause()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    const/4 v3, 0x0

    iput v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    iput v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->w:J

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public final q(IJLjava/nio/ByteBuffer;)Z
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget-boolean v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->g:Z

    if-nez v6, :cond_0

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->o:I

    if-nez v2, :cond_0

    iget v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    invoke-static {v2, p4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I(ILjava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->o:I

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/common/util/ListenerSet;->b:Ljava/lang/Thread;

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v3

    iget v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->p:I

    if-le v3, v4, :cond_1

    move v4, v8

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    iput v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->p:I

    if-eqz v4, :cond_2

    new-instance v3, Lv7;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lv7;-><init>(I)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_2
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->d:Z

    if-eqz v0, :cond_4

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p2, v2

    if-nez v0, :cond_3

    iget-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->n:J

    goto :goto_1

    :cond_3
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->n:J

    :goto_1
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const-wide/16 v3, 0x3e8

    mul-long v4, p2, v3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    const/4 v3, 0x1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p2

    goto :goto_2

    :cond_4
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    invoke-virtual {v5, p4, p2, v8}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    :goto_2
    if-gez p2, :cond_8

    const/4 p1, -0x6

    if-eq p2, p1, :cond_5

    const/16 p1, -0x20

    if-ne p2, p1, :cond_6

    :cond_5
    move v7, v8

    :cond_6
    if-eqz v7, :cond_7

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;->a()V

    :cond_7
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;

    invoke-direct {p0, p2, v7}, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;-><init>(IZ)V

    throw p0

    :cond_8
    if-ne p2, v9, :cond_9

    move v7, v8

    :cond_9
    if-eqz v6, :cond_a

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->l:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->l:J

    return v7

    :cond_a
    if-eqz v7, :cond_b

    iget-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->m:J

    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->o:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->m:J

    :cond_b
    return v7
.end method

.method public final release()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->i:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->c:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    iget-object v3, v3, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    iget-object v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->a:Landroid/media/AudioTrack;

    iget-object v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->d:Landroidx/media3/exoplayer/audio/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->d:Landroidx/media3/exoplayer/audio/a;

    iput-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v4, :cond_3

    new-instance v4, Ll51;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    sput-object v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    sget v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    sget-object v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lb5;

    invoke-direct {v5, v0, v2, p0, v1}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x14

    invoke-interface {v4, v5, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method public final stop()V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->w:J

    iget-object v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    iput-wide v0, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->x:J

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method
