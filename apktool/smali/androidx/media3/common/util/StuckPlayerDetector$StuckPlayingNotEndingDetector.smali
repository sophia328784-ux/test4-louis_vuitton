.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckPlayingNotEndingDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:Z

.field public f:J

.field public final synthetic g:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector;

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->e:Landroidx/media3/common/Timeline$Period;

    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v4, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Landroidx/media3/common/Player;->n0()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-interface {v4}, Landroidx/media3/common/Player;->W()I

    move-result v6

    invoke-interface {v4}, Landroidx/media3/common/Player;->v0()I

    move-result v7

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v8

    const/4 v10, -0x1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_1

    if-ne v6, v10, :cond_1

    invoke-virtual {v1, v5, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v13, v2, Landroidx/media3/common/Timeline$Period;->e:J

    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v13

    sub-long/2addr v8, v13

    iget-wide v1, v2, Landroidx/media3/common/Timeline$Period;->d:J

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    if-eq v6, v10, :cond_2

    invoke-interface {v4}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    move-wide v1, v11

    :goto_1
    invoke-interface {v4}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v10

    const/4 v13, 0x3

    if-eqz v10, :cond_6

    cmp-long v14, v1, v11

    if-eqz v14, :cond_6

    cmp-long v14, v8, v1

    if-gez v14, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v1

    iget-boolean v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->e:Z

    iget v8, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->b:Ljava/lang/Object;

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->c:I

    if-ne v6, v4, :cond_5

    iget v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->d:I

    if-ne v7, v4, :cond_5

    iget-wide v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->f:J

    sub-long/2addr v1, v3

    int-to-long v3, v8

    cmp-long p0, v1, v3

    if-ltz p0, :cond_4

    iget-object p0, v0, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    invoke-direct {v0, v13, v8}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    invoke-interface {p0, v0}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->x(Landroidx/media3/common/util/StuckPlayerException;)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->e:Z

    iput-wide v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->f:J

    iput-object v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->b:Ljava/lang/Object;

    iput v6, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->c:I

    iput v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->d:I

    invoke-interface {v3, v13}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    invoke-interface {v3, v13, v8}, Landroidx/media3/common/util/HandlerWrapper;->a(II)Z

    return-void

    :cond_6
    :goto_2
    invoke-interface {v3, v13}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    if-eqz v10, :cond_7

    cmp-long v0, v1, v11

    if-eqz v0, :cond_7

    sub-long/2addr v1, v8

    long-to-float v0, v1

    invoke-interface {v4}, Landroidx/media3/common/Player;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {v3, v13, v0}, Landroidx/media3/common/util/HandlerWrapper;->a(II)Z

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->e:Z

    return-void
.end method
