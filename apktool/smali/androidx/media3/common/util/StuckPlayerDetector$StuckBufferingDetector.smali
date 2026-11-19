.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckBufferingDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:J

.field public final synthetic i:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector;

    iget-object v2, v1, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    iget-object v3, v1, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v4, v1, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    invoke-interface {v2}, Landroidx/media3/common/Player;->h()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    invoke-interface {v4}, Landroidx/media3/common/Player;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Landroidx/media3/common/Player;->Z()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v4}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Landroidx/media3/common/Player;->n0()I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-interface {v4}, Landroidx/media3/common/Player;->W()I

    move-result v7

    invoke-interface {v4}, Landroidx/media3/common/Player;->v0()I

    move-result v8

    invoke-interface {v4}, Landroidx/media3/common/Player;->B0()J

    move-result-wide v9

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v11

    sub-long v11, v9, v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-interface {v4}, Landroidx/media3/common/Player;->C()J

    move-result-wide v15

    sub-long v11, v15, v11

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    if-eqz v5, :cond_3

    const/4 v4, -0x1

    if-ne v7, v4, :cond_3

    iget-object v4, v1, Landroidx/media3/common/util/StuckPlayerDetector;->e:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-wide v13, v2, Landroidx/media3/common/Timeline$Period;->e:J

    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v13

    sub-long/2addr v9, v13

    :cond_3
    iget-object v2, v1, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v13

    iget-boolean v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    iget v4, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a:I

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->b:Ljava/lang/Object;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->c:I

    if-ne v7, v2, :cond_6

    iget v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->d:I

    if-ne v8, v2, :cond_6

    move v15, v7

    iget-wide v6, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->e:J

    cmp-long v6, v9, v6

    if-nez v6, :cond_5

    iget-wide v6, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->f:J

    cmp-long v6, v11, v6

    if-nez v6, :cond_5

    iget-wide v5, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->h:J

    sub-long/2addr v13, v5

    int-to-long v5, v4

    cmp-long v0, v13, v5

    if-ltz v0, :cond_4

    iget-object v0, v1, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    new-instance v1, Landroidx/media3/common/util/StuckPlayerException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->x(Landroidx/media3/common/util/StuckPlayerException;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move v15, v7

    goto :goto_1

    :goto_2
    iput-boolean v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    iput-wide v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->h:J

    iput-object v5, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->b:Ljava/lang/Object;

    iput v15, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->c:I

    iput v8, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->d:I

    iput-wide v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->e:J

    iput-wide v11, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->f:J

    invoke-interface {v3, v2}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    invoke-interface {v3, v2, v4}, Landroidx/media3/common/util/HandlerWrapper;->a(II)Z

    return-void

    :goto_3
    iget-boolean v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    if-eqz v1, :cond_7

    invoke-interface {v3, v2}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    return-void
.end method
