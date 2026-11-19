.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckPlayingDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:J

.field public f:Z

.field public g:J

.field public final synthetic h:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector;

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v1

    const/4 v4, 0x2

    if-nez v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    if-eqz v0, :cond_0

    invoke-interface {v2, v4}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    return-void

    :cond_1
    invoke-interface {v3}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Landroidx/media3/common/Player;->n0()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-interface {v3}, Landroidx/media3/common/Player;->W()I

    move-result v6

    invoke-interface {v3}, Landroidx/media3/common/Player;->v0()I

    move-result v7

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v8

    if-eqz v5, :cond_3

    const/4 v3, -0x1

    if-ne v6, v3, :cond_3

    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector;->e:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v5, v3}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-wide v10, v1, Landroidx/media3/common/Timeline$Period;->e:J

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v10

    sub-long/2addr v8, v10

    :cond_3
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v10

    iget-boolean v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    iget v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->b:Ljava/lang/Object;

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->c:I

    if-ne v6, v1, :cond_5

    iget v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->d:I

    if-ne v7, v1, :cond_5

    iget-wide v12, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->e:J

    cmp-long v1, v8, v12

    if-nez v1, :cond_5

    iget-wide v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->g:J

    sub-long/2addr v10, v1

    int-to-long v1, v3

    cmp-long p0, v10, v1

    if-ltz p0, :cond_4

    iget-object p0, v0, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    invoke-direct {v0, v4, v3}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    invoke-interface {p0, v0}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->x(Landroidx/media3/common/util/StuckPlayerException;)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    iput-wide v10, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->g:J

    iput-object v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->b:Ljava/lang/Object;

    iput v6, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->c:I

    iput v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->d:I

    iput-wide v8, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->e:J

    invoke-interface {v2, v4}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    invoke-interface {v2, v4, v3}, Landroidx/media3/common/util/HandlerWrapper;->a(II)Z

    return-void
.end method
