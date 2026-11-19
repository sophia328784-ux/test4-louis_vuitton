.class final Landroidx/media3/exoplayer/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Period;

.field public final b:Landroidx/media3/common/Timeline$Window;

.field public final c:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public final d:Landroidx/media3/common/util/HandlerWrapper;

.field public final e:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

.field public f:J

.field public g:I

.field public h:Z

.field public i:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public j:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public k:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public l:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public m:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public n:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public o:I

.field public p:Ljava/lang/Object;

.field public q:J

.field public r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->c:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->d:Landroidx/media3/common/util/HandlerWrapper;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->e:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    return-void
.end method

.method public static s(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 14

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    invoke-virtual {p0, p1, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v5, v4, Landroidx/media3/common/Timeline$Period;->c:I

    invoke-virtual {p0, v5, v2}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v5

    move-object v7, p1

    :goto_0
    iget-object v3, v4, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v3, v3, Landroidx/media3/common/AdPlaybackState;->b:I

    const/4 v6, -0x1

    if-eqz v3, :cond_5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v3, v8, :cond_0

    invoke-virtual {v4, v9}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_0
    iget-object v10, v4, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v10, v10, Landroidx/media3/common/AdPlaybackState;->e:I

    invoke-virtual {v4, v10}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Landroidx/media3/common/Timeline$Period;->c(J)I

    move-result v12

    if-eq v12, v6, :cond_1

    goto :goto_4

    :cond_1
    iget-wide v12, v4, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v12, v12, v10

    if-nez v12, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v4, v12}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x2

    goto :goto_1

    :cond_3
    move v12, v8

    :goto_1
    sub-int/2addr v3, v12

    :goto_2
    if-gt v9, v3, :cond_4

    iget-object v12, v4, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v12, v9}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v12

    iget-wide v12, v12, Landroidx/media3/common/AdPlaybackState$AdGroup;->j:J

    add-long/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    iget-wide v12, v4, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v3, v12, v10

    if-gtz v3, :cond_5

    :goto_3
    iget v3, v2, Landroidx/media3/common/Timeline$Window;->o:I

    if-gt v5, v3, :cond_5

    invoke-virtual {p0, v5, v4, v8}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-object v7, v4, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    invoke-virtual {p0, v7, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v4, v0, v1}, Landroidx/media3/common/Timeline$Period;->c(J)I

    move-result v8

    if-ne v8, v6, :cond_6

    invoke-virtual {v4, v0, v1}, Landroidx/media3/common/Timeline$Period;->b(J)I

    move-result p0

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v10, p4

    invoke-direct {v0, v7, v10, v11, p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object v0

    :cond_6
    move-wide/from16 v10, p4

    invoke-virtual {v4, v8}, Landroidx/media3/common/Timeline$Period;->f(I)I

    move-result v9

    new-instance v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct/range {v6 .. v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object v6
.end method


# virtual methods
.method public final a()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    if-nez v0, :cond_3

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n()V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n()V

    return-void
.end method

.method public final c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v2, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v10, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v11, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    iget-object v2, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v2

    iget v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    iget-boolean v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v13, v14}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v4, v3, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v3, v13, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v4, v7, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/Timeline$Window;->n:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v8, v2, :cond_6

    iget v2, v13, Landroidx/media3/common/Timeline$Period;->c:I

    iget-wide v5, v13, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v3, v5, v16

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v7}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-boolean v2, v7, Landroidx/media3/common/Timeline$Window;->i:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v7, Landroidx/media3/common/Timeline$Window;->k:Z

    if-nez v2, :cond_2

    move-wide/from16 v2, p3

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    move-wide/from16 v7, v16

    :goto_1
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->j(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    :goto_3
    move-object v2, v3

    move-wide v3, v14

    move-wide/from16 v18, v16

    move-wide v14, v7

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->u(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_5

    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    :cond_5
    move-wide v5, v1

    goto :goto_3

    :cond_6
    move-object v2, v3

    move-wide v3, v14

    move-wide/from16 v18, v3

    move-wide/from16 v14, v16

    :goto_4
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    cmp-long v5, v18, v16

    if-eqz v5, :cond_a

    cmp-long v5, v11, v16

    if-eqz v5, :cond_a

    iget-object v5, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v1, v5, v13}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v5, v5, Landroidx/media3/common/AdPlaybackState;->b:I

    iget-object v6, v13, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v6, v6, Landroidx/media3/common/AdPlaybackState;->e:I

    if-lez v5, :cond_8

    invoke-virtual {v13, v6}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    if-gt v5, v7, :cond_7

    invoke-virtual {v13, v6}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v5

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, v5, v8

    if-eqz v5, :cond_8

    :cond_7
    move v5, v7

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    move-wide v5, v3

    move-wide v3, v11

    move-wide v7, v14

    goto :goto_7

    :cond_9
    if-eqz v5, :cond_a

    move-wide v5, v11

    :goto_6
    move-wide v7, v14

    move-wide/from16 v3, v18

    goto :goto_7

    :cond_a
    move-wide v5, v3

    goto :goto_6

    :goto_7
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->e(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v8, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    add-long/2addr v3, v5

    sub-long v3, v3, p3

    iget-boolean v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->i:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v9, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v10, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget v5, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    move-object v6, v2

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v10, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-boolean v11, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->h:Z

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v7

    const/4 v14, -0x1

    if-eqz v7, :cond_8

    move-wide v12, v3

    const-wide/high16 p3, -0x8000000000000000L

    iget v3, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget-object v4, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v4, v3}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->b:I

    if-ne v4, v14, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget-object v6, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v6, v3}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/common/AdPlaybackState$AdGroup;->a(I)I

    move-result v5

    if-ge v5, v4, :cond_2

    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    move v4, v5

    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    move-object v0, p0

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_2
    move v14, v11

    iget-wide v3, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    iget v0, v2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-wide v3, v2, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v0, v3}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-boolean v0, v3, Landroidx/media3/common/Timeline$Window;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v3, Landroidx/media3/common/Timeline$Window;->k:Z

    if-nez v0, :cond_4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_4
    :goto_0
    move-wide v6, v5

    iget v3, v2, Landroidx/media3/common/Timeline$Period;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/Timeline;->j(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v5, v6

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    iget v1, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v0, v10, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v12

    cmp-long v7, v12, p3

    if-nez v7, :cond_7

    iget-wide v1, v2, Landroidx/media3/common/Timeline$Period;->d:J

    goto :goto_3

    :cond_7
    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2, v1}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->j:J

    add-long/2addr v1, v12

    :goto_3
    iget-object v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v2, v7

    iget-wide v7, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    iget-wide v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    move-object v1, v0

    move v11, v14

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->g(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_8
    move-wide v12, v3

    const-wide/high16 p3, -0x8000000000000000L

    if-eq v5, v14, :cond_9

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1, v6, v12, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline$Period;->f(I)I

    move-result v4

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/Timeline$Period;->e(II)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_a

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    iget-object v6, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v6, v5}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->b:I

    if-eq v4, v6, :cond_c

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget v3, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    move-object v0, p0

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_5
    invoke-virtual {v1, v10, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v3

    cmp-long v0, v3, p3

    if-nez v0, :cond_d

    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->d:J

    :goto_6
    move-wide v3, v2

    goto :goto_7

    :cond_d
    iget-object v0, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, v5}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->j:J

    add-long v2, v5, v3

    goto :goto_6

    :goto_7
    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-wide v7, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    iget-wide v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    const/4 v11, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->g(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 14

    move-object/from16 v0, p2

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v1

    iget-object v4, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget v5, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget v6, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v2 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    return-object p0

    :cond_0
    iget-wide v11, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v9, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->g(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 17

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v3, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget v4, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v1, v4, v3}, Landroidx/media3/common/Timeline$Period;->a(II)J

    move-result-wide v10

    move/from16 v1, p3

    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline$Period;->f(I)I

    move-result v1

    const-wide/16 v5, 0x0

    move/from16 v3, p4

    if-ne v3, v1, :cond_0

    iget-object v1, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget-wide v7, v1, Landroidx/media3/common/AdPlaybackState;->c:J

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    invoke-virtual {v2, v4}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v13

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v10, v1

    if-eqz v1, :cond_1

    cmp-long v1, v7, v10

    if-ltz v1, :cond_1

    const-wide/16 v1, 0x1

    sub-long v1, v10, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :cond_1
    move-object v1, v0

    move-wide v2, v7

    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    move-wide/from16 v6, p5

    move/from16 v12, p9

    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    return-object v0
.end method

.method public final g(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/Timeline$Period;->b(J)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    iget-object v10, v5, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v11, v10, Landroidx/media3/common/AdPlaybackState;->b:I

    if-lez v11, :cond_5

    iget v10, v10, Landroidx/media3/common/AdPlaybackState;->e:I

    invoke-virtual {v5, v10}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v7

    goto :goto_3

    :cond_0
    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v10

    iget-wide v12, v5, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    iget-object v10, v5, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v10, v6}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v10

    iget v11, v10, Landroidx/media3/common/AdPlaybackState$AdGroup;->b:I

    if-ne v11, v9, :cond_2

    :cond_1
    :goto_0
    move v10, v7

    goto :goto_2

    :cond_2
    move v12, v8

    :goto_1
    if-ge v12, v11, :cond_4

    iget-object v13, v10, Landroidx/media3/common/AdPlaybackState$AdGroup;->f:[I

    aget v13, v13, v12

    if-eqz v13, :cond_1

    if-ne v13, v7, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    move v10, v8

    :goto_2
    if-nez v10, :cond_5

    move v10, v7

    move v6, v9

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    new-instance v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v13, p9

    invoke-direct {v12, v2, v13, v14, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v12}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    if-ne v2, v9, :cond_6

    move v2, v7

    goto :goto_4

    :cond_6
    move v2, v8

    :goto_4
    invoke-virtual {v0, v1, v12}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v26

    invoke-virtual {v0, v1, v12, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v27

    if-eq v6, v9, :cond_7

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    move-result v0

    if-nez v0, :cond_7

    move/from16 v24, v7

    goto :goto_5

    :cond_7
    move/from16 v24, v8

    :goto_5
    if-eq v6, v9, :cond_8

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v7

    goto :goto_6

    :cond_8
    move v0, v8

    :goto_6
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v6, v9, :cond_9

    if-nez v0, :cond_9

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v0

    :goto_7
    move-wide/from16 v19, v0

    goto :goto_8

    :cond_9
    if-eqz v10, :cond_a

    iget-wide v0, v5, Landroidx/media3/common/Timeline$Period;->d:J

    goto :goto_7

    :cond_a
    move-wide/from16 v19, v13

    :goto_8
    cmp-long v0, v19, v13

    if-eqz v0, :cond_c

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v19, v0

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    move-wide/from16 v21, v19

    goto :goto_a

    :cond_c
    :goto_9
    iget-wide v0, v5, Landroidx/media3/common/Timeline$Period;->d:J

    move-wide/from16 v21, v0

    :goto_a
    cmp-long v0, v21, v13

    if-eqz v0, :cond_f

    cmp-long v0, v3, v21

    if-ltz v0, :cond_f

    if-nez v27, :cond_e

    if-nez v10, :cond_d

    goto :goto_b

    :cond_d
    move v7, v8

    :cond_e
    :goto_b
    int-to-long v0, v7

    sub-long v0, v21, v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v13, v0

    goto :goto_c

    :cond_f
    move-wide v13, v3

    :goto_c
    new-instance v11, Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-wide/from16 v15, p5

    move-wide/from16 v17, p7

    move/from16 v23, p11

    move/from16 v25, v2

    invoke-direct/range {v11 .. v27}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    return-object v11
.end method

.method public final h()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public final i(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v4

    iget v5, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-nez v4, :cond_0

    if-ne v5, v8, :cond_0

    move v14, v7

    goto :goto_0

    :cond_0
    move v14, v6

    :goto_0
    iget v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v0, v1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v15

    invoke-virtual {v0, v1, v3, v14}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v16

    iget-object v9, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v9, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_2

    if-ne v5, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v11

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v11, v9

    :goto_2
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    invoke-virtual {v0, v4, v1}, Landroidx/media3/common/Timeline$Period;->a(II)J

    move-result-wide v9

    goto :goto_4

    :cond_3
    cmp-long v1, v11, v9

    if-eqz v1, :cond_5

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, v11, v9

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v9, v11

    goto :goto_4

    :cond_5
    :goto_3
    iget-wide v9, v0, Landroidx/media3/common/Timeline$Period;->d:J

    :goto_4
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v4}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v6

    :cond_6
    move v13, v6

    goto :goto_5

    :cond_7
    if-eq v5, v8, :cond_6

    invoke-virtual {v0, v5}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v13, v7

    :goto_5
    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    move-wide v6, v4

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    move-wide/from16 v17, v6

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    iget-boolean v1, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->g:Z

    move-wide/from16 v19, v11

    move-wide v10, v9

    move-wide/from16 v8, v19

    move v12, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    return-object v0
.end method

.method public final j(Landroidx/media3/common/Timeline;)V
    .locals 14

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v2, v2, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->a:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget-object v12, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v12, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v9, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v2, v9}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->c:I

    iget v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    iget-boolean v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    invoke-virtual {p1, v2, v3, v4}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result v4

    const/4 v2, -0x1

    if-eq v4, v2, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->j(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v3, v9}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->u(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    :cond_2
    move-wide v5, v3

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v2, v3

    move-wide v3, v7

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    iget-object v8, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v1

    iget-object v5, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    if-eqz v1, :cond_3

    move-object v1, v5

    move-wide v5, v3

    iget v3, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget v4, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget-wide v7, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v5

    iget-wide v9, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    const/4 v11, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->g(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-nez v2, :cond_4

    iget-wide v2, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-object v4, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->e:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

    invoke-interface {v4, v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;->a(Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    :cond_4
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->p(Ljava/util/ArrayList;)V

    return-void

    :cond_6
    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->p(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method public final k(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z
    .locals 7

    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Window;->i:Z

    if-nez p2, :cond_0

    iget v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v6
.end method

.method public final l(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 5

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->c:I

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result p2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, p0, v3, v4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Window;->o:I

    if-ne p0, p2, :cond_2

    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->h()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 4

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_1
    new-instance v2, Landroidx/media3/exoplayer/r;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/media3/exoplayer/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->d:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v2}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o(J)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->v(J)V

    :cond_1
    return-void
.end method

.method public final p(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->m()V

    return-void
.end method

.method public final q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->c()V

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n()V

    :cond_4
    return v1
.end method

.method public final r(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    iget-wide v4, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v4, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final t(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 14

    move-object/from16 v1, p2

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {p1, v4}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {p1, v4, v2, v5}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    if-ne v4, v3, :cond_0

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:J

    goto :goto_2

    :cond_0
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v4, :cond_2

    iget-object v7, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    goto :goto_2

    :cond_1
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_1
    if-eqz v4, :cond_4

    iget-object v7, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v6, :cond_3

    invoke-virtual {p1, v7, v2, v5}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget v7, v7, Landroidx/media3/common/Timeline$Period;->c:I

    if-ne v7, v3, :cond_3

    iget-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    goto :goto_2

    :cond_3
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->u(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    iput-wide v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v7, :cond_6

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:Ljava/lang/Object;

    iput-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:J

    :cond_6
    :goto_2
    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v7, v2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v8, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v7, v8}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v7

    move v9, v5

    :goto_3
    iget v10, v8, Landroidx/media3/common/Timeline$Window;->n:I

    if-lt v7, v10, :cond_a

    const/4 v10, 0x1

    invoke-virtual {p1, v7, v2, v10}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-object v11, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v11, v11, Landroidx/media3/common/AdPlaybackState;->b:I

    if-lez v11, :cond_7

    goto :goto_4

    :cond_7
    move v10, v5

    :goto_4
    or-int/2addr v9, v10

    iget-wide v11, v2, Landroidx/media3/common/Timeline$Period;->d:J

    invoke-virtual {v2, v11, v12}, Landroidx/media3/common/Timeline$Period;->c(J)I

    move-result v11

    if-eq v11, v6, :cond_8

    iget-object v1, v2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    if-eqz v9, :cond_9

    if-eqz v10, :cond_a

    iget-wide v10, v2, Landroidx/media3/common/Timeline$Period;->d:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_a
    :goto_5
    iget-object v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    move-object v0, p1

    move-wide v4, v3

    move-wide/from16 v2, p3

    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/Object;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final v(Landroidx/media3/common/Timeline;)I
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v2

    :goto_1
    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->i:Z

    if-nez v3, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result p1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->i(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    return p1
.end method

.method public final w(Landroidx/media3/common/Timeline;JJJ)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_11

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->i(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v3

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    goto :goto_2

    :cond_0
    move-wide/from16 v8, p2

    invoke-virtual {v0, v1, v3, v8, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v10

    if-eqz v10, :cond_10

    iget-wide v11, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-object v13, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v14, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v6, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    const/16 v18, 0x0

    iget-object v4, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v13, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    cmp-long v4, v6, v11

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v13, v14, v16

    if-eqz v13, :cond_10

    iget-wide v8, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    cmp-long v13, v8, v16

    if-nez v13, :cond_3

    goto/16 :goto_8

    :cond_3
    sub-long v19, v6, v14

    sub-long/2addr v11, v8

    sub-long v11, v11, v19

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v11, 0x4c4b40

    cmp-long v8, v8, v11

    if-gez v8, :cond_10

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v10, v6, v7, v14, v15}, Landroidx/media3/exoplayer/MediaPeriodInfo;->b(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v10

    :goto_2
    iget-wide v6, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    iget-wide v8, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    iget-wide v10, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    invoke-virtual {v3, v8, v9}, Landroidx/media3/exoplayer/MediaPeriodInfo;->a(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    cmp-long v4, v10, v6

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->k()V

    cmp-long v1, v6, v16

    if-nez v1, :cond_5

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_3

    :cond_5
    iget-wide v8, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    add-long/2addr v6, v8

    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v4, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    if-ne v2, v1, :cond_7

    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->h:Z

    if-nez v1, :cond_7

    cmp-long v1, p4, v8

    if-eqz v1, :cond_6

    cmp-long v1, p4, v6

    if-ltz v1, :cond_7

    :cond_6
    move v1, v4

    goto :goto_4

    :cond_7
    move/from16 v1, v18

    :goto_4
    iget-object v12, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v12, :cond_9

    cmp-long v12, p6, v8

    if-eqz v12, :cond_8

    cmp-long v6, p6, v6

    if-ltz v6, :cond_9

    :cond_8
    move v6, v4

    goto :goto_5

    :cond_9
    move/from16 v6, v18

    :goto_5
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    cmp-long v0, v10, v16

    if-nez v0, :cond_b

    iget-wide v10, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    cmp-long v2, v10, v8

    if-nez v2, :cond_b

    iget-wide v2, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    cmp-long v5, v2, v16

    if-eqz v5, :cond_b

    cmp-long v2, v2, v8

    if-eqz v2, :cond_b

    move v2, v4

    goto :goto_6

    :cond_b
    move/from16 v2, v18

    :goto_6
    if-eqz v1, :cond_c

    if-nez v0, :cond_d

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    move/from16 v4, v18

    :cond_d
    :goto_7
    if-eqz v6, :cond_e

    or-int/lit8 v0, v4, 0x2

    return v0

    :cond_e
    return v4

    :cond_f
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object/from16 v21, v3

    move-object v3, v2

    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_10
    :goto_8
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result v0

    return v0

    :cond_11
    const/16 v18, 0x0

    return v18
.end method
