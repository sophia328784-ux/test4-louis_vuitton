.class public final Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.implements Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;,
        Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

.field public final d:Landroid/media/metrics/PlaybackSession;

.field public final e:J

.field public final f:Landroidx/media3/common/Timeline$Window;

.field public final g:Landroidx/media3/common/Timeline$Period;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashMap;

.field public j:Ljava/lang/String;

.field public k:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroidx/media3/common/PlaybackException;

.field public p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field public q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field public r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field public s:Landroidx/media3/common/Format;

.field public t:Landroidx/media3/common/Format;

.field public u:Landroidx/media3/common/Format;

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Landroidx/media3/common/util/BackgroundExecutor;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f:Landroidx/media3/common/Timeline$Window;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->g:Landroidx/media3/common/Timeline$Period;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n:I

    new-instance p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iput-object p0, p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/NetworkEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    return-void
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public static synthetic k(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
    .locals 2

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    iget v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    iget p1, p1, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    return-void
.end method

.method public final b(Landroidx/media3/common/VideoSize;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    iget v2, v1, Landroidx/media3/common/Format;->w:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p1, Landroidx/media3/common/VideoSize;->a:I

    iput v2, v1, Landroidx/media3/common/Format$Builder;->u:I

    iget p1, p1, Landroidx/media3/common/VideoSize;->b:I

    iput p1, v1, Landroidx/media3/common/Format$Builder;->v:I

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->b:I

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Landroidx/media3/common/Format;ILjava/lang/String;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    :cond_0
    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    iget p1, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->a:I

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->w:I

    return-void
.end method

.method public final d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v2, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->c:Landroidx/media3/common/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->d:I

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-virtual {v4, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Landroidx/media3/common/Format;ILjava/lang/String;)V

    iget p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->b:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    return-void

    :cond_2
    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    return-void

    :cond_3
    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    return-void
.end method

.method public final e(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    iget-object v1, v6, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a:Landroidx/media3/common/FlagSet;

    iget-object v1, v1, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_34

    :cond_0
    const/4 v7, 0x0

    move v1, v7

    :goto_0
    iget-object v2, v6, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a:Landroidx/media3/common/FlagSet;

    iget-object v2, v2, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/16 v8, 0xb

    const/4 v9, 0x1

    if-ge v1, v2, :cond_c

    iget-object v2, v6, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v2, v1}, Landroidx/media3/common/FlagSet;->b(I)I

    move-result v2

    iget-object v3, v6, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    if-nez v2, :cond_5

    monitor-enter v4

    :try_start_0
    iget-object v2, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->f:Landroidx/media3/common/Timeline;

    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    iput-object v5, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->f:Landroidx/media3/common/Timeline;

    iget-object v5, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    iget-object v9, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->f:Landroidx/media3/common/Timeline;

    invoke-virtual {v8, v2, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->b(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    iget-object v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    iget-object v10, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4, v8}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->a(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_3
    iget-boolean v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->e:Z

    if-eqz v9, :cond_1

    iget-object v9, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v8, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_8

    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    if-ne v2, v8, :cond_b

    iget v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->l:I

    monitor-enter v4

    :try_start_2
    iget-object v5, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move v9, v7

    :goto_4
    iget-object v2, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v8, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    iget-object v10, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->g:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->a(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    iget-boolean v10, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->e:Z

    if-eqz v10, :cond_7

    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    iget-boolean v8, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->f:Z

    :cond_9
    iget-object v8, v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v5, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    invoke-virtual {v8, v3, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    goto :goto_8

    :goto_7
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_b
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v6, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v4, :cond_d

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_d
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_15

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->n()Landroidx/media3/common/Tracks;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList;->v(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Tracks$Group;

    move v13, v7

    :goto_9
    iget v14, v5, Landroidx/media3/common/Tracks$Group;->a:I

    if-ge v13, v14, :cond_e

    iget-object v14, v5, Landroidx/media3/common/Tracks$Group;->e:[Z

    aget-boolean v14, v14, v13

    if-eqz v14, :cond_f

    iget-object v14, v5, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    iget-object v14, v14, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    if-eqz v14, :cond_f

    goto :goto_a

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_10
    const/4 v14, 0x0

    :goto_a
    if-eqz v14, :cond_15

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    move v5, v7

    :goto_b
    iget v13, v14, Landroidx/media3/common/DrmInitData;->e:I

    if-ge v5, v13, :cond_14

    iget-object v13, v14, Landroidx/media3/common/DrmInitData;->b:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v13, v13, v5

    iget-object v13, v13, Landroidx/media3/common/DrmInitData$SchemeData;->c:Ljava/util/UUID;

    sget-object v15, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v5, 0x3

    goto :goto_c

    :cond_11
    sget-object v15, Landroidx/media3/common/C;->f:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    move v5, v10

    goto :goto_c

    :cond_12
    sget-object v15, Landroidx/media3/common/C;->d:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/4 v5, 0x6

    goto :goto_c

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_14
    move v5, v9

    :goto_c
    invoke-virtual {v1, v5}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_15
    const/16 v1, 0x3f3

    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    add-int/2addr v1, v9

    iput v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    :cond_16
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->o:Landroidx/media3/common/PlaybackException;

    const/4 v14, 0x5

    const/4 v4, 0x4

    if-nez v1, :cond_17

    move/from16 v16, v4

    move v15, v9

    move v5, v10

    const/16 v9, 0xd

    const/16 v10, 0x8

    const/16 v13, 0x9

    const/16 v17, 0x7

    const/16 v18, 0x6

    goto/16 :goto_1d

    :cond_17
    iget v13, v1, Landroidx/media3/common/PlaybackException;->b:I

    iget-object v10, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a:Landroid/content/Context;

    iget v15, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->w:I

    if-ne v15, v4, :cond_18

    move v15, v9

    goto :goto_d

    :cond_18
    move v15, v7

    :goto_d
    const/16 v4, 0x3e9

    if-ne v13, v4, :cond_19

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v10, 0x14

    invoke-direct {v4, v10, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    :goto_e
    const/16 v9, 0xd

    const/16 v13, 0x9

    :goto_f
    const/16 v16, 0x4

    const/16 v17, 0x7

    const/16 v18, 0x6

    goto/16 :goto_1c

    :cond_19
    instance-of v4, v1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v4, :cond_1b

    move-object v4, v1

    check-cast v4, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget v5, v4, Landroidx/media3/exoplayer/ExoPlaybackException;->k:I

    if-ne v5, v9, :cond_1a

    move v5, v9

    goto :goto_10

    :cond_1a
    move v5, v7

    :goto_10
    iget v4, v4, Landroidx/media3/exoplayer/ExoPlaybackException;->o:I

    goto :goto_11

    :cond_1b
    move v4, v7

    move v5, v4

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v11, Ljava/io/IOException;

    const/16 v19, 0x19

    const/16 v20, 0x1a

    const/16 v8, 0x1b

    const/16 v9, 0x17

    if-eqz v12, :cond_30

    instance-of v4, v11, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v4, :cond_1c

    check-cast v11, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v4, v11, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->d:I

    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v5, v14, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    :goto_12
    move-object v4, v5

    goto :goto_e

    :cond_1c
    instance-of v4, v11, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    if-nez v4, :cond_1d

    instance-of v4, v11, Landroidx/media3/common/ParserException;

    if-eqz v4, :cond_1e

    :cond_1d
    const/4 v5, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/16 v13, 0x9

    goto/16 :goto_18

    :cond_1e
    instance-of v4, v11, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez v4, :cond_1f

    instance-of v5, v11, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    if-eqz v5, :cond_20

    :cond_1f
    const/16 v13, 0x9

    goto/16 :goto_15

    :cond_20
    const/16 v4, 0x3ea

    if-ne v13, v4, :cond_21

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x15

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_e

    :cond_21
    instance-of v4, v11, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    if-eqz v4, :cond_28

    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v5, :cond_22

    check-cast v4, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v4}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->z(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->y(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_13

    :pswitch_0
    move/from16 v8, v20

    goto :goto_13

    :pswitch_1
    move/from16 v8, v19

    goto :goto_13

    :pswitch_2
    const/16 v8, 0x1c

    goto :goto_13

    :pswitch_3
    const/16 v8, 0x18

    :goto_13
    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v5, v8, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_12

    :cond_22
    instance-of v5, v4, Landroid/media/MediaDrmResetException;

    if-eqz v5, :cond_23

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v8, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_23
    instance-of v5, v4, Landroid/media/NotProvisionedException;

    if-eqz v5, :cond_24

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v10, 0x18

    invoke-direct {v4, v10, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_24
    instance-of v5, v4, Landroid/media/DeniedByServerException;

    if-eqz v5, :cond_25

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1d

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_25
    instance-of v5, v4, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v5, :cond_26

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v9, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_26
    instance-of v4, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v4, :cond_27

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v12, 0x1c

    invoke-direct {v4, v12, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_27
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_28
    instance-of v4, v11, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    if-eqz v4, :cond_2a

    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_2a

    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v5, v4, Landroid/system/ErrnoException;

    if-eqz v5, :cond_29

    check-cast v4, Landroid/system/ErrnoException;

    iget v4, v4, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EACCES:I

    if-ne v4, v5, :cond_29

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x20

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_29
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1f

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto/16 :goto_e

    :cond_2a
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v13, 0x9

    invoke-direct {v4, v13, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    :goto_14
    const/16 v9, 0xd

    goto/16 :goto_f

    :goto_15
    invoke-static {v10}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/util/NetworkTypeObserver;->b()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2b

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_14

    :cond_2b
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v8, v5, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_2c

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v8, 0x6

    invoke-direct {v4, v8, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    move/from16 v18, v8

    const/16 v9, 0xd

    const/16 v16, 0x4

    const/16 v17, 0x7

    goto/16 :goto_1c

    :cond_2c
    const/4 v8, 0x6

    instance-of v5, v5, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_2d

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    move/from16 v17, v5

    move/from16 v18, v8

    const/16 v9, 0xd

    const/16 v16, 0x4

    goto/16 :goto_1c

    :cond_2d
    const/4 v5, 0x7

    if-eqz v4, :cond_2e

    check-cast v11, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget v4, v11, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->c:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2e

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v9, 0x4

    invoke-direct {v4, v9, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    :goto_16
    move/from16 v17, v5

    move/from16 v18, v8

    move/from16 v16, v9

    :goto_17
    const/16 v9, 0xd

    goto/16 :goto_1c

    :cond_2e
    const/4 v9, 0x4

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v10, 0x8

    invoke-direct {v4, v10, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_16

    :goto_18
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    if-eqz v15, :cond_2f

    const/16 v10, 0xa

    goto :goto_19

    :cond_2f
    const/16 v10, 0xb

    :goto_19
    invoke-direct {v4, v10, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_16

    :cond_30
    const/16 v10, 0x18

    const/16 v12, 0x1c

    const/16 v13, 0x9

    const/16 v16, 0x4

    const/16 v17, 0x7

    const/16 v18, 0x6

    if-eqz v5, :cond_32

    if-eqz v4, :cond_31

    const/4 v15, 0x1

    if-ne v4, v15, :cond_32

    :cond_31
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x23

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_17

    :cond_32
    if-eqz v5, :cond_33

    const/4 v15, 0x3

    if-ne v4, v15, :cond_33

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_17

    :cond_33
    if-eqz v5, :cond_34

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v9, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_17

    :cond_34
    instance-of v4, v11, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v4, :cond_35

    check-cast v11, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v4, v11, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->e:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->z(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v9, 0xd

    invoke-direct {v5, v9, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    :goto_1a
    move-object v4, v5

    goto/16 :goto_1c

    :cond_35
    const/16 v9, 0xd

    instance-of v4, v11, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    const/16 v5, 0xe

    if-eqz v4, :cond_36

    check-cast v11, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    iget v4, v11, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->b:I

    new-instance v8, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v8, v5, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    move-object v4, v8

    goto :goto_1c

    :cond_36
    instance-of v4, v11, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_37

    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_1c

    :cond_37
    instance-of v4, v11, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    if-eqz v4, :cond_38

    check-cast v11, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v4, v11, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->b:I

    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v8, 0x11

    invoke-direct {v5, v8, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_1a

    :cond_38
    instance-of v4, v11, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    if-eqz v4, :cond_39

    check-cast v11, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget v4, v11, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->b:I

    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v8, 0x12

    invoke-direct {v5, v8, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_1a

    :cond_39
    instance-of v4, v11, Landroid/media/MediaCodec$CryptoException;

    if-eqz v4, :cond_3a

    check-cast v11, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v11}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->y(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_1b

    :pswitch_4
    move/from16 v8, v20

    goto :goto_1b

    :pswitch_5
    move/from16 v8, v19

    goto :goto_1b

    :pswitch_6
    move v8, v12

    goto :goto_1b

    :pswitch_7
    move v8, v10

    :goto_1b
    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v5, v8, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    goto :goto_1a

    :cond_3a
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x16

    invoke-direct {v4, v5, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    :goto_1c
    new-instance v5, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v10, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    sub-long v10, v2, v10

    invoke-virtual {v5, v10, v11}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    iget v8, v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->a:I

    invoke-virtual {v5, v8}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    iget v4, v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->b:I

    invoke-virtual {v5, v4}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v1

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Laa0;

    const/16 v10, 0x8

    invoke-direct {v5, v0, v1, v10}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v15, 0x1

    iput-boolean v15, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->o:Landroidx/media3/common/PlaybackException;

    const/4 v5, 0x2

    :goto_1d
    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->n()Landroidx/media3/common/Tracks;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/media3/common/Tracks;->a(I)Z

    move-result v4

    invoke-virtual {v1, v15}, Landroidx/media3/common/Tracks;->a(I)Z

    move-result v8

    const/4 v15, 0x3

    invoke-virtual {v1, v15}, Landroidx/media3/common/Tracks;->a(I)Z

    move-result v11

    if-nez v4, :cond_3c

    if-nez v8, :cond_3c

    if-eqz v11, :cond_3b

    goto :goto_1e

    :cond_3b
    move/from16 v15, v16

    move/from16 v12, v17

    const/4 v8, 0x0

    goto/16 :goto_25

    :cond_3c
    :goto_1e
    if-nez v4, :cond_3f

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    move/from16 v15, v16

    move/from16 v12, v17

    goto :goto_20

    :cond_3d
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    if-nez v1, :cond_3e

    const/4 v5, 0x1

    goto :goto_1f

    :cond_3e
    move v5, v7

    :goto_1f
    iput-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    move/from16 v15, v16

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t(IJLandroidx/media3/common/Format;I)V

    goto :goto_20

    :cond_3f
    move/from16 v15, v16

    move/from16 v12, v17

    const/4 v4, 0x0

    :goto_20
    if-nez v8, :cond_42

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_22

    :cond_40
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    if-nez v1, :cond_41

    const/4 v5, 0x1

    goto :goto_21

    :cond_41
    move v5, v7

    :goto_21
    iput-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t(IJLandroidx/media3/common/Format;I)V

    :cond_42
    :goto_22
    if-nez v11, :cond_45

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_24

    :cond_43
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    if-nez v1, :cond_44

    const/4 v5, 0x1

    goto :goto_23

    :cond_44
    move v5, v7

    :goto_23
    iput-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t(IJLandroidx/media3/common/Format;I)V

    :cond_45
    :goto_24
    move-object v8, v4

    :goto_25
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->l(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    iget v5, v4, Landroidx/media3/common/Format;->w:I

    const/4 v11, -0x1

    if-eq v5, v11, :cond_48

    iget v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->b:I

    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    goto :goto_27

    :cond_46
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    if-nez v5, :cond_47

    if-nez v1, :cond_47

    const/4 v5, 0x1

    goto :goto_26

    :cond_47
    move v5, v1

    :goto_26
    iput-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t(IJLandroidx/media3/common/Format;I)V

    :goto_27
    iput-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    :cond_48
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->l(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->b:I

    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_29

    :cond_49
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    if-nez v5, :cond_4a

    if-nez v1, :cond_4a

    const/4 v5, 0x1

    goto :goto_28

    :cond_4a
    move v5, v1

    :goto_28
    iput-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t(IJLandroidx/media3/common/Format;I)V

    :goto_29
    iput-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    :cond_4b
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->l(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->b:I

    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_2b

    :cond_4c
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    if-nez v5, :cond_4d

    if-nez v1, :cond_4d

    const/4 v5, 0x1

    goto :goto_2a

    :cond_4d
    move v5, v1

    :goto_2a
    iput-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t(IJLandroidx/media3/common/Format;I)V

    :goto_2b
    iput-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    :cond_4e
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a:Landroid/content/Context;

    invoke-static {v1}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/util/NetworkTypeObserver;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :pswitch_8
    const/4 v10, 0x1

    goto :goto_2c

    :pswitch_9
    move v10, v12

    goto :goto_2c

    :pswitch_a
    const/4 v10, 0x3

    goto :goto_2c

    :pswitch_b
    move/from16 v10, v18

    goto :goto_2c

    :pswitch_c
    move v10, v14

    goto :goto_2c

    :pswitch_d
    move v10, v15

    goto :goto_2c

    :pswitch_e
    const/4 v10, 0x2

    goto :goto_2c

    :pswitch_f
    move v10, v13

    goto :goto_2c

    :pswitch_10
    move v10, v7

    :goto_2c
    :pswitch_11
    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n:I

    if-eq v10, v1, :cond_4f

    iput v10, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n:I

    new-instance v1, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v1}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    invoke-virtual {v1, v10}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    iget-wide v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v1

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Laa0;

    invoke-direct {v5, v0, v1, v12}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4f
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->h()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_50

    iput-boolean v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->v:Z

    :cond_50
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/PlaybackException;

    move-result-object v1

    if-nez v1, :cond_51

    iput-boolean v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->x:Z

    goto :goto_2d

    :cond_51
    const/16 v1, 0xa

    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v8, 0x1

    iput-boolean v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->x:Z

    :cond_52
    :goto_2d
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->h()I

    move-result v1

    iget-boolean v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->v:Z

    if-eqz v4, :cond_53

    move v8, v14

    :goto_2e
    const/4 v15, 0x1

    goto :goto_30

    :cond_53
    iget-boolean v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->x:Z

    if-eqz v4, :cond_54

    move v8, v9

    goto :goto_2e

    :cond_54
    if-ne v1, v15, :cond_55

    const/16 v8, 0xb

    goto :goto_2e

    :cond_55
    const/16 v8, 0xc

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5a

    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    if-eqz v1, :cond_59

    if-eq v1, v5, :cond_59

    if-ne v1, v8, :cond_56

    goto :goto_2f

    :cond_56
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->r()Z

    move-result v1

    if-nez v1, :cond_57

    move v8, v12

    goto :goto_2e

    :cond_57
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->Z()I

    move-result v1

    if-eqz v1, :cond_58

    const/16 v8, 0xa

    goto :goto_2e

    :cond_58
    move/from16 v8, v18

    goto :goto_2e

    :cond_59
    :goto_2f
    move v8, v5

    goto :goto_2e

    :cond_5a
    const/4 v5, 0x3

    if-ne v1, v5, :cond_5c

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->r()Z

    move-result v1

    if-nez v1, :cond_5b

    move v8, v15

    goto :goto_2e

    :cond_5b
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->Z()I

    move-result v1

    if-eqz v1, :cond_59

    move v8, v13

    goto :goto_2e

    :cond_5c
    const/4 v15, 0x1

    if-ne v1, v15, :cond_5d

    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    if-eqz v1, :cond_5d

    goto :goto_30

    :cond_5d
    iget v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    :goto_30
    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    if-eq v1, v8, :cond_5e

    iput v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    iput-boolean v15, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    new-instance v1, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    invoke-virtual {v1, v4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    iget-wide v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Laa0;

    const/16 v4, 0xa

    invoke-direct {v3, v0, v1, v4}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5e
    const/16 v1, 0x404

    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object v0, v6, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v2

    :try_start_4
    iget-object v1, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->g:Ljava/lang/String;

    if-eqz v1, :cond_5f

    iget-object v3, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->a(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    goto :goto_31

    :catchall_2
    move-exception v0

    goto :goto_33

    :cond_5f
    :goto_31
    iget-object v1, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_60
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-boolean v4, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->e:Z

    if-eqz v4, :cond_60

    iget-object v4, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    if-eqz v4, :cond_60

    iget-object v3, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_32

    :cond_61
    monitor-exit v2

    return-void

    :goto_33
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_62
    :goto_34
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_11
        :pswitch_9
    .end packed-switch
.end method

.method public final f(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 7

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    add-long/2addr v5, p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    int-to-long p2, p2

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->c:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    new-instance v2, Laa0;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v0, v3}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    return-void
.end method

.method public final o()Landroid/media/metrics/LogSessionId;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    return-object p0
.end method

.method public final p(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->g:Landroidx/media3/common/Timeline$Period;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget p2, v1, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v1}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-object p1, v1, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Landroidx/media3/common/util/Util;->H(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, p2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-wide v4, v1, Landroidx/media3/common/Timeline$Window;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_6

    iget-boolean p1, v1, Landroidx/media3/common/Timeline$Window;->k:Z

    if-nez p1, :cond_6

    iget-boolean p1, v1, Landroidx/media3/common/Timeline$Window;->i:Z

    if-nez p1, :cond_6

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result p1

    if-nez p1, :cond_6

    iget-wide v4, v1, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move p2, v3

    :goto_2
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    return-void
.end method

.method public final q(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n()V

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v1, "AndroidXMedia3"

    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v1, "1.10.1"

    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public final r(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n()V

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final s(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->o:Landroidx/media3/common/PlaybackException;

    return-void
.end method

.method public final t(IJLandroidx/media3/common/Format;I)V
    .locals 3

    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_d

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_1

    const/4 v1, 0x3

    if-eq p5, v0, :cond_2

    if-eq p5, v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p4, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    if-eqz p5, :cond_3

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget-object p5, p4, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    if-eqz p5, :cond_4

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget-object p5, p4, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    if-eqz p5, :cond_5

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    iget p5, p4, Landroidx/media3/common/Format;->j:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_6

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget p5, p4, Landroidx/media3/common/Format;->v:I

    if-eq p5, v1, :cond_7

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget p5, p4, Landroidx/media3/common/Format;->w:I

    if-eq p5, v1, :cond_8

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8
    iget p5, p4, Landroidx/media3/common/Format;->G:I

    if-eq p5, v1, :cond_9

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_9
    iget p5, p4, Landroidx/media3/common/Format;->H:I

    if-eq p5, v1, :cond_a

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_a
    iget-object p5, p4, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    if-eqz p5, :cond_c

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_b

    aget-object p5, p5, p3

    goto :goto_1

    :cond_b
    const/4 p5, 0x0

    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_c

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_c
    iget p2, p4, Landroidx/media3/common/Format;->z:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_e

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    :cond_d
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_e
    :goto_2
    iput-boolean p3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    new-instance p2, Laa0;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p1, p3}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->v:Z

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->l:I

    return-void
.end method
