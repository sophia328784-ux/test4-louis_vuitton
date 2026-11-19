.class final Landroidx/media3/exoplayer/video/VideoFrameRenderControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final c:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field public final d:Landroidx/media3/common/util/TimedValueQueue;

.field public final e:Landroidx/media3/common/util/TimedValueQueue;

.field public final f:Landroidx/media3/common/util/LongArrayQueue;

.field public final g:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public h:J

.field public i:J

.field public j:J

.field public k:Landroidx/media3/common/VideoSize;

.field public l:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->a:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iput-object p3, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->g:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-direct {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    new-instance p1, Landroidx/media3/common/util/LongArrayQueue;

    invoke-direct {p1}, Landroidx/media3/common/util/LongArrayQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:J

    sget-object p3, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    iput-object p3, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:Landroidx/media3/common/VideoSize;

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 19

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    iget v2, v1, Landroidx/media3/common/util/LongArrayQueue;->c:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v2, :cond_b

    iget-object v2, v1, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    iget v3, v1, Landroidx/media3/common/util/LongArrayQueue;->a:I

    aget-wide v5, v2, v3

    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/util/TimedValueQueue;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x2

    iget-object v4, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:J

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    :cond_1
    iget-wide v11, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:J

    const/4 v14, 0x0

    iget-object v15, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    move-object v2, v4

    iget-object v4, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v13, 0x0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    invoke-virtual/range {v4 .. v15}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a(JJJJZZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    move-result v4

    iget-object v7, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-eq v4, v9, :cond_2

    if-eq v4, v8, :cond_2

    iget-object v10, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->g:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    iget-wide v11, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    invoke-virtual {v10, v5, v6, v11, v12}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a(JJ)V

    :cond_2
    const/4 v10, 0x3

    iget-object v11, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->a:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    const/4 v12, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v12, :cond_6

    if-eq v4, v3, :cond_5

    if-eq v4, v10, :cond_5

    if-eq v4, v8, :cond_4

    if-ne v4, v9, :cond_3

    return-void

    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    iput-wide v5, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    goto :goto_0

    :cond_5
    iput-wide v5, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    invoke-virtual {v1}, Landroidx/media3/common/util/LongArrayQueue;->a()J

    invoke-interface {v11}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->a()V

    goto :goto_0

    :cond_6
    iput-wide v5, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    const/4 v3, 0x0

    if-nez v4, :cond_7

    move v4, v12

    goto :goto_1

    :cond_7
    move v4, v3

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/LongArrayQueue;->a()J

    move-result-wide v5

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/util/TimedValueQueue;->f(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/VideoSize;

    if-eqz v1, :cond_8

    sget-object v8, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    invoke-virtual {v1, v8}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:Landroidx/media3/common/VideoSize;

    invoke-virtual {v1, v8}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iput-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:Landroidx/media3/common/VideoSize;

    invoke-interface {v11, v1}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->b(Landroidx/media3/common/VideoSize;)V

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    :goto_2
    move-wide v14, v7

    goto :goto_3

    :cond_9
    iget-wide v7, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    goto :goto_2

    :goto_3
    iget v1, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    if-eq v1, v10, :cond_a

    move/from16 v18, v12

    goto :goto_4

    :cond_a
    move/from16 v18, v3

    :goto_4
    iput v10, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    iget-object v1, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    iget-object v13, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->a:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    move-wide/from16 v16, v5

    invoke-interface/range {v13 .. v18}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->c(JJZ)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lb21;->x()V

    return-void
.end method
