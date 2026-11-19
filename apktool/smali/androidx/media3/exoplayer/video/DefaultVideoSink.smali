.class final Landroidx/media3/exoplayer/video/DefaultVideoSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public final c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

.field public final d:Ljava/util/ArrayDeque;

.field public e:Landroid/view/Surface;

.field public f:Landroidx/media3/common/Format;

.field public g:J

.field public h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field public i:Ljava/util/concurrent/Executor;

.field public j:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;Landroidx/media3/common/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    iput-object p3, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    new-instance p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    new-instance v0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V

    invoke-direct {p3, v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;-><init>(Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance p2, Landroidx/media3/common/Format;

    invoke-direct {p2, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroidx/media3/common/Format;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:J

    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$Listener;->a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    new-instance p1, Ll8;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ll8;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Ljava/util/concurrent/Executor;

    new-instance p1, Lht;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e()Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    cmp-long p0, v2, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-object v0, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    iget v1, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    iget-object v2, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    array-length v1, v2

    shl-int/2addr v1, v5

    if-ltz v1, :cond_0

    new-array v3, v1, [J

    array-length v6, v2

    iget v7, v0, Landroidx/media3/common/util/LongArrayQueue;->a:I

    sub-int/2addr v6, v7

    invoke-static {v2, v7, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    invoke-static {v2, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, v0, Landroidx/media3/common/util/LongArrayQueue;->a:I

    iget v2, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroidx/media3/common/util/LongArrayQueue;->b:I

    iput-object v3, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    sub-int/2addr v1, v5

    iput v1, v0, Landroidx/media3/common/util/LongArrayQueue;->e:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lr81;->b()V

    return v4

    :cond_1
    :goto_0
    iget v1, v0, Landroidx/media3/common/util/LongArrayQueue;->b:I

    add-int/2addr v1, v5

    iget v2, v0, Landroidx/media3/common/util/LongArrayQueue;->e:I

    and-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/common/util/LongArrayQueue;->b:I

    iget-object v2, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    aput-wide p1, v2, v1

    iget v1, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    add-int/2addr v1, v5

    iput v1, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    iput-wide p1, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/media3/exoplayer/video/a;

    invoke-direct {p2, p0, v4}, Landroidx/media3/exoplayer/video/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v5
.end method

.method public final g(JJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->a(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroidx/media3/common/Format;

    invoke-direct {p2, p1, p0}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw p2
.end method

.method public final h(J)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final i(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    return-void
.end method

.method public final k(Landroidx/media3/common/Format;JILjava/util/List;)V
    .locals 10

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    invoke-static {p5}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget p5, p1, Landroidx/media3/common/Format;->v:I

    iget v0, p1, Landroidx/media3/common/Format;->w:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroidx/media3/common/Format;

    iget v2, v1, Landroidx/media3/common/Format;->v:I

    const-wide/16 v3, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v7, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    if-ne p5, v2, :cond_0

    iget v1, v1, Landroidx/media3/common/Format;->w:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    iget-wide v8, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    cmp-long v2, v8, v5

    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    add-long/2addr v8, v3

    :goto_0
    new-instance v2, Landroidx/media3/common/VideoSize;

    invoke-direct {v2, p5, v0}, Landroidx/media3/common/VideoSize;-><init>(II)V

    invoke-virtual {v1, v8, v9, v2}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    :cond_2
    iget p5, p1, Landroidx/media3/common/Format;->z:F

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->z:F

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f(F)V

    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroidx/media3/common/Format;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:J

    cmp-long p1, p2, v0

    if-eqz p1, :cond_6

    iget-object p1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    iget p1, p1, Landroidx/media3/common/util/LongArrayQueue;->c:I

    if-nez p1, :cond_4

    iget-object p1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    iput-wide p2, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:J

    goto :goto_2

    :cond_4
    iget-object p1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    iget-wide p4, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    cmp-long v0, p4, v5

    if-nez v0, :cond_5

    const-wide/high16 p4, -0x4000000000000000L    # -2.0

    goto :goto_1

    :cond_5
    add-long/2addr p4, v3

    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    :goto_2
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:J

    :cond_6
    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final m(Z)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b(Z)Z

    move-result p0

    return p0
.end method

.method public final n(Landroidx/media3/common/Format;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final p()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->e:Landroid/view/Surface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final q()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    :cond_0
    return-void
.end method

.method public final r(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->e:Landroid/view/Surface;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g(Landroid/view/Surface;)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->b()V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a()V

    return-void
.end method

.method public final t(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h(F)V

    return-void
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d()V

    return-void
.end method

.method public final v(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d(Z)V

    return-void
.end method

.method public final w()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->e:Landroid/view/Surface;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g(Landroid/view/Surface;)V

    return-void
.end method

.method public final x(Z)V
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object v4, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    iget v4, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    iput-boolean v3, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->n:Z

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-object v4, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v5, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    iput v3, v5, Landroidx/media3/common/util/LongArrayQueue;->a:I

    const/4 v6, -0x1

    iput v6, v5, Landroidx/media3/common/util/LongArrayQueue;->b:I

    iput v3, v5, Landroidx/media3/common/util/LongArrayQueue;->c:I

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    iget-object v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:J

    :cond_3
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result p1

    if-lez p1, :cond_4

    move v3, v2

    :cond_4
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    :goto_2
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result p1

    if-le p1, v2, :cond_5

    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/media3/common/VideoSize;

    const-wide/16 v0, 0x0

    invoke-virtual {v4, v0, v1, p1}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    :cond_6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final y(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c(Z)V

    return-void
.end method

.method public final z(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Ljava/util/concurrent/Executor;

    return-void
.end method
