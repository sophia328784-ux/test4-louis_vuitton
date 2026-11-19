.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-interface {p0, v0, v1}, Landroidx/media3/common/Player;->N(II)V

    return-void
.end method

.method public final D0(Landroidx/media3/common/MediaItem;J)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2, p3}, Landroidx/media3/common/Player;->x0(Ljava/util/List;IJ)V

    return-void
.end method

.method public final E()I
    .locals 8

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->R0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->B0()J

    move-result-wide v2

    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v6

    if-eqz p0, :cond_3

    cmp-long p0, v4, v6

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    const/16 v0, 0x64

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/common/util/Util;->V(JJ)I

    move-result p0

    invoke-static {p0, v1, v0}, Landroidx/media3/common/util/Util;->j(III)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final F()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->Y0(I)V

    return-void
.end method

.method public final H0(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1, v0, p2}, Landroidx/media3/common/Player;->I0(III)V

    :cond_0
    return-void
.end method

.method public final J0(Ljava/util/List;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/Player;->A0(ILjava/util/List;)V

    return-void
.end method

.method public final M(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1, v0}, Landroidx/media3/common/Player;->N(II)V

    return-void
.end method

.method public final O0()Landroidx/media3/common/MediaItem;
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final Q0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final R(Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->M0(Ljava/util/List;)V

    return-void
.end method

.method public final R0(I)Z
    .locals 0

    invoke-interface {p0}, Landroidx/media3/common/Player;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p0

    return p0
.end method

.method public final S()V
    .locals 7

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    invoke-interface {p0}, Landroidx/media3/common/Player;->i()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v2

    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->w()Z

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result v0

    :goto_0
    if-ne v0, v4, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->W0(I)V

    return-void

    :cond_2
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v0

    invoke-virtual {p0, v4, v5, v0, v3}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void

    :cond_3
    invoke-virtual {p0, v4, v5, v0, v2}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public final S0()Z
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->i:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final U()Z
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    invoke-interface {p0}, Landroidx/media3/common/Player;->i()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v2

    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->w()Z

    move-result p0

    invoke-virtual {v0, v1, v5, p0}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result p0

    :goto_0
    if-eq p0, v4, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final U0()Z
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->h:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V0()Z
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W0(I)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public abstract X0(JIZ)V
.end method

.method public final Y0(I)V
    .locals 7

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    invoke-interface {p0}, Landroidx/media3/common/Player;->i()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v2

    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->w()Z

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Landroidx/media3/common/Timeline;->k(IIZ)I

    move-result v0

    :goto_0
    if-ne v0, v4, :cond_2

    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->W0(I)V

    return-void

    :cond_2
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result p1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v0, p1, :cond_3

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result p1

    invoke-virtual {p0, v4, v5, p1, v3}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void

    :cond_3
    invoke-virtual {p0, v4, v5, v0, v2}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->P(Z)V

    return-void
.end method

.method public final g0()J
    .locals 7

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    const-wide/16 v4, 0x0

    iget-object v6, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v6, v4, v5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Window;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    iget-wide v0, v6, Landroidx/media3/common/Timeline$Window;->g:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->B(J)J

    move-result-wide v0

    iget-wide v2, v6, Landroidx/media3/common/Timeline$Window;->f:J

    sub-long/2addr v0, v2

    invoke-interface {p0}, Landroidx/media3/common/Player;->u()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final h0(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public final isPlaying()Z
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/Player;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->Z()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()V
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public final l()V
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    invoke-interface {p0}, Landroidx/media3/common/Player;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->u0()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->V0()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->U0()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->Y0(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->W0(I)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {p0}, Landroidx/media3/common/Player;->k0()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->Y0(I)V

    return-void

    :cond_3
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->W0(I)V

    return-void
.end method

.method public final l0(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-interface {p0, p1, v0, p2}, Landroidx/media3/common/Player;->K(IILjava/util/List;)V

    return-void
.end method

.method public final m0()J
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->P(Z)V

    return-void
.end method

.method public final q()V
    .locals 10

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    invoke-interface {p0}, Landroidx/media3/common/Player;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->U()Z

    move-result v0

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_5

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz v5, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v5

    invoke-interface {p0}, Landroidx/media3/common/Player;->i()I

    move-result v8

    if-ne v8, v6, :cond_2

    move v8, v2

    :cond_2
    invoke-interface {p0}, Landroidx/media3/common/Player;->w()Z

    move-result v9

    invoke-virtual {v0, v5, v8, v9}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result v0

    :goto_0
    if-ne v0, v7, :cond_3

    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->W0(I)V

    return-void

    :cond_3
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0, v6}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void

    :cond_4
    invoke-virtual {p0, v3, v4, v0, v2}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->V0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->S0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0, v2}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void

    :cond_6
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->W0(I)V

    return-void

    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->W0(I)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public final t(F)V
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/Player;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->b:F

    invoke-direct {v1, p1, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    invoke-interface {p0, v1}, Landroidx/media3/common/Player;->d(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final u0()Z
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v1

    invoke-interface {p0}, Landroidx/media3/common/Player;->i()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v2

    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->w()Z

    move-result p0

    invoke-virtual {v0, v1, v5, p0}, Landroidx/media3/common/Timeline;->k(IIZ)I

    move-result p0

    :goto_0
    if-eq p0, v4, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final w0(Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->M0(Ljava/util/List;)V

    return-void
.end method

.method public final y()V
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/Player;->z0()J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public final y0(I)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method

.method public final z()V
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/Player;->N0()J

    move-result-wide v0

    neg-long v0, v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media3/common/BasePlayer;->X0(JIZ)V

    return-void
.end method
