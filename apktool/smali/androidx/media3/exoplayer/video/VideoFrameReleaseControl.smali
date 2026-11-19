.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseAction;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field public final c:J

.field public d:Z

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:F

.field public l:Landroidx/media3/common/util/Clock;

.field public m:Z

.field public n:Z

.field public final o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c:J

    new-instance p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:F

    sget-object p1, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->o:Z

    return-void
.end method


# virtual methods
.method public final a(JJJJZZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v4, p3

    move-object/from16 v8, p11

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    iput-wide v6, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    if-eqz v3, :cond_0

    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    cmp-long v3, v9, v6

    if-nez v3, :cond_0

    iput-wide v4, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    :cond_0
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    cmp-long v3, v9, v1

    const/4 v13, 0x0

    const-wide/16 v16, -0x1

    const/4 v11, 0x1

    if-eqz v3, :cond_9

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    move-wide/from16 v18, v6

    iget-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->n:J

    cmp-long v12, v6, v16

    if-eqz v12, :cond_1

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->q:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->o:J

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->r:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->p:J

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->s:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    :cond_1
    iget-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->m:J

    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->m:J

    iget-object v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    const-wide/16 v22, 0x3e8

    mul-long v14, v1, v22

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v7, v14, v15}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->b(J)V

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    iput-boolean v13, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    const-wide/16 v24, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v24, 0x0

    iget-wide v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    cmp-long v7, v9, v18

    if-eqz v7, :cond_6

    iget-boolean v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v9, v7, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->d:J

    cmp-long v12, v9, v24

    if-nez v12, :cond_3

    move v7, v13

    goto :goto_0

    :cond_3
    iget-object v7, v7, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->g:[Z

    sub-long v9, v9, v20

    const-wide/16 v20, 0xf

    rem-long v9, v9, v20

    long-to-int v9, v9

    aget-boolean v7, v7, v9

    :goto_0
    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    invoke-virtual {v7, v9, v10}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->b(J)V

    :cond_5
    iput-boolean v11, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v7, v14, v15}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->b(J)V

    :cond_6
    :goto_1
    iget-boolean v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    if-eqz v7, :cond_7

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-boolean v13, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    :cond_7
    iput-wide v14, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    iget-object v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v13

    goto :goto_2

    :cond_8
    iget v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    add-int/2addr v7, v11

    :goto_2
    iput v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c()V

    iput-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    goto :goto_3

    :cond_9
    move-wide/from16 v18, v6

    const-wide/16 v22, 0x3e8

    const-wide/16 v24, 0x0

    :goto_3
    sub-long v6, v1, v4

    long-to-double v6, v6

    iget v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:F

    float-to-double v9, v3

    div-double/2addr v6, v9

    double-to-long v6, v6

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v9

    sub-long v9, v9, p5

    sub-long/2addr v6, v9

    :cond_a
    iput-wide v6, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    const/4 v9, 0x3

    if-eqz p9, :cond_b

    if-nez p10, :cond_b

    :goto_4
    move/from16 p5, v9

    goto/16 :goto_11

    :cond_b
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    const/4 v10, 0x5

    if-nez v3, :cond_e

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->o:Z

    if-eqz v3, :cond_e

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    move-wide v2, v6

    const/4 v7, 0x1

    move/from16 v6, p10

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->w(JJZZ)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_10

    :cond_c
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    if-eqz v1, :cond_d

    iget-wide v1, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_d

    goto :goto_4

    :cond_d
    iput-boolean v11, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->n:Z

    return v10

    :cond_e
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->o:Z

    if-nez v3, :cond_f

    iput-boolean v11, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->n:Z

    :cond_f
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    cmp-long v3, v3, v18

    const/4 v12, 0x2

    if-eqz v3, :cond_11

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->j:Z

    if-nez v3, :cond_11

    :cond_10
    move v3, v13

    goto :goto_6

    :cond_11
    iget v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    if-eqz v3, :cond_15

    if-eq v3, v11, :cond_12

    if-eq v3, v12, :cond_14

    if-ne v3, v9, :cond_13

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v3

    iget-wide v14, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    sub-long/2addr v3, v14

    iget-boolean v5, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    if-eqz v5, :cond_10

    iget-wide v14, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    cmp-long v5, v14, v18

    if-eqz v5, :cond_10

    cmp-long v5, v14, p3

    if-eqz v5, :cond_10

    iget-object v5, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    invoke-interface {v5, v6, v7, v3, v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->t(JJ)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_12
    :goto_5
    move v3, v11

    goto :goto_6

    :cond_13
    invoke-static {}, Lr81;->b()V

    return v13

    :cond_14
    cmp-long v3, p3, p7

    if-ltz v3, :cond_10

    goto :goto_5

    :cond_15
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    :goto_6
    if-eqz v3, :cond_16

    return v13

    :cond_16
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    if-eqz v3, :cond_17

    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    cmp-long v3, p3, v3

    if-nez v3, :cond_18

    :cond_17
    move/from16 p6, v10

    goto/16 :goto_12

    :cond_18
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->c()J

    move-result-wide v3

    iget-object v5, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iget-wide v6, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    mul-long v6, v6, v22

    add-long/2addr v6, v3

    iget-wide v14, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->q:J

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1d

    iget-object v14, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object v14, v14, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v14}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    move-result v14

    if-eqz v14, :cond_1b

    iget-object v14, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object v15, v14, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v15}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget-object v14, v14, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    move/from16 p5, v9

    move/from16 p6, v10

    iget-wide v9, v14, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->e:J

    cmp-long v15, v9, v24

    if-nez v15, :cond_19

    move-wide/from16 v14, v24

    goto :goto_7

    :cond_19
    iget-wide v14, v14, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->f:J

    div-long/2addr v14, v9

    goto :goto_7

    :cond_1a
    move/from16 p5, v9

    move/from16 p6, v10

    move-wide/from16 v14, v18

    :goto_7
    iget-wide v9, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->m:J

    move/from16 v16, v11

    move/from16 p9, v12

    iget-wide v11, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->q:J

    sub-long/2addr v9, v11

    mul-long/2addr v9, v14

    long-to-float v9, v9

    iget v10, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i:F

    :goto_8
    div-float/2addr v9, v10

    float-to-long v9, v9

    goto :goto_9

    :cond_1b
    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 v16, v11

    move/from16 p9, v12

    iget-wide v9, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->s:J

    sub-long v9, v1, v9

    mul-long v9, v9, v22

    long-to-float v9, v9

    iget v10, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i:F

    goto :goto_8

    :goto_9
    iget-wide v11, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->r:J

    add-long/2addr v11, v9

    sub-long v9, v6, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v14, 0x1312d00

    cmp-long v9, v9, v14

    if-gtz v9, :cond_1c

    move-wide v6, v11

    goto :goto_a

    :cond_1c
    invoke-virtual {v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    goto :goto_a

    :cond_1d
    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 v16, v11

    move/from16 p9, v12

    :goto_a
    iget-wide v9, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->m:J

    iput-wide v9, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->n:J

    iput-wide v6, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->o:J

    iput-wide v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->p:J

    iget-object v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-nez v1, :cond_1e

    goto/16 :goto_e

    :cond_1e
    iget-wide v1, v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->d:J

    iget-object v9, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    iget-wide v9, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->e:J

    cmp-long v11, v1, v18

    if-eqz v11, :cond_26

    cmp-long v11, v9, v18

    if-nez v11, :cond_1f

    goto/16 :goto_e

    :cond_1f
    sub-long v11, v6, v1

    div-long/2addr v11, v9

    mul-long/2addr v11, v9

    add-long/2addr v11, v1

    cmp-long v1, v6, v11

    if-gtz v1, :cond_20

    sub-long v1, v11, v9

    goto :goto_b

    :cond_20
    add-long v1, v11, v9

    move-wide/from16 v28, v11

    move-wide v11, v1

    move-wide/from16 v1, v28

    :goto_b
    sub-long v14, v11, v6

    sub-long/2addr v6, v1

    sub-long v20, v14, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    const-wide/16 v26, 0x2

    div-long v26, v9, v26

    cmp-long v17, v20, v26

    if-gez v17, :cond_24

    const-wide/16 v26, 0x4

    move-wide/from16 p1, v14

    div-long v13, v9, v26

    cmp-long v15, v20, v13

    if-gez v15, :cond_23

    move-wide/from16 p7, v1

    iget-wide v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    cmp-long v15, v1, v24

    if-eqz v15, :cond_21

    iput-wide v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    goto :goto_c

    :cond_21
    cmp-long v1, p1, v6

    if-gez v1, :cond_22

    neg-long v13, v13

    :cond_22
    iput-wide v13, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    goto :goto_c

    :cond_23
    move-wide/from16 p7, v1

    move-wide/from16 v1, v24

    iput-wide v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    goto :goto_c

    :cond_24
    move-wide/from16 p7, v1

    move-wide/from16 p1, v14

    iget-wide v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    iput-wide v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    :goto_c
    iget-wide v1, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    add-long v14, p1, v1

    cmp-long v1, v14, v6

    if-gez v1, :cond_25

    goto :goto_d

    :cond_25
    move-wide/from16 v11, p7

    :goto_d
    const-wide/16 v1, 0x50

    mul-long/2addr v9, v1

    const-wide/16 v1, 0x64

    div-long/2addr v9, v1

    sub-long v6, v11, v9

    :cond_26
    :goto_e
    iput-wide v6, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    sub-long/2addr v6, v3

    div-long v2, v6, v22

    iput-wide v2, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    cmp-long v1, v4, v18

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->j:Z

    if-nez v1, :cond_27

    move/from16 v7, v16

    goto :goto_f

    :cond_27
    const/4 v7, 0x0

    :goto_f
    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    move-wide/from16 v4, p3

    move/from16 v6, p10

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->w(JJZZ)Z

    move-result v1

    if-eqz v1, :cond_28

    :goto_10
    const/4 v0, 0x4

    return v0

    :cond_28
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    iget-wide v1, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    invoke-interface {v0, v1, v2, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->E(JZ)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v7, :cond_29

    :goto_11
    return p5

    :cond_29
    return p9

    :cond_2a
    iget-wide v0, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    const-wide/32 v2, 0xc350

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    goto :goto_12

    :cond_2b
    return v16

    :goto_12
    return p6
.end method

.method public final b(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->n:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->o:Z

    if-nez p1, :cond_1

    :cond_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    return v0

    :cond_1
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    return v0

    :cond_3
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    return v3
.end method

.method public final c(Z)V
    .locals 4

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->j:Z

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:J

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    new-instance v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;

    invoke-direct {v2, v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerBase;

    invoke-direct {v2, v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Vsync sampling disabled due to platform error"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iput-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->a()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d(Z)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    goto :goto_0

    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    return-void
.end method

.method public final f(F)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->f:F

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object v0, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    iget-object v0, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    iput v0, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c()V

    return-void
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->n:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->e:Landroid/view/Surface;

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a()V

    iput-object p1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->e:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d(Z)V

    :goto_1
    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    return-void
.end method

.method public final h(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:F

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i:F

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d(Z)V

    return-void
.end method
