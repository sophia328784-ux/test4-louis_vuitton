.class public final Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;
    }
.end annotation


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final c:J

.field public final d:Landroidx/media3/exoplayer/upstream/Allocator;

.field public e:Landroidx/media3/exoplayer/source/MediaSource;

.field public f:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public g:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public h:Z

.field public i:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->d:Landroidx/media3/exoplayer/upstream/Allocator;

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->c:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->d(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e(J)J
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->e(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->c:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    move-wide p5, v0

    :cond_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i:J

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/source/MediaPeriod;->f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final g()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->c:J

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->e:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->d:Landroidx/media3/exoplayer/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media3/exoplayer/source/MediaSource;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->g:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    if-eqz v2, :cond_1

    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_1
    return-void
.end method

.method public final i(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->i(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method

.method public final j(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->g:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->j(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public final k()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->k()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->e:Landroidx/media3/exoplayer/source/MediaSource;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->g:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->g:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p1, :cond_1

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->c:J

    :goto_0
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_1
    return-void
.end method

.method public final p()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->p()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public final s()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u(JZ)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->u(JZ)V

    return-void
.end method

.method public final v(J)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->v(J)V

    return-void
.end method
