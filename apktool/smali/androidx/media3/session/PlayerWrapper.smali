.class final Landroidx/media3/session/PlayerWrapper;
.super Landroidx/media3/common/ForwardingPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/ForwardingPlayer;-><init>(Landroidx/media3/common/Player;)V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->A()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final A0(ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->A0(ILjava/util/List;)V

    return-void
.end method

.method public final B(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->B(Landroid/view/Surface;)V

    return-void
.end method

.method public final B0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->B0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C0()Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->C0()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final D()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->D()V

    return-void
.end method

.method public final D0(Landroidx/media3/common/MediaItem;J)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->D0(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public final E()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->E()I

    move-result p0

    return p0
.end method

.method public final E0(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->E0(I)V

    return-void
.end method

.method public final F()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->F()V

    return-void
.end method

.method public final F0(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->F0(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public final G(IZ)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->G(IZ)V

    return-void
.end method

.method public final G0(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->G0(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final H()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->H()V

    return-void
.end method

.method public final H0(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->H0(II)V

    return-void
.end method

.method public final I(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->I(I)V

    return-void
.end method

.method public final I0(III)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->I0(III)V

    return-void
.end method

.method public final J(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->J(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final J0(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->J0(Ljava/util/List;)V

    return-void
.end method

.method public final K(IILjava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->K(IILjava/util/List;)V

    return-void
.end method

.method public final K0()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->K0()Z

    move-result p0

    return p0
.end method

.method public final L(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->L(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public final L0(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->L0(I)V

    return-void
.end method

.method public final M(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->M(I)V

    return-void
.end method

.method public final M0(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->M0(Ljava/util/List;)V

    return-void
.end method

.method public final N(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->N(II)V

    return-void
.end method

.method public final N0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->N0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->O(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final O0()Landroidx/media3/common/MediaItem;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->O0()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final P(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->P(Z)V

    return-void
.end method

.method public final Q()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->Q()V

    return-void
.end method

.method public final R(Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->R(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final R0(I)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    return p0
.end method

.method public final S()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->S()V

    return-void
.end method

.method public final S0()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->S0()Z

    move-result p0

    return p0
.end method

.method public final T(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->T(I)V

    return-void
.end method

.method public final U()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->U()Z

    move-result p0

    return p0
.end method

.method public final U0()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->U0()Z

    move-result p0

    return p0
.end method

.method public final V(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->V(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final V0()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->V0()Z

    move-result p0

    return p0
.end method

.method public final W()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->W()I

    move-result p0

    return p0
.end method

.method public final W0()Landroidx/media3/common/Player$PositionInfo;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->v()I

    move-result v4

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    const/4 v4, 0x1

    if-ltz v7, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->n0()I

    move-result v5

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v3

    :goto_2
    if-ltz v10, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->p()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->o()I

    move-result v8

    if-ge v7, v8, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v8, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v2, v7, v8, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget v8, v2, Landroidx/media3/common/Timeline$Window;->n:I

    iget v2, v2, Landroidx/media3/common/Timeline$Window;->o:I

    invoke-static {v10, v8, v2}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v2

    if-ne v10, v2, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    :cond_6
    move-wide v2, v5

    new-instance v5, Landroidx/media3/common/Player$PositionInfo;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->O0()Landroidx/media3/common/MediaItem;

    move-result-object v4

    :goto_5
    move-object v8, v4

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v11

    goto :goto_7

    :cond_8
    move-wide v11, v2

    :goto_7
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->u()J

    move-result-wide v2

    :cond_9
    move-wide v13, v2

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->W()I

    move-result v3

    move v15, v3

    goto :goto_8

    :cond_a
    move v15, v2

    :goto_8
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->v0()I

    move-result v2

    :cond_b
    move/from16 v16, v2

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v16}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v5
.end method

.method public final X(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->X(Z)V

    return-void
.end method

.method public final X0()Landroidx/media3/session/SessionPositionInfo;
    .locals 23

    const/16 v0, 0x10

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    new-instance v1, Landroidx/media3/session/SessionPositionInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->W0()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->B0()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    move-wide v13, v11

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->E()I

    move-result v3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->C()J

    move-result-wide v15

    goto :goto_3

    :cond_4
    move-wide v15, v11

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->g0()J

    move-result-wide v17

    goto :goto_4

    :cond_5
    move-wide/from16 v17, v7

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->m0()J

    move-result-wide v7

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/PlayerWrapper;->x()J

    move-result-wide v11

    :cond_7
    move-wide/from16 v19, v9

    move v10, v3

    move v3, v4

    move-wide v4, v5

    move-wide/from16 v21, v15

    move-wide v15, v7

    move-wide/from16 v6, v19

    move-wide v8, v13

    move-wide/from16 v13, v17

    move-wide/from16 v17, v11

    move-wide/from16 v11, v21

    invoke-direct/range {v1 .. v18}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    return-object v1
.end method

.method public final Y(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->Y(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final Y0()Landroidx/media3/common/MediaItem;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->O0()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final Z()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->Z()I

    move-result p0

    return p0
.end method

.method public final Z0()Landroidx/media3/common/Timeline;
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->p()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->Y0()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerWrapper$CurrentMediaItemOnlyTimeline;-><init>(Landroidx/media3/session/PlayerWrapper;)V

    return-object v0

    :cond_1
    sget-object p0, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public final a1()Landroidx/media3/common/MediaMetadata;
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->A()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final b0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->b0()V

    return-void
.end method

.method public final b1()Z
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->K0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->c()V

    return-void
.end method

.method public final c0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->c0()V

    return-void
.end method

.method public final c1()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->a0()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->q(Z)V

    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->d(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final d0()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public final e()Landroidx/media3/common/PlaybackException;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->e()Landroidx/media3/common/PlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public final e0(Landroid/view/TextureView;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->e0(Landroid/view/TextureView;)V

    return-void
.end method

.method public final f()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->f()V

    return-void
.end method

.method public final f0()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->f0()I

    move-result p0

    return p0
.end method

.method public final g(F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->g(F)V

    return-void
.end method

.method public final g0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->g0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->h()I

    move-result p0

    return p0
.end method

.method public final h0(IJ)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/ForwardingPlayer;->h0(IJ)V

    return-void
.end method

.method public final i()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->i()I

    move-result p0

    return p0
.end method

.method public final i0()Landroidx/media3/common/Player$Commands;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public final isPlaying()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->j()Z

    move-result p0

    return p0
.end method

.method public final j0(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->j0(Z)V

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->k()V

    return-void
.end method

.method public final k0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->k0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->l()V

    return-void
.end method

.method public final l0(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->l0(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final m()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->m()Z

    move-result p0

    return p0
.end method

.method public final m0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->m0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Landroidx/media3/common/Tracks;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->n()Landroidx/media3/common/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public final n0()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->n0()I

    move-result p0

    return p0
.end method

.method public final o()Landroidx/media3/common/text/CueGroup;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->o()Landroidx/media3/common/text/CueGroup;

    move-result-object p0

    return-object p0
.end method

.method public final o0(Landroid/view/TextureView;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->o0(Landroid/view/TextureView;)V

    return-void
.end method

.method public final p()Landroidx/media3/common/Timeline;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->p()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public final pause()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->pause()V

    return-void
.end method

.method public final q()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->q()V

    return-void
.end method

.method public final q0()F
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->q0()F

    move-result p0

    return p0
.end method

.method public final r()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->r()Z

    move-result p0

    return p0
.end method

.method public final r0()Landroidx/media3/common/AudioAttributes;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->r0()Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final release()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->release()V

    return-void
.end method

.method public final s()Landroidx/media3/common/VideoSize;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->s()Landroidx/media3/common/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public final s0()Landroidx/media3/common/DeviceInfo;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final seekTo(J)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->seekTo(J)V

    return-void
.end method

.method public final stop()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->stop()V

    return-void
.end method

.method public final t(F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->t(F)V

    return-void
.end method

.method public final t0(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2}, Landroidx/media3/common/ForwardingPlayer;->t0(II)V

    return-void
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u0()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->u0()Z

    move-result p0

    return p0
.end method

.method public final v()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->v()I

    move-result p0

    return p0
.end method

.method public final v0()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->v0()I

    move-result p0

    return p0
.end method

.method public final w()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->w()Z

    move-result p0

    return p0
.end method

.method public final w0(Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->w0(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final x()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final x0(Ljava/util/List;IJ)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/common/ForwardingPlayer;->x0(Ljava/util/List;IJ)V

    return-void
.end method

.method public final y()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->y()V

    return-void
.end method

.method public final y0(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0, p1}, Landroidx/media3/common/ForwardingPlayer;->y0(I)V

    return-void
.end method

.method public final z()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->z()V

    return-void
.end method

.method public final z0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->c1()V

    invoke-super {p0}, Landroidx/media3/common/ForwardingPlayer;->z0()J

    move-result-wide v0

    return-wide v0
.end method
