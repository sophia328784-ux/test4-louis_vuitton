.class public final synthetic Landroidx/media3/exoplayer/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/exoplayer/u;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/u;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/u;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Landroidx/media3/exoplayer/u;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/u;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/u;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->c:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->e:I

    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->K:I

    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    :cond_0
    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    const/4 v4, -0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0:I

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0:J

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->m:[Landroidx/media3/common/Timeline;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->q(Z)V

    move v6, v5

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/Timeline;

    iput-object v8, v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->c:Landroidx/media3/common/Timeline;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8, v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    iget-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v11, v11, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    move v9, v3

    goto :goto_3

    :cond_5
    move v9, v5

    :goto_3
    if-nez v2, :cond_6

    if-eqz v8, :cond_7

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    move v3, v5

    :cond_7
    :goto_4
    if-eqz v3, :cond_a

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v()I

    move-result v4

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v7, v2, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    iget-object v2, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v2, v6}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v9, v6, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v7, v9

    move-wide v6, v7

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v0, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    :cond_a
    :goto_6
    move v8, v4

    move v4, v3

    goto :goto_7

    :cond_b
    move v8, v4

    move v4, v5

    :goto_7
    iput-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->K:I

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    :cond_c
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/u;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/u;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->c:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList;->h:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->Z(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/u;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/u;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->c:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList;->h:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->v0(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/u;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/u;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->c:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList;->h:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->l0(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
