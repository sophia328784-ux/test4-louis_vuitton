.class final Landroidx/media3/common/ForwardingPlayer$ForwardingListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ForwardingPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForwardingListener"
.end annotation


# instance fields
.field public final b:Landroidx/media3/common/ForwardingPlayer;

.field public final c:Landroidx/media3/common/Player$Listener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/ForwardingPlayer;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->b:Landroidx/media3/common/ForwardingPlayer;

    iput-object p2, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->A(I)V

    return-void
.end method

.method public final B(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->B(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public final C(Landroidx/media3/common/Metadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->C(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public final H(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->H(I)V

    return-void
.end method

.method public final I(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->e0(Z)V

    return-void
.end method

.method public final K(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->K(I)V

    return-void
.end method

.method public final L(ILandroidx/media3/common/MediaItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->L(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final N(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->N(Z)V

    return-void
.end method

.method public final O(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void
.end method

.method public final P(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->P(J)V

    return-void
.end method

.method public final Q(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->Q(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public final R(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->R(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public final S()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0}, Landroidx/media3/common/Player$Listener;->S()V

    return-void
.end method

.method public final X(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->X(II)V

    return-void
.end method

.method public final Y(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->Y(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public final b(Landroidx/media3/common/VideoSize;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->b(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public final d0(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/Player$Listener;->d0(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    return-void
.end method

.method public final e0(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->e0(Z)V

    return-void
.end method

.method public final f(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->f(I)V

    return-void
.end method

.method public final f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->b:Landroidx/media3/common/ForwardingPlayer;

    invoke-interface {p1, p0, p2}, Landroidx/media3/common/Player$Listener;->f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public final g0(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->g0(IZ)V

    return-void
.end method

.method public final h(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->h(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final h0(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->h0(F)V

    return-void
.end method

.method public final i0(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->i0(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public final l(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->l(Z)V

    return-void
.end method

.method public final m0(Landroidx/media3/common/Timeline;I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->m0(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->n(Ljava/util/List;)V

    return-void
.end method

.method public final o0(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->o0(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public final p0(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->p0(J)V

    return-void
.end method

.method public final q0(Landroidx/media3/common/Tracks;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->q0(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public final r0(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->r0(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public final s(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->s(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public final s0(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->s0(IZ)V

    return-void
.end method

.method public final t0(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->t0(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public final u0(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->u0(J)V

    return-void
.end method

.method public final v(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->v(I)V

    return-void
.end method

.method public final x0(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingPlayer$ForwardingListener;->c:Landroidx/media3/common/Player$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player$Listener;->x0(Z)V

    return-void
.end method
