.class public abstract Landroidx/media3/exoplayer/BaseRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:Landroidx/media3/exoplayer/FormatHolder;

.field public e:Landroidx/media3/exoplayer/RendererConfiguration;

.field public f:I

.field public g:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public h:Landroidx/media3/common/util/Clock;

.field public i:I

.field public j:Landroidx/media3/exoplayer/source/SampleStream;

.field public k:[Landroidx/media3/common/Format;

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Landroidx/media3/common/Timeline;

.field public r:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public s:Landroidx/media3/exoplayer/RendererCapabilities$Listener;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->b:Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->c:I

    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->d:Landroidx/media3/exoplayer/FormatHolder;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    sget-object p1, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public final A(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;ZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 10

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->e:Landroidx/media3/exoplayer/RendererConfiguration;

    move-object/from16 v7, p10

    iput-object v7, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput v9, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    invoke-virtual {p0, p4, p5}, Landroidx/media3/exoplayer/BaseRenderer;->L(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/BaseRenderer;->r([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-boolean v8, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    iput-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    iput-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    invoke-virtual {p0, p4, v9, v3, v4}, Landroidx/media3/exoplayer/BaseRenderer;->M(ZZJ)V

    return-void
.end method

.method public final B()Landroidx/media3/exoplayer/BaseRenderer;
    .locals 0

    return-object p0
.end method

.method public final C(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->s:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public F()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final G()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Landroidx/media3/exoplayer/source/SampleStream;

    return-object p0
.end method

.method public final H()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    return-wide v0
.end method

.method public I()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final J(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 10

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/RendererCapabilities;->b(Landroidx/media3/common/Format;)I

    move-result v3
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x7

    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Z

    throw v0

    :catch_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Z

    :cond_0
    move v3, v0

    :goto_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->f:I

    iget-object v8, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move v1, v0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez p2, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    const/4 v1, 0x1

    move-object v2, p1

    move-object v6, p2

    move v9, p3

    move v3, p4

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;ILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)V

    return-object v0
.end method

.method public K()V
    .locals 0

    return-void
.end method

.method public L(ZZ)V
    .locals 0

    return-void
.end method

.method public M(ZZJ)V
    .locals 0

    return-void
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method public O()V
    .locals 0

    return-void
.end method

.method public P()V
    .locals 0

    return-void
.end method

.method public Q()V
    .locals 0

    return-void
.end method

.method public R([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public final T(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->c(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    iget-boolean p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    iget-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    return p3

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, Landroidx/media3/common/Format;->t:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object p2

    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/common/Format$Builder;->s:J

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p0, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    :cond_3
    return p3
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->d:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    iput v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Landroidx/media3/exoplayer/source/SampleStream;

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->k:[Landroidx/media3/common/Format;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->K()V

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public e()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->j()Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->c:I

    return p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    return p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->s:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->f:I

    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->h:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    return-void
.end method

.method public q(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final r([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Landroidx/media3/exoplayer/source/SampleStream;

    iput-object p7, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->k:[Landroidx/media3/common/Format;

    iput-wide p5, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/BaseRenderer;->R([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public final release()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->N()V

    return-void
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->d:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->O()V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->a()V

    return-void
.end method

.method public final start()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->P()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->Q()V

    return-void
.end method

.method public final u()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    return p0
.end method

.method public final y(Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:Landroidx/media3/common/Timeline;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->S()V

    :cond_0
    return-void
.end method

.method public final z(JZ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:J

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:J

    sub-long v1, p1, v1

    invoke-interface {p3, v1, v2}, Landroidx/media3/exoplayer/source/SampleStream;->b(J)I

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p3, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->M(ZZJ)V

    return-void
.end method
