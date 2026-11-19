.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckSuppressedDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public d:J

.field public final synthetic e:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->e:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->e:Landroidx/media3/common/util/StuckPlayerDetector;

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Landroidx/media3/common/Player;->Z()I

    move-result v1

    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    invoke-interface {v3}, Landroidx/media3/common/Player;->r()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Landroidx/media3/common/Player;->h()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    invoke-interface {v3}, Landroidx/media3/common/Player;->h()I

    move-result v3

    if-eq v3, v5, :cond_3

    if-eqz v1, :cond_3

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v3

    iget-boolean v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    iget v8, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a:I

    if-eqz v7, :cond_2

    iget v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->b:I

    if-ne v7, v1, :cond_2

    iget-wide v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->d:J

    sub-long/2addr v3, v1

    int-to-long v1, v8

    cmp-long p0, v3, v1

    if-ltz p0, :cond_1

    iget-object p0, v0, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    invoke-direct {v0, v5, v8}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    invoke-interface {p0, v0}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->x(Landroidx/media3/common/util/StuckPlayerException;)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v6, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    iput-wide v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->d:J

    iput v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->b:I

    invoke-interface {v2, v5}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    invoke-interface {v2, v5, v8}, Landroidx/media3/common/util/HandlerWrapper;->a(II)Z

    return-void

    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    if-eqz v0, :cond_4

    invoke-interface {v2, v5}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    return-void
.end method
