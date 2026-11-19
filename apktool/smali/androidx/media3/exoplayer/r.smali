.class public final synthetic Landroidx/media3/exoplayer/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/media3/exoplayer/r;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/r;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/r;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/r;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/r;->b:I

    iget-object v1, p0, Landroidx/media3/exoplayer/r;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/r;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/r;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    check-cast v2, Landroid/util/Pair;

    check-cast v1, Ljava/lang/Exception;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->c:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->h:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, v2, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->a0(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    check-cast v2, Landroid/util/Pair;

    check-cast v1, Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->c:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->h:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, v2, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->T(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/MediaPeriodQueue;

    check-cast v2, Lcom/google/common/collect/ImmutableList$Builder;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->c:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->J(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
