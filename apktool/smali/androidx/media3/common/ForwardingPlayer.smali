.class public Landroidx/media3/common/ForwardingPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/ForwardingPlayer$ForwardingListener;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Player;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->b:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    return-void
.end method


# virtual methods
.method public A()Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->A()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public A0(ILjava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->A0(ILjava/util/List;)V

    return-void
.end method

.method public B(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->B(Landroid/view/Surface;)V

    return-void
.end method

.method public B0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->B0()J

    move-result-wide v0

    return-wide v0
.end method

.method public C()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public C0()Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->C0()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public D()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->D()V

    return-void
.end method

.method public D0(Landroidx/media3/common/MediaItem;J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/Player;->D0(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public E()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->E()I

    move-result p0

    return p0
.end method

.method public E0(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->E0(I)V

    return-void
.end method

.method public F()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->F()V

    return-void
.end method

.method public F0(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->F0(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public G(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->G(IZ)V

    return-void
.end method

.method public G0(Landroid/view/SurfaceView;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->G0(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public H()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->H()V

    return-void
.end method

.method public H0(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->H0(II)V

    return-void
.end method

.method public I(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->I(I)V

    return-void
.end method

.method public I0(III)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/Player;->I0(III)V

    return-void
.end method

.method public J(Landroid/view/SurfaceView;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->J(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public J0(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->J0(Ljava/util/List;)V

    return-void
.end method

.method public K(IILjava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/Player;->K(IILjava/util/List;)V

    return-void
.end method

.method public K0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->K0()Z

    move-result p0

    return p0
.end method

.method public L(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->L(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public L0(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->L0(I)V

    return-void
.end method

.method public M(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->M(I)V

    return-void
.end method

.method public M0(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->M0(Ljava/util/List;)V

    return-void
.end method

.method public N(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->N(II)V

    return-void
.end method

.method public N0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->N0()J

    move-result-wide v0

    return-wide v0
.end method

.method public O(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->O(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public O0()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->O0()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public P(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->P(Z)V

    return-void
.end method

.method public Q()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->Q()V

    return-void
.end method

.method public final Q0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->Q0()Z

    move-result p0

    return p0
.end method

.method public R(Landroidx/media3/common/MediaItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->R(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public R0(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    return p0
.end method

.method public S()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->S()V

    return-void
.end method

.method public S0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->S0()Z

    move-result p0

    return p0
.end method

.method public T(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->T(I)V

    return-void
.end method

.method public U()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->U()Z

    move-result p0

    return p0
.end method

.method public U0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->U0()Z

    move-result p0

    return p0
.end method

.method public V(Landroidx/media3/common/Player$Listener;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->b:Ljava/util/IdentityHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/ForwardingPlayer;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->V(Landroidx/media3/common/Player$Listener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public V0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->V0()Z

    move-result p0

    return p0
.end method

.method public W()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->W()I

    move-result p0

    return p0
.end method

.method public X(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->X(Z)V

    return-void
.end method

.method public Y(Landroidx/media3/common/Player$Listener;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/ForwardingPlayer;->b:Ljava/util/IdentityHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/ForwardingPlayer;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;

    invoke-direct {v1, p0, p1}, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;-><init>(Landroidx/media3/common/ForwardingPlayer;Landroidx/media3/common/Player$Listener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {v2, v1}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public Z()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->Z()I

    move-result p0

    return p0
.end method

.method public a()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public final a0()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->a0()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public b0()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->b0()V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->c()V

    return-void
.end method

.method public c0()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->c0()V

    return-void
.end method

.method public d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->d(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public d0()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public e()Landroidx/media3/common/PlaybackException;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/PlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public e0(Landroid/view/TextureView;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->e0(Landroid/view/TextureView;)V

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->f()V

    return-void
.end method

.method public f0()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->f0()I

    move-result p0

    return p0
.end method

.method public g(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->g(F)V

    return-void
.end method

.method public g0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->g0()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->h()I

    move-result p0

    return p0
.end method

.method public h0(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/Player;->h0(IJ)V

    return-void
.end method

.method public i()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->i()I

    move-result p0

    return p0
.end method

.method public i0()Landroidx/media3/common/Player$Commands;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->j()Z

    move-result p0

    return p0
.end method

.method public j0(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->j0(Z)V

    return-void
.end method

.method public k()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->k()V

    return-void
.end method

.method public k0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->k0()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->l()V

    return-void
.end method

.method public l0(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->l0(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->m()Z

    move-result p0

    return p0
.end method

.method public m0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->m0()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Landroidx/media3/common/Tracks;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->n()Landroidx/media3/common/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public n0()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->n0()I

    move-result p0

    return p0
.end method

.method public o()Landroidx/media3/common/text/CueGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->o()Landroidx/media3/common/text/CueGroup;

    move-result-object p0

    return-object p0
.end method

.method public o0(Landroid/view/TextureView;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->o0(Landroid/view/TextureView;)V

    return-void
.end method

.method public p()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public final p0(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->p0(Landroidx/media3/common/AudioAttributes;Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->pause()V

    return-void
.end method

.method public q()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->q()V

    return-void
.end method

.method public q0()F
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->q0()F

    move-result p0

    return p0
.end method

.method public r()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->r()Z

    move-result p0

    return p0
.end method

.method public r0()Landroidx/media3/common/AudioAttributes;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->r0()Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->release()V

    return-void
.end method

.method public s()Landroidx/media3/common/VideoSize;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->s()Landroidx/media3/common/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public s0()Landroidx/media3/common/DeviceInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->stop()V

    return-void
.end method

.method public t(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->t(F)V

    return-void
.end method

.method public t0(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->t0(II)V

    return-void
.end method

.method public u()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public u0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->u0()Z

    move-result p0

    return p0
.end method

.method public v()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->v()I

    move-result p0

    return p0
.end method

.method public v0()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->v0()I

    move-result p0

    return p0
.end method

.method public w()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->w()Z

    move-result p0

    return p0
.end method

.method public w0(Landroidx/media3/common/MediaItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->w0(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public x()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public x0(Ljava/util/List;IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/common/Player;->x0(Ljava/util/List;IJ)V

    return-void
.end method

.method public y()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->y()V

    return-void
.end method

.method public y0(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->y0(I)V

    return-void
.end method

.method public z()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->z()V

    return-void
.end method

.method public z0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->z0()J

    move-result-wide v0

    return-wide v0
.end method
