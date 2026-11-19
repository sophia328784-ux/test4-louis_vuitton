.class final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;
.implements Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputVideoSink"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lcom/google/common/collect/ImmutableList;

.field public d:Landroidx/media3/common/Format;

.field public e:J

.field public f:J

.field public g:I

.field public h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field public i:Ljava/util/concurrent/Executor;

.field public j:Z

.field public final synthetic k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:I

    invoke-static {p2}, Landroidx/media3/common/util/Util;->L(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->a:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->f:J

    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$Listener;->a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    sget-object p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->w:Ll8;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->i:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final A(Landroidx/media3/common/Format;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/ColorInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    :goto_0
    iput-object p1, v0, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/common/VideoGraph;->v()V

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    return p0
.end method

.method public final b(Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Laa0;

    const/16 v2, 0xe

    invoke-direct {v1, v0, p1, v2}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->i:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lko0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lko0;-><init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->i:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lko0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lko0;-><init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->t:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 10

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->e:J

    add-long/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    iget-wide v2, v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    :cond_0
    iget-wide v6, v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b:J

    long-to-double v6, v6

    sub-long v2, p1, v2

    long-to-double v2, v2

    iget-wide v8, v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c:D

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-long v1, v2

    :goto_0
    cmp-long v3, v1, v4

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-wide v7, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->h:J

    cmp-long v3, v7, v4

    if-eqz v3, :cond_1

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v6

    iput v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:I

    check-cast p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    invoke-virtual {p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->e()V

    return v6

    :cond_1
    iget v1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->u:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    iget v2, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->v:I

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/common/VideoGraph;->u()I

    move-result v1

    iget v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->a:I

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/common/VideoGraph;->t()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->f:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    check-cast p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->f(J)V

    iput v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:I

    return v6

    :cond_4
    :goto_1
    return v3
.end method

.method public final g(JJ)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->e:J

    add-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g(JJ)V

    return-void
.end method

.method public final h(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->e:J

    return-void
.end method

.method public final i(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->o:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->f:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->s:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->t:Z

    :cond_0
    return-void
.end method

.method public final k(Landroidx/media3/common/Format;JILjava/util/List;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-static {p5}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p5

    iput-object p5, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->d:Landroidx/media3/common/Format;

    iget-object p5, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p5, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->t:Z

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->A(Landroidx/media3/common/Format;)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->f:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p1, p5, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:I

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    :goto_1
    move-wide v6, v0

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x1

    add-long v0, v1, v3

    goto :goto_1

    :goto_2
    iget-object p1, p5, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    new-instance v2, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->e:J

    add-long v3, p2, v0

    move v5, p4

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;-><init>(JIJ)V

    invoke-virtual {p1, v6, v7, v2}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->d:Landroidx/media3/common/Format;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->A(Landroidx/media3/common/Format;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:I

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    check-cast v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p0, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b(Z)Z

    move-result p0

    return p0
.end method

.method public final n(Landroidx/media3/common/Format;)Z
    .locals 13

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v2, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    const-string v3, "Color transfer "

    iget v4, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->r:I

    iget v5, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:I

    const/4 v6, 0x0

    if-nez v5, :cond_b

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v4, p1, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    :goto_1
    :try_start_0
    iget v5, v4, Landroidx/media3/common/ColorInfo;->c:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "EGL_EXT_gl_colorspace_bt2020_pq"

    const/16 v8, 0x21

    const/4 v9, 0x6

    const/4 v10, 0x7

    if-ne v5, v10, :cond_3

    :try_start_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x22

    if-ge v11, v12, :cond_3

    if-lt v11, v8, :cond_2

    invoke-static {v7}, Landroidx/media3/common/util/GlUtil;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v1

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    move v11, v6

    :goto_2
    if-eqz v11, :cond_3

    new-instance v3, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget v5, v4, Landroidx/media3/common/ColorInfo;->a:I

    iput v5, v3, Landroidx/media3/common/ColorInfo$Builder;->a:I

    iget v5, v4, Landroidx/media3/common/ColorInfo;->b:I

    iput v5, v3, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iget-object v5, v4, Landroidx/media3/common/ColorInfo;->d:[B

    iput-object v5, v3, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    iget v5, v4, Landroidx/media3/common/ColorInfo;->e:I

    iput v5, v3, Landroidx/media3/common/ColorInfo$Builder;->e:I

    iget v4, v4, Landroidx/media3/common/ColorInfo;->f:I

    iput v4, v3, Landroidx/media3/common/ColorInfo$Builder;->f:I

    iput v9, v3, Landroidx/media3/common/ColorInfo$Builder;->c:I

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v4

    goto :goto_5

    :cond_3
    if-ne v5, v9, :cond_5

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_4

    invoke-static {v7}, Landroidx/media3/common/util/GlUtil;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v6

    goto :goto_4

    :cond_5
    if-ne v5, v10, :cond_6

    const-string v7, "EGL_EXT_gl_colorspace_bt2020_hlg"

    invoke-static {v7}, Landroidx/media3/common/util/GlUtil;->e(Ljava/lang/String;)Z

    move-result v7

    goto :goto_4

    :cond_6
    :goto_3
    move v7, v1

    :goto_4
    if-nez v7, :cond_7

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not supported. Falling back to OpenGl tone mapping."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    sget-object v4, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    goto :goto_5

    :cond_7
    const/4 v3, 0x2

    if-eq v5, v3, :cond_8

    const/16 v3, 0xa

    if-ne v5, v3, :cond_9

    :cond_8
    sget-object v4, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    :goto_5
    iget-object v3, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->f:Landroidx/media3/common/util/Clock;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-interface {v3, v5, v7}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:Landroidx/media3/common/util/HandlerWrapper;

    :try_start_2
    iget-object v5, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b:Landroidx/media3/common/VideoGraph$Factory;

    iget-object v7, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a:Landroid/content/Context;

    new-instance v8, Low;

    invoke-direct {v8, v3, v6}, Low;-><init>(Landroidx/media3/common/util/HandlerWrapper;I)V

    check-cast v5, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;

    invoke-virtual {v5, v7, v4, v0, v8}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;->a(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/VideoGraph$Listener;Low;)Landroidx/media3/common/VideoGraph;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-interface {v3}, Landroidx/media3/common/VideoGraph;->s()V

    iget-object v3, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-interface {v3}, Landroidx/media3/common/VideoGraph;->r()V

    iget-object v3, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-interface {v3}, Landroidx/media3/common/VideoGraph;->n()V
    :try_end_2
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v3, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:Landroid/util/Pair;

    if-eqz v3, :cond_a

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/Surface;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/util/Size;

    iget v5, v3, Landroidx/media3/common/util/Size;->a:I

    iget v3, v3, Landroidx/media3/common/util/Size;->b:I

    invoke-virtual {v0, v4, v5, v3}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b(Landroid/view/Surface;II)V

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    iget-object v4, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:Landroidx/media3/common/util/HandlerWrapper;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Low;

    invoke-direct {v5, v4, v1}, Low;-><init>(Landroidx/media3/common/util/HandlerWrapper;I)V

    check-cast v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iput-object v3, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object v5, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Ljava/util/concurrent/Executor;

    iput v1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->r:I

    goto :goto_7

    :catch_1
    move-exception p0

    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v0

    :goto_6
    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v0

    :cond_b
    if-ne v4, v1, :cond_c

    :goto_7
    :try_start_3
    iget-object v2, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/media3/common/VideoGraph;->w()V
    :try_end_3
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_3 .. :try_end_3} :catch_2

    iget p1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->v:I

    add-int/2addr p1, v1

    iput p1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->v:I

    goto :goto_8

    :catch_2
    move-exception p0

    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v0

    :cond_c
    move v1, v6

    :goto_8
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    return v1
.end method

.method public final o()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->s:J

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)V

    iget-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/media3/common/VideoGraph;->o()V

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->s:J

    return-void
.end method

.method public final p()Landroid/view/Surface;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/common/VideoGraph;->p()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final q()V
    .locals 11

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result v0

    if-nez v0, :cond_0

    check-cast v1, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->q()V

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_3

    iget v3, v4, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;->b:I

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->q()V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v5, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;

    iget-wide v6, v4, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;->a:J

    const/4 v8, 0x0

    iget-wide v9, v4, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;->c:J

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;-><init>(JIJ)V

    move-object v4, v5

    :goto_2
    const/4 v3, 0x0

    :cond_3
    iget-wide v5, v4, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;->c:J

    invoke-virtual {v0, v5, v6, v4}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    return-void
.end method

.method public final r(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/Size;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:Landroid/util/Pair;

    iget v0, p2, Landroidx/media3/common/util/Size;->a:I

    iget p2, p2, Landroidx/media3/common/util/Size;->b:I

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b(Landroid/view/Surface;II)V

    return-void
.end method

.method public final release()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:Landroidx/media3/common/util/HandlerWrapper;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->c()V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/VideoGraph;->release()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:Landroid/util/Pair;

    iput v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->r:I

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->s()V

    :cond_0
    return-void
.end method

.method public final t(F)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c(F)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->t(F)V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->u()V

    :cond_0
    return-void
.end method

.method public final v(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->v(I)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    iget v1, v0, Landroidx/media3/common/util/Size;->a:I

    iget v0, v0, Landroidx/media3/common/util/Size;->b:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b(Landroid/view/Surface;II)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:Landroid/util/Pair;

    return-void
.end method

.method public final x(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->j:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/common/VideoGraph;->flush()V

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->f:J

    invoke-static {v1, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)V

    return-void
.end method

.method public final y(Z)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->k:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->y(Z)V

    :cond_0
    return-void
.end method

.method public final z(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->i:Ljava/util/concurrent/Executor;

    return-void
.end method
