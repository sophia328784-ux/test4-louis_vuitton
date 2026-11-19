.class public final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/VideoGraph$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;
    }
.end annotation


# static fields
.field public static final w:Ll8;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/common/VideoGraph$Factory;

.field public final c:Landroid/util/SparseArray;

.field public final d:Z

.field public final e:Landroidx/media3/exoplayer/video/VideoSink;

.field public final f:Landroidx/media3/common/util/Clock;

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final h:J

.field public final i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public j:Landroidx/media3/common/util/TimedValueQueue;

.field public final k:Landroidx/media3/common/Format;

.field public final l:Landroidx/media3/common/VideoCompositorSettings;

.field public m:Landroidx/media3/common/util/HandlerWrapper;

.field public n:Landroidx/media3/common/VideoGraph;

.field public o:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field public p:Landroid/util/Pair;

.field public q:I

.field public r:I

.field public s:J

.field public t:Z

.field public u:I

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll8;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ll8;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->w:Ll8;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a:Landroid/content/Context;

    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->c:Landroidx/media3/common/VideoGraph$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b:Landroidx/media3/common/VideoGraph$Factory;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->c:Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    sget-object v0, Landroidx/media3/common/VideoCompositorSettings;->a:Landroidx/media3/common/VideoCompositorSettings;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->l:Landroidx/media3/common/VideoCompositorSettings;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->d:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    iget-object v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->e:Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->f:Landroidx/media3/common/util/Clock;

    iget-wide v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    neg-long v1, v1

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->h:J

    iget-object v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->h:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    iput-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    new-instance v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-direct {v2, p1, v1, v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;Landroidx/media3/common/util/Clock;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->k:Landroidx/media3/common/Format;

    iput-wide v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->s:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->u:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->r:I

    return-void
.end method

.method public static a(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    iget v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:I

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->x(Z)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    if-le v0, v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;->a:J

    iget v7, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;->b:I

    iget-object v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->k:Landroidx/media3/common/Format;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->k(Landroidx/media3/common/Format;JILjava/util/List;)V

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->s:J

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->t:Z

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:Landroidx/media3/common/util/HandlerWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhn0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/Surface;II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:Landroidx/media3/common/VideoGraph;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_1

    new-instance v1, Landroidx/media3/common/SurfaceInfo;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media3/common/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    invoke-interface {v0}, Landroidx/media3/common/VideoGraph;->q()V

    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p2, p3}, Landroidx/media3/common/util/Size;-><init>(II)V

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->r(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void

    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/VideoGraph;->q()V

    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->w()V

    return-void
.end method
