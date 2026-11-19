.class public final Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/LivePlaybackSpeedControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:F

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:F

.field public k:F

.field public l:F

.field public m:J

.field public n:J

.field public o:J


# direct methods
.method public constructor <init>(JJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->a:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->b:J

    iput p5, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->c:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->d:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->e:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->g:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->k:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->j:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->f:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 3

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->a:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->d:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->b:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->g:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->c:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    iget v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->d:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3f7851ec    # 0.97f

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->k:F

    iget p1, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->e:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x3f83d70a    # 1.03f

    :goto_1
    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->d:J

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->f()V

    return-void
.end method

.method public final b(JJ)F
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    return v2

    :cond_0
    sub-long v5, p1, p3

    iget-wide v7, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_1

    iput-wide v5, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    goto :goto_0

    :cond_1
    long-to-float v1, v7

    iget v7, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->c:F

    mul-float/2addr v1, v7

    sub-float v8, v2, v7

    long-to-float v9, v5

    mul-float/2addr v9, v8

    add-float/2addr v9, v1

    float-to-long v9, v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-wide v9, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    long-to-float v1, v9

    mul-float/2addr v7, v1

    long-to-float v1, v5

    mul-float/2addr v8, v1

    add-float/2addr v8, v7

    float-to-long v5, v8

    iput-wide v5, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    :goto_0
    iget-wide v5, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    cmp-long v1, v5, v3

    const-wide/16 v5, 0x3e8

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-gez v1, :cond_2

    iget v0, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    return v0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    iget-wide v7, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    const-wide/16 v9, 0x3

    iget-wide v11, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    mul-long/2addr v11, v9

    add-long v17, v11, v7

    iget-wide v7, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    cmp-long v1, v7, v17

    const v7, 0x33d6bf95    # 1.0E-7f

    if-lez v1, :cond_5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v3

    iget v1, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    sub-float/2addr v1, v2

    long-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-long v4, v1

    iget v1, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->j:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-long v8, v1

    add-long/2addr v4, v8

    iget-wide v8, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->f:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    sub-long/2addr v10, v4

    const/4 v1, 0x3

    new-array v3, v1, [J

    const/4 v4, 0x0

    aput-wide v17, v3, v4

    const/4 v5, 0x1

    aput-wide v8, v3, v5

    const/4 v6, 0x2

    aput-wide v10, v3, v6

    aget-wide v8, v3, v4

    :goto_1
    if-ge v5, v1, :cond_4

    aget-wide v10, v3, v5

    cmp-long v4, v10, v8

    if-lez v4, :cond_3

    move-wide v8, v10

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput-wide v8, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    goto :goto_2

    :cond_5
    iget v1, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    sub-float/2addr v1, v2

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v7

    float-to-long v5, v1

    sub-long v13, p1, v5

    iget-wide v5, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    move-wide v15, v5

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    iget-wide v8, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    cmp-long v1, v8, v3

    if-eqz v1, :cond_6

    cmp-long v1, v5, v8

    if-lez v1, :cond_6

    iput-wide v8, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    :cond_6
    :goto_2
    iget-wide v3, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    sub-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-wide v8, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->a:J

    cmp-long v1, v5, v8

    if-gez v1, :cond_7

    iput v2, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    goto :goto_3

    :cond_7
    long-to-float v1, v3

    mul-float/2addr v7, v1

    add-float/2addr v7, v2

    iget v1, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->k:F

    iget v2, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->j:F

    invoke-static {v7, v1, v2}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result v1

    iput v1, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    :goto_3
    iget v0, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    return-wide v0
.end method

.method public final d()V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    :cond_1
    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    return-void
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->e:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->f()V

    return-void
.end method

.method public final f()V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->e:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v0

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->f:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    return-void
.end method
