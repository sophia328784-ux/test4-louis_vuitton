.class final Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ControllerLegacyCbForBroadcast"
.end annotation


# instance fields
.field public a:Landroidx/media3/common/MediaMetadata;

.field public b:Ljava/lang/String;

.field public c:Landroid/net/Uri;

.field public d:J

.field public final synthetic e:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->a:Landroidx/media3/common/MediaMetadata;

    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->b:Ljava/lang/String;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->d:J

    return-void
.end method


# virtual methods
.method public final b(ILandroidx/media3/session/SessionCommand;)V
    .locals 2

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    iget-object v1, p2, Landroidx/media3/session/SessionCommand;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    iget-object p2, p2, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->f(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final h(ILandroidx/media3/common/Player$Commands;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->s:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->s:I

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->j(I)V

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public final j()V
    .locals 8

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v7, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v7}, Landroidx/media3/session/PlayerWrapper;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroidx/media3/session/PlayerWrapper;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    const/16 v1, 0x1a

    const/16 v2, 0x22

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v2, v1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0x19

    const/16 v3, 0x21

    filled-new-array {v1, v3}, [I

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v0, v1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    new-instance v6, Landroid/os/Handler;

    iget-object v1, v7, Landroidx/media3/common/ForwardingPlayer;->a:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->a0()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v1, 0x17

    invoke-virtual {v7, v1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Landroidx/media3/session/PlayerWrapper;->f0()I

    move-result v2

    :cond_3
    move v4, v2

    invoke-virtual {v7}, Landroidx/media3/session/PlayerWrapper;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$3;

    iget v3, v2, Landroidx/media3/common/DeviceInfo;->c:I

    iget-object v5, v2, Landroidx/media3/common/DeviceInfo;->d:Ljava/lang/String;

    move v2, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaSessionLegacyStub$3;-><init>(IIILjava/lang/String;Landroid/os/Handler;Landroidx/media3/session/PlayerWrapper;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->o:Landroidx/media3/session/legacy/VolumeProviderCompat;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    if-nez v0, :cond_5

    const/16 v0, 0x15

    invoke-virtual {v7, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Landroidx/media3/session/PlayerWrapper;->r0()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget-object v0, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->n(Landroidx/media3/common/AudioAttributes;)V

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->o(Landroidx/media3/session/legacy/VolumeProviderCompat;)V

    return-void
.end method

.method public final k(Landroidx/media3/common/MediaItem;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->s()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->r(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->w(Landroidx/media3/common/Rating;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->r(I)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->s()V

    return-void
.end method

.method public final m(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->Z0()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->q(Landroidx/media3/common/Timeline;)V

    const/16 p1, 0x12

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->C0()Landroidx/media3/common/MediaMetadata;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->n(Landroidx/media3/common/MediaMetadata;)V

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->a1()Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->l()V

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->w()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->p(Z)V

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->o(I)V

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->s0()Landroidx/media3/common/DeviceInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->j()V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->s:I

    if-eq v1, v0, :cond_2

    iput v0, p1, Landroidx/media3/session/MediaSessionLegacyStub;->s:I

    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->j(I)V

    :cond_2
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->Y0()Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->k(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final n(Landroidx/media3/common/MediaMetadata;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat;->b:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->k()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v1, v1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->q(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final o(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->p(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->s(I)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    sget-object v0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->u(I)V

    return-void
.end method

.method public final q(Landroidx/media3/common/Timeline;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->t(Landroidx/media3/common/Timeline;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->s()V

    return-void
.end method

.method public final r()V
    .locals 1

    sget v0, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final s()V
    .locals 12

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, v1, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, v1, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->Y0()Landroidx/media3/common/MediaItem;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->a1()Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->V0()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getDuration()J

    move-result-wide v7

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, v3, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    goto :goto_1

    :goto_2
    const/4 v11, 0x0

    if-eqz v3, :cond_3

    iget-object v0, v3, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$RequestMetadata;->a:Landroid/net/Uri;

    if-eqz v0, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v11

    :goto_3
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->a:Landroidx/media3/common/MediaMetadata;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->b:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->c:Landroid/net/Uri;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v9, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->d:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->b:Ljava/lang/String;

    iput-object v6, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->c:Landroid/net/Uri;

    iput-object v4, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->a:Landroidx/media3/common/MediaMetadata;

    iput-wide v7, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->d:J

    iget-object v0, v2, Landroidx/media3/session/MediaSessionImpl;->m:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, v4}, Landroidx/media3/common/util/BitmapLoader;->a(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v11, v1, Landroidx/media3/session/MediaSessionLegacyStub;->r:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, p0

    :cond_5
    :goto_4
    move-wide v9, v7

    move-object v8, v6

    move-object v6, v4

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load bitmap: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-wide v9, v7

    move-object v8, v6

    move-object v6, v4

    new-instance v4, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;

    move-object v7, v5

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;J)V

    move-object v5, v7

    iput-object v4, v1, Landroidx/media3/session/MediaSessionLegacyStub;->r:Lcom/google/common/util/concurrent/FutureCallback;

    iget-object p0, v2, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ldc;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ldc;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v4, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :goto_5
    iget-object p0, v1, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    move-object v4, v6

    move-object v6, v8

    move-wide v7, v9

    move-object v9, v11

    invoke-static/range {v4 .. v9}, Landroidx/media3/session/LegacyConversions;->n(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->l(Landroidx/media3/session/legacy/MediaMetadataCompat;)V

    return-void
.end method

.method public final t(Landroidx/media3/common/Timeline;)V
    .locals 12

    sget v0, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, v0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v1, v1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    iget-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->o()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v3, v0, v6, v7}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v6, Landroidx/media3/session/e;

    const/4 v11, 0x7

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v1, p0, :cond_3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->k:[B

    if-nez p0, :cond_2

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroidx/media3/session/e;->run()V

    goto :goto_2

    :cond_2
    iget-object p1, v2, Landroidx/media3/session/MediaSessionImpl;->m:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {p1, p0}, Landroidx/media3/common/util/BitmapLoader;->c([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v2, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldc;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3}, Ldc;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v6, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_3
    iget-object p0, v0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p0, v5}, Landroidx/media3/session/legacy/MediaSessionCompat;->p(Ljava/util/ArrayList;)V

    return-void
.end method
