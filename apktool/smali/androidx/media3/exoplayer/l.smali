.class public final synthetic Landroidx/media3/exoplayer/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic e:Landroidx/media3/exoplayer/analytics/PlayerId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/l;->b:Landroid/content/Context;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/l;->c:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/l;->d:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p4, p0, Landroidx/media3/exoplayer/l;->e:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/l;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m(Landroid/content/Context;)Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MediaMetricsService unavailable."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/l;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/l;->d:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->c0(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->o()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/l;->e:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlayerId;->b(Landroid/media/metrics/LogSessionId;)V

    return-void
.end method
