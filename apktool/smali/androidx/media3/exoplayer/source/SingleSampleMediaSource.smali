.class public final Landroidx/media3/exoplayer/source/SingleSampleMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final h:Landroidx/media3/datasource/DataSpec;

.field public final i:Landroidx/media3/datasource/DataSource$Factory;

.field public final j:Landroidx/media3/common/Format;

.field public final k:J

.field public final l:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final m:Z

.field public final n:Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

.field public final o:Landroidx/media3/common/MediaItem;

.field public p:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Z)V
    .locals 8

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->i:Landroidx/media3/datasource/DataSource$Factory;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->k:J

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->l:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->m:Z

    new-instance p2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    sget-object p3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p3, p2, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    iget-object p3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    iput-object p3, p2, Landroidx/media3/common/MediaItem$Builder;->h:Lcom/google/common/collect/ImmutableList;

    const/4 p3, 0x0

    iput-object p3, p2, Landroidx/media3/common/MediaItem$Builder;->j:Ljava/lang/Object;

    invoke-virtual {p2}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object v7

    iput-object v7, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->o:Landroidx/media3/common/MediaItem;

    new-instance p2, Landroidx/media3/common/Format$Builder;

    invoke-direct {p2}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object p4, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->b:Ljava/lang/String;

    const-string v0, "text/x-unknown"

    invoke-static {p4, v0}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget-object p4, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->c:Ljava/lang/String;

    iput-object p4, p2, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget p4, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->d:I

    iput p4, p2, Landroidx/media3/common/Format$Builder;->e:I

    iget p4, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->e:I

    iput p4, p2, Landroidx/media3/common/Format$Builder;->f:I

    iget-object p4, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->f:Ljava/lang/String;

    iput-object p4, p2, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    iget-object p4, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->g:Ljava/lang/String;

    if-eqz p4, :cond_0

    move-object p3, p4

    :cond_0
    iput-object p3, p2, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    new-instance p3, Landroidx/media3/common/Format;

    invoke-direct {p3, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->j:Landroidx/media3/common/Format;

    new-instance p2, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {p2}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object p1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->a:Landroid/net/Uri;

    iput-object p1, p2, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    const/4 p1, 0x1

    iput p1, p2, Landroidx/media3/datasource/DataSpec$Builder;->i:I

    invoke-virtual {p2}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->h:Landroidx/media3/datasource/DataSpec;

    new-instance v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->n:Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 11

    new-instance v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->p:Landroidx/media3/datasource/TransferListener;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->r(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->m:Z

    const/4 v10, 0x0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->h:Landroidx/media3/datasource/DataSpec;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->i:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->j:Landroidx/media3/common/Format;

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->k:J

    iget-object v7, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->l:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;-><init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/common/Format;JLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ZLandroidx/media3/exoplayer/util/ReleasableExecutor;)V

    return-object v0
.end method

.method public final d()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->o:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-object p0, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->j:Landroidx/media3/exoplayer/upstream/Loader;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/Loader;->d(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final u(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->p:Landroidx/media3/datasource/TransferListener;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->n:Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->v(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final w()V
    .locals 0

    return-void
.end method
