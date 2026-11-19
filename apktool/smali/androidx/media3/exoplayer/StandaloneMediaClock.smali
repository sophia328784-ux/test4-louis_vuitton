.class public final Landroidx/media3/exoplayer/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public final b:Landroidx/media3/common/util/Clock;

.field public c:Z

.field public d:J

.field public e:J

.field public f:Landroidx/media3/common/PlaybackParameters;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->b:Landroidx/media3/common/util/Clock;

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->f:Landroidx/media3/common/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->f:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->d:J

    iget-boolean p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->e:J

    :cond_0
    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b(J)V

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->f:Landroidx/media3/common/PlaybackParameters;

    return-void
.end method

.method public final i()J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->d:J

    iget-boolean v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->e:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->f:Landroidx/media3/common/PlaybackParameters;

    iget v4, p0, Landroidx/media3/common/PlaybackParameters;->a:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->c:I

    int-to-long v4, p0

    mul-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method
