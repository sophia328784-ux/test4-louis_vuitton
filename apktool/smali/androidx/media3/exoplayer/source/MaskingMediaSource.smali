.class public final Landroidx/media3/exoplayer/source/MaskingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;,
        Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;
    }
.end annotation


# instance fields
.field public final l:Z

.field public final m:Landroidx/media3/common/Timeline$Window;

.field public final n:Landroidx/media3/common/Timeline$Period;

.field public o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

.field public p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->l:Z

    new-instance p2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->m:Landroidx/media3/common/Timeline$Window;

    new-instance p2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->p()Landroidx/media3/common/Timeline;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    return-void

    :cond_1
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Landroidx/media3/common/MediaItem;)V

    sget-object p1, Landroidx/media3/common/Timeline$Window;->q:Ljava/lang/Object;

    sget-object v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->h:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    return-void
.end method


# virtual methods
.method public final C(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    iget-object v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->h:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public final D(Landroidx/media3/common/Timeline;)V
    .locals 12

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v4, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->f:Ljava/lang/Object;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    invoke-direct {v3, p1, v4, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz v1, :cond_6

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i:J

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H(J)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v4, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->f:Ljava/lang/Object;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    invoke-direct {v3, p1, v4, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/media3/common/Timeline$Window;->q:Ljava/lang/Object;

    sget-object v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->h:Ljava/lang/Object;

    new-instance v4, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v4, p1, v2, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    :goto_0
    iput-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->m:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v2, v3}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-wide v4, v3, Landroidx/media3/common/Timeline$Window;->l:J

    iget-object v7, v3, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz v6, :cond_3

    iget-wide v8, v6, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->c:J

    iget-object v10, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v11, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v10, v6, v11}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v10, v11, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v10, v8

    iget-object v6, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v2, v3, v8, v9}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-wide v2, v3, Landroidx/media3/common/Timeline$Window;->l:J

    cmp-long v2, v10, v2

    if-eqz v2, :cond_3

    move-wide v5, v10

    goto :goto_1

    :cond_3
    move-wide v5, v4

    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    const/4 v4, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->m:Landroidx/media3/common/Timeline$Window;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v6, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->f:Ljava/lang/Object;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    invoke-direct {v3, p1, v6, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v2, p1, v7, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v2

    :goto_2
    iput-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v4, v5}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H(J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    if-eqz v3, :cond_5

    sget-object v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/BaseMediaSource;->v(Landroidx/media3/common/Timeline;)V

    if-eqz v1, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->h(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_7
    return-void
.end method

.method public final F()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->E()V

    :cond_0
    return-void
.end method

.method public final G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V

    iget-object p2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->e:Landroidx/media3/exoplayer/source/MediaSource;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p2, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    iput-object p2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->e:Landroidx/media3/exoplayer/source/MediaSource;

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object p3, p3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    if-eqz p3, :cond_1

    sget-object p3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->h:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->h(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-object v0

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    if-nez p1, :cond_3

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->E()V

    :cond_3
    return-object v0
.end method

.method public final H(J)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v1, p0, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    cmp-long p0, p1, v1

    if-ltz p0, :cond_1

    const-wide/16 p0, 0x1

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    iput-wide p1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i:J

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object p0

    return-object p0
.end method

.method public final g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->e:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/MediaSource;->g(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    :cond_1
    return-void
.end method

.method public final k(Landroidx/media3/common/MediaItem;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->e:Landroidx/media3/common/Timeline;

    instance-of v2, v1, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    check-cast v1, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/ForwardingTimeline;->e:Landroidx/media3/common/Timeline;

    invoke-direct {v2, v1, p1}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    invoke-direct {v2, v1, p1}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->f:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->g:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    goto :goto_1

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Landroidx/media3/common/MediaItem;)V

    sget-object v2, Landroidx/media3/common/Timeline$Window;->q:Ljava/lang/Object;

    sget-object v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->h:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->k(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final q(Landroidx/media3/common/MediaItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->q(Landroidx/media3/common/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public final w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->w()V

    return-void
.end method
