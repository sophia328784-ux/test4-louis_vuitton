.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    }
.end annotation


# instance fields
.field public final l:J

.field public final m:J

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Ljava/util/ArrayList;

.field public final s:Landroidx/media3/common/Timeline$Window;

.field public t:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

.field public u:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public v:J

.field public w:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;)V
    .locals 2

    .line 59
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 60
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 61
    iget-wide v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->b:J

    .line 62
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->l:J

    .line 63
    iget-wide v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->c:J

    .line 64
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->m:J

    .line 65
    iget-boolean v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->d:Z

    .line 66
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:Z

    .line 67
    iget-boolean v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->e:Z

    .line 68
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->o:Z

    .line 69
    iget-boolean v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->f:Z

    .line 70
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    .line 71
    iget-boolean p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->g:Z

    .line 72
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->q:Z

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Ljava/util/ArrayList;

    .line 74
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Landroidx/media3/common/Timeline$Window;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 54
    iget-boolean p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    .line 55
    iput-wide p2, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->c:J

    .line 56
    iget-boolean p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    .line 57
    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->f:Z

    .line 58
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 49
    invoke-virtual {v0, p2, p3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->a(J)V

    .line 50
    iget-boolean p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    .line 51
    iput-wide p4, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->c:J

    .line 52
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-virtual {v0, p2, p3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->a(J)V

    iget-boolean p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-wide p4, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->c:J

    iget-boolean p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean p6, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->d:Z

    iget-boolean p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean p7, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->e:Z

    iget-boolean p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean p8, v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->f:Z

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;)V

    return-void
.end method


# virtual methods
.method public final D(Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->G(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final G(Landroidx/media3/common/Timeline;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Landroidx/media3/common/Timeline$Window;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-wide v5, v0, Landroidx/media3/common/Timeline$Window;->p:J

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->m:J

    const-wide/high16 v9, -0x8000000000000000L

    iget-object v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->o:Z

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v12, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:J

    sub-long/2addr v12, v5

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    sub-long v9, v7, v5

    :goto_0
    move-wide v7, v9

    :goto_1
    move-wide v5, v12

    goto :goto_6

    :cond_2
    :goto_2
    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->l:J

    if-eqz v3, :cond_3

    iget-wide v14, v0, Landroidx/media3/common/Timeline$Window;->l:J

    add-long/2addr v12, v14

    add-long/2addr v14, v7

    goto :goto_3

    :cond_3
    move-wide v14, v7

    :goto_3
    add-long v2, v5, v12

    iput-wide v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    add-long v9, v5, v14

    :goto_4
    iput-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_5

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    invoke-virtual {v3, v5, v6, v7, v8}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->r(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    move-wide v7, v14

    goto :goto_1

    :goto_6
    :try_start_0
    new-instance v3, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-boolean v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->q:Z

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;-><init>(Landroidx/media3/common/Timeline;JJZ)V

    iput-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/BaseMediaSource;->v(Landroidx/media3/common/Timeline;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v3, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->j:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 8

    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MediaSource;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    const/4 v7, 0x0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:Z

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJZ)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource;->g(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ForwardingTimeline;->e:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->G(Landroidx/media3/common/Timeline;)V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->n()V

    return-void

    :cond_0
    throw v0
.end method

.method public final q(Landroidx/media3/common/MediaItem;)Z
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->q(Landroidx/media3/common/MediaItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->w()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    return-void
.end method
