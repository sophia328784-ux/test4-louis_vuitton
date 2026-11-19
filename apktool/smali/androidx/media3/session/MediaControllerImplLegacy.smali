.class Landroidx/media3/session/MediaControllerImplLegacy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaController$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;,
        Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;,
        Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;,
        Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/session/MediaController;

.field public final c:Landroidx/media3/session/SessionToken;

.field public final d:Landroidx/media3/common/util/ListenerSet;

.field public final e:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

.field public final f:Landroidx/media3/common/util/BitmapLoader;

.field public final g:Landroid/os/Bundle;

.field public final h:J

.field public i:Landroidx/media3/session/legacy/MediaControllerCompat;

.field public j:Landroidx/media3/session/legacy/MediaBrowserCompat;

.field public k:Z

.field public l:Z

.field public m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

.field public n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

.field public o:Z

.field public p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

.field public q:J

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/session/k0;

    invoke-direct {v1, p0}, Landroidx/media3/session/k0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    sget-object v2, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    invoke-direct {v0, p5, v2, v1}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->d:Landroidx/media3/common/util/ListenerSet;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    new-instance p1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-direct {p1, p0, p5}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->e:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->c:Landroidx/media3/session/SessionToken;

    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->g:Landroid/os/Bundle;

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->f:Landroidx/media3/common/util/BitmapLoader;

    iput-wide p7, p0, Landroidx/media3/session/MediaControllerImplLegacy;->h:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->q:J

    iput-wide p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->r:J

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static R0(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->v:Z

    if-eqz p0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static S0(Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object v0, Landroidx/media3/session/MediaUtils;->a:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static T0(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->e:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const-string v0, "Adjusting playback speed to 1.0f because negative playback speed isn\'t supported."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    iget v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    iget-wide v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->c:J

    iget-wide v4, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->i:J

    iput v1, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->b:I

    iput-wide v2, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->c:J

    iput-wide v4, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->i:J

    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, v0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->e:F

    invoke-virtual {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static U0(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;
    .locals 12

    new-instance v0, Landroidx/media3/common/Player$PositionInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v1

    :goto_0
    if-eqz p4, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v1

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    move v5, p0

    move-wide v8, p2

    move v2, p0

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo;->i()Landroidx/media3/common/MediaItem;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final A0(ILjava/util/List;)V
    .locals 10

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p2, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->x0(Ljava/util/List;IJ)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->o()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/QueueTimeline;->q(ILjava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->v()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v1, v2

    :goto_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/session/PlayerInfo;->f(Landroidx/media3/common/Timeline;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->s:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->Q0(ILjava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final B(Landroid/view/Surface;)V
    .locals 0

    const-string p0, "Session doesn\'t support setting Surface"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final B0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->e:J

    return-wide v0
.end method

.method public final C()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->g:J

    return-wide v0
.end method

.method public final C0()Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final D()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->N(II)V

    return-void
.end method

.method public final D0(Landroidx/media3/common/MediaItem;J)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->x0(Ljava/util/List;IJ)V

    return-void
.end method

.method public final E()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget p0, p0, Landroidx/media3/session/SessionPositionInfo;->f:I

    return p0
.end method

.method public final E0(I)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->i()I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0, v0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    iput p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->h:I

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->p(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->o(I)V

    return-void
.end method

.method public final F()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->r()V

    return-void
.end method

.method public final F0(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method

.method public final G(IZ)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->K0()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->f0()I

    move-result v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v2, v0, p2}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, -0x64

    goto :goto_0

    :cond_1
    const/16 p2, 0x64

    :goto_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0, p2, p1}, Landroidx/media3/session/legacy/MediaControllerCompat;->b(II)V

    return-void
.end method

.method public final G0(Landroid/view/SurfaceView;)V
    .locals 0

    const-string p0, "Session doesn\'t support clearing SurfaceView"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final H()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->T(I)V

    return-void
.end method

.method public final H0(II)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->I0(III)V

    return-void
.end method

.method public final I(I)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->f0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    if-gt v3, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->K0()Z

    move-result v1

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    add-int/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0, v2, p1}, Landroidx/media3/session/legacy/MediaControllerCompat;->b(II)V

    return-void
.end method

.method public final I0(III)V
    .locals 11

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v1, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v1}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v3, p2, p1

    sub-int v4, v2, v3

    add-int/lit8 v5, v4, -0x1

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p1, v2, :cond_7

    if-eq p1, p2, :cond_7

    if-ne p1, p3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->v()I

    move-result v2

    const/4 v4, -0x1

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v2, p2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    :goto_1
    if-ne v2, v4, :cond_4

    invoke-static {p1, v0, v5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Currently playing item will be removed and added back to mimic move. Assumes item at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " would be the new current item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_4
    if-ge v2, p3, :cond_5

    goto :goto_2

    :cond_5
    add-int/2addr v2, v3

    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, p1, p2, p3}, Landroidx/media3/common/util/Util;->Q(Ljava/util/ArrayList;III)V

    new-instance p2, Landroidx/media3/session/QueueTimeline;

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iget-object v1, v1, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    invoke-direct {p2, v4, v1}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v1, p2, v2}, Landroidx/media3/session/PlayerInfo;->f(Landroidx/media3/common/Timeline;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v5

    new-instance v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, p2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v7, p2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v8, p2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v9, p2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v4, p2, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean p2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->s:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_6

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    iget-object v4, v4, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v2, v4}, Landroidx/media3/session/legacy/MediaControllerCompat;->s(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object p1, p1, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    add-int v2, v0, p3

    invoke-virtual {v1, p1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->a(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public final J(Landroid/view/SurfaceView;)V
    .locals 0

    const-string p0, "Session doesn\'t support setting SurfaceView"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final J0(Ljava/util/List;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->A0(ILjava/util/List;)V

    return-void
.end method

.method public final K(IILjava/util/List;)V
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v0, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v0}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result v0

    if-le p1, v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->A0(ILjava/util/List;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->N(II)V

    return-void
.end method

.method public final K0()Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean p0, v0, Landroidx/media3/session/PlayerInfo;->u:Z

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->h()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-result-object p0

    sget-object v0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->e:I

    if-nez p0, :cond_2

    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final L(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    const-string p0, "Session doesn\'t support setting playlist metadata"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final L0(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->t0(II)V

    return-void
.end method

.method public final M(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->N(II)V

    return-void
.end method

.method public final M0(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->x0(Ljava/util/List;IJ)V

    return-void
.end method

.method public final N(II)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->p()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->o()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v2, :cond_5

    if-ne p1, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v2, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v4, v2, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1, p1}, Lcom/google/common/collect/ImmutableList;->I(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/google/common/collect/ImmutableList;->I(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    new-instance v4, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iget-object v2, v2, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    invoke-direct {v4, v3, v2}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->v()I

    move-result v2

    sub-int v3, p2, p1

    const/4 v5, -0x1

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v2, p2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    :goto_1
    if-ne v2, v5, :cond_4

    invoke-virtual {v4}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Currently playing item is removed. Assumes item at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is the new current item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/PlayerInfo;->f(Landroidx/media3/common/Timeline;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v6

    new-instance v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v9, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->s:Z

    if-eqz v0, :cond_5

    :goto_2
    if-ge p1, p2, :cond_5

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->s(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final N0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->C:J

    return-wide v0
.end method

.method public final O(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p0, "Session doesn\'t support setting SurfaceHolder"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final O0()Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final P(Z)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, v1, Landroidx/media3/session/PlayerInfo;->v:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->q:J

    iget-wide v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->r:J

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    iget-wide v6, v0, Landroidx/media3/session/MediaController;->f:J

    invoke-static/range {v1 .. v7}, Landroidx/media3/session/MediaUtils;->c(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->q:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->r:J

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Landroidx/media3/session/PlayerInfo;->b(IIZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->s:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->c()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->b()V

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->R0(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->W0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final P0()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public final Q()V
    .locals 0

    const-string p0, "Session doesn\'t support unmuting the player"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final Q0(ILjava/util/List;)V
    .locals 7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v0, Landroidx/media3/session/l0;

    move-object v1, p0

    move v5, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/l0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/ArrayList;I)V

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v6, p0, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->k:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/media3/session/l0;->run()V

    goto :goto_1

    :cond_0
    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy;->f:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {p1, p0}, Landroidx/media3/common/util/BitmapLoader;->c([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    iget-object p1, p1, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ldc;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v2}, Ldc;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final R(Landroidx/media3/common/MediaItem;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->D0(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public final S()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->q()V

    return-void
.end method

.method public final T(I)V
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->f0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->b:I

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->K0()Z

    move-result v1

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v3, v0, v1}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat;->b(II)V

    return-void
.end method

.method public final U()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    return p0
.end method

.method public final V(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->d:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->e(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final V0(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    iget-boolean v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->k:Z

    if-nez v1, :cond_76

    iget-boolean v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    if-nez v1, :cond_0

    goto/16 :goto_4f

    :cond_0
    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v4}, Landroidx/media3/session/legacy/MediaControllerCompat;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->e()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaControllerCompat;->q()Z

    move-result v7

    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v8}, Landroidx/media3/session/legacy/MediaControllerCompat;->l()I

    move-result v8

    iget-object v9, v0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    iget-wide v10, v9, Landroidx/media3/session/MediaController;->f:J

    iget-boolean v12, v0, Landroidx/media3/session/MediaControllerImplLegacy;->o:Z

    iget-object v13, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v14, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v15, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    move-wide/from16 v16, v5

    if-eqz v13, :cond_4

    iget-object v5, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    if-eqz v5, :cond_4

    iget-object v6, v13, Landroidx/media3/session/legacy/MediaMetadataCompat;->d:[B

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaMetadataCompat;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v18, v7

    invoke-virtual {v13}, Landroidx/media3/session/legacy/MediaMetadataCompat;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v13, Landroidx/media3/session/legacy/MediaMetadataCompat;->d:[B

    iput-object v6, v5, Landroidx/media3/session/legacy/MediaMetadataCompat;->d:[B

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v18, v7

    :cond_5
    :goto_1
    iget-object v5, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    iget-object v7, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v13, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    move/from16 v19, v12

    iget-object v12, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-object/from16 v20, v9

    if-eq v15, v5, :cond_b

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v22, v4

    move-wide/from16 v23, v10

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    iget-object v11, v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    iget-object v11, v11, Landroidx/media3/session/legacy/MediaDescriptionCompat;->f:Landroid/graphics/Bitmap;

    move-object/from16 v25, v12

    if-eqz v11, :cond_6

    iget-wide v11, v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->c:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v25

    goto :goto_2

    :cond_7
    move-object/from16 v25, v12

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_c

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    iget-object v11, v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    iget-object v11, v11, Landroidx/media3/session/legacy/MediaDescriptionCompat;->f:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_a

    iget-wide v11, v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->c:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    if-eqz v11, :cond_a

    iget-object v10, v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    iget-object v11, v11, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v11, Landroidx/media3/session/legacy/MediaDescriptionCompat;->g:[B

    if-eqz v12, :cond_a

    iget-object v12, v10, Landroidx/media3/session/legacy/MediaDescriptionCompat;->f:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_a

    move/from16 v26, v4

    iget-object v4, v11, Landroidx/media3/session/legacy/MediaDescriptionCompat;->f:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v12, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    iget-object v4, v11, Landroidx/media3/session/legacy/MediaDescriptionCompat;->g:[B

    iput-object v4, v10, Landroidx/media3/session/legacy/MediaDescriptionCompat;->g:[B

    goto :goto_4

    :cond_a
    move/from16 v26, v4

    :goto_4
    add-int/lit8 v4, v26, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v22, v4

    move-wide/from16 v23, v10

    move-object/from16 v25, v12

    :cond_c
    if-eq v15, v5, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_f

    sget-object v11, Landroidx/media3/session/QueueTimeline;->g:Landroidx/media3/session/QueueTimeline;

    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v11}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v12, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_e

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    sget-object v26, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    const/16 v26, 0x1

    iget-object v9, v15, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-static {v9}, Landroidx/media3/session/LegacyConversions;->j(Landroidx/media3/session/legacy/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;

    move-result-object v28

    new-instance v27, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    move-object/from16 v33, v11

    iget-wide v10, v15, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->c:J

    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v29, v10

    invoke-direct/range {v27 .. v32}, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;-><init>(Landroidx/media3/common/MediaItem;JJ)V

    move-object/from16 v11, v27

    move-object/from16 v10, v33

    invoke-virtual {v10, v11}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object v11, v10

    goto :goto_6

    :cond_e
    move-object v10, v11

    const/16 v26, 0x1

    new-instance v11, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    const/4 v9, 0x0

    invoke-direct {v11, v10, v9}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    goto :goto_7

    :cond_f
    const/16 v26, 0x1

    iget-object v10, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v10, v10, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v10, Landroidx/media3/session/QueueTimeline;

    new-instance v11, Landroidx/media3/session/QueueTimeline;

    iget-object v12, v10, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v10, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    invoke-direct {v11, v12, v10}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    :goto_7
    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    if-ne v10, v13, :cond_11

    if-eqz p1, :cond_10

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    goto :goto_9

    :cond_11
    :goto_8
    move/from16 v10, v26

    :goto_9
    const-wide/16 v27, -0x1

    if-nez v14, :cond_12

    move v15, v10

    move-wide/from16 v9, v27

    goto :goto_a

    :cond_12
    move v15, v10

    iget-wide v9, v14, Landroidx/media3/session/legacy/PlaybackStateCompat;->k:J

    :goto_a
    if-nez v7, :cond_13

    move-object/from16 v29, v13

    move-wide/from16 v12, v27

    goto :goto_b

    :cond_13
    move-object/from16 v29, v13

    iget-wide v12, v7, Landroidx/media3/session/legacy/PlaybackStateCompat;->k:J

    :goto_b
    cmp-long v9, v9, v12

    if-nez v9, :cond_15

    if-eqz p1, :cond_14

    goto :goto_c

    :cond_14
    const/4 v9, 0x0

    goto :goto_d

    :cond_15
    :goto_c
    move/from16 v9, v26

    :goto_d
    invoke-static/range {v29 .. v29}, Landroidx/media3/session/LegacyConversions;->d(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v35

    if-nez v15, :cond_17

    if-nez v9, :cond_17

    if-eqz v4, :cond_16

    goto :goto_e

    :cond_16
    iget-object v4, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v4, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v5, v5, Landroidx/media3/common/Player$PositionInfo;->b:I

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    move-object/from16 v65, v4

    move-object/from16 v12, v29

    goto/16 :goto_19

    :cond_17
    :goto_e
    if-eqz v5, :cond_1a

    cmp-long v4, v12, v27

    if-nez v4, :cond_18

    goto :goto_10

    :cond_18
    const/4 v4, 0x0

    :goto_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_1a

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    move/from16 v28, v9

    iget-wide v9, v10, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->c:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_19

    goto :goto_11

    :cond_19
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v28

    goto :goto_f

    :cond_1a
    :goto_10
    move/from16 v28, v9

    const/4 v4, -0x1

    :goto_11
    if-eqz v29, :cond_1b

    move/from16 v10, v26

    goto :goto_12

    :cond_1b
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_1c

    if-eqz v15, :cond_1c

    move-object/from16 v12, v29

    invoke-static {v12, v8}, Landroidx/media3/session/LegacyConversions;->m(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v5

    goto :goto_13

    :cond_1c
    move-object/from16 v12, v29

    if-nez v10, :cond_1e

    if-eqz v28, :cond_1e

    const/4 v9, -0x1

    if-ne v4, v9, :cond_1d

    sget-object v5, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    goto :goto_13

    :cond_1d
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    iget-object v5, v5, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-static {v5, v8}, Landroidx/media3/session/LegacyConversions;->l(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v5

    goto :goto_13

    :cond_1e
    iget-object v5, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v5, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    :goto_13
    iget-object v9, v11, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    const/4 v13, -0x1

    if-ne v4, v13, :cond_23

    if-eqz v15, :cond_23

    if-eqz v10, :cond_21

    const-string v4, "Adding a fake MediaItem at the end of the list because there\'s no QueueItem with the active queue id and current Timeline should have currently playing MediaItem."

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    const-string v4, "android.media.metadata.MEDIA_ID"

    iget-object v10, v12, Landroidx/media3/session/legacy/MediaMetadataCompat;->b:Landroid/os/Bundle;

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    :goto_14
    invoke-static {v4, v12, v8}, Landroidx/media3/session/LegacyConversions;->k(Ljava/lang/String;Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v32

    new-instance v11, Landroidx/media3/session/QueueTimeline;

    new-instance v31, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    const-wide/16 v33, -0x1

    invoke-direct/range {v31 .. v36}, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;-><init>(Landroidx/media3/common/MediaItem;JJ)V

    move-object/from16 v4, v31

    invoke-direct {v11, v9, v4}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    invoke-virtual {v11}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :cond_20
    move-object/from16 v28, v5

    goto/16 :goto_18

    :cond_21
    new-instance v11, Landroidx/media3/session/QueueTimeline;

    const/4 v13, 0x0

    invoke-direct {v11, v9, v13}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    :cond_22
    move-object/from16 v28, v5

    const/4 v4, 0x0

    goto/16 :goto_18

    :cond_23
    const/4 v13, 0x0

    const/4 v15, -0x1

    if-eq v4, v15, :cond_22

    new-instance v11, Landroidx/media3/session/QueueTimeline;

    invoke-direct {v11, v9, v13}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    if-eqz v10, :cond_20

    invoke-virtual {v11}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result v10

    if-lt v4, v10, :cond_24

    const/4 v10, 0x0

    goto :goto_15

    :cond_24
    invoke-virtual {v11, v4}, Landroidx/media3/session/QueueTimeline;->s(I)Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    move-result-object v10

    iget-object v10, v10, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->a:Landroidx/media3/common/MediaItem;

    :goto_15
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-static {v10, v12, v8}, Landroidx/media3/session/LegacyConversions;->k(Ljava/lang/String;Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v32

    iget-object v8, v11, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    iget-object v11, v11, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    if-lt v4, v10, :cond_26

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ne v4, v10, :cond_25

    if-eqz v11, :cond_25

    goto :goto_16

    :cond_25
    const/4 v10, 0x0

    goto :goto_17

    :cond_26
    :goto_16
    move/from16 v10, v26

    :goto_17
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ne v4, v10, :cond_27

    new-instance v10, Landroidx/media3/session/QueueTimeline;

    new-instance v31, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    const-wide/16 v33, -0x1

    invoke-direct/range {v31 .. v36}, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;-><init>(Landroidx/media3/common/MediaItem;JJ)V

    move-object/from16 v11, v31

    invoke-direct {v10, v8, v11}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    move-object/from16 v28, v5

    move-object v11, v10

    goto :goto_18

    :cond_27
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    iget-wide v9, v10, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->b:J

    new-instance v13, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v13}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object/from16 v28, v5

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v4}, Lcom/google/common/collect/ImmutableList;->I(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    new-instance v31, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    move-wide/from16 v33, v9

    invoke-direct/range {v31 .. v36}, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;-><init>(Landroidx/media3/common/MediaItem;JJ)V

    move-object/from16 v5, v31

    invoke-virtual {v13, v5}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/google/common/collect/ImmutableList;->I(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    new-instance v5, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v13}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-direct {v5, v8, v11}, Landroidx/media3/session/QueueTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/QueueTimeline$QueuedMediaItem;)V

    move-object v11, v5

    :goto_18
    move v5, v4

    move-object/from16 v65, v28

    :goto_19
    if-eqz v25, :cond_28

    move-object/from16 v4, v25

    iget v8, v4, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->c:I

    goto :goto_1a

    :cond_28
    move-object/from16 v4, v25

    const/4 v8, 0x0

    :goto_1a
    new-instance v9, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const-wide/16 v28, 0x0

    if-nez v7, :cond_29

    move-object v13, v11

    move-wide/from16 v10, v28

    goto :goto_1b

    :cond_29
    move-object v13, v11

    iget-wide v10, v7, Landroidx/media3/session/legacy/PlaybackStateCompat;->f:J

    :goto_1b
    if-nez v7, :cond_2a

    :goto_1c
    move-object/from16 v31, v4

    move/from16 v25, v5

    const/4 v15, 0x0

    goto :goto_1d

    :cond_2a
    iget v15, v7, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    goto :goto_1c

    :pswitch_1
    move-object/from16 v31, v4

    move/from16 v25, v5

    move/from16 v15, v26

    :goto_1d
    const-wide/16 v4, 0x4

    invoke-static {v10, v11, v4, v5}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v32

    if-eqz v32, :cond_2b

    if-eqz v15, :cond_2c

    :cond_2b
    move-wide/from16 v32, v4

    goto :goto_1f

    :cond_2c
    move-wide/from16 v32, v4

    :cond_2d
    :goto_1e
    move/from16 v4, v26

    goto :goto_20

    :goto_1f
    const-wide/16 v4, 0x2

    invoke-static {v10, v11, v4, v5}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-eqz v4, :cond_2e

    if-nez v15, :cond_2d

    :cond_2e
    const-wide/16 v4, 0x200

    invoke-static {v10, v11, v4, v5}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_1e

    :goto_20
    invoke-virtual {v9, v4}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_2f
    const-wide/16 v4, 0x400

    invoke-static {v10, v11, v4, v5}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-nez v4, :cond_30

    const-wide/16 v4, 0x800

    invoke-static {v10, v11, v4, v5}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-nez v4, :cond_30

    const-wide/16 v4, 0x2000

    invoke-static {v10, v11, v4, v5}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_30
    const/16 v4, 0x1f

    invoke-virtual {v9, v4}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_31
    const-wide/16 v4, 0x4000

    invoke-static {v10, v11, v4, v5}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-nez v4, :cond_33

    move-object v4, v6

    const-wide/32 v5, 0x8000

    invoke-static {v10, v11, v5, v6}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v5

    if-nez v5, :cond_32

    const-wide/32 v5, 0x10000

    invoke-static {v10, v11, v5, v6}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v5

    if-nez v5, :cond_32

    const-wide/32 v5, 0x20000

    invoke-static {v10, v11, v5, v6}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_32
    :goto_21
    const/4 v15, 0x2

    goto :goto_22

    :cond_33
    move-object v4, v6

    goto :goto_21

    :goto_22
    invoke-virtual {v9, v15}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_34
    const-wide/16 v5, 0x8

    invoke-static {v10, v11, v5, v6}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v5

    if-eqz v5, :cond_35

    const/16 v5, 0xb

    invoke-virtual {v9, v5}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_35
    const-wide/16 v5, 0x40

    invoke-static {v10, v11, v5, v6}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v5

    if-eqz v5, :cond_36

    const/16 v5, 0xc

    invoke-virtual {v9, v5}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_36
    const-wide/16 v5, 0x100

    invoke-static {v10, v11, v5, v6}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v5

    const/4 v6, 0x5

    const/4 v15, 0x4

    move-object/from16 v37, v4

    iget-object v4, v9, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    if-eqz v5, :cond_37

    filled-new-array {v6, v15}, [I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    :cond_37
    move/from16 v74, v6

    move-object v5, v7

    const-wide/16 v6, 0x20

    invoke-static {v10, v11, v6, v7}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v6

    if-eqz v6, :cond_38

    const/16 v6, 0x9

    const/16 v7, 0x8

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    :cond_38
    const-wide/16 v6, 0x10

    invoke-static {v10, v11, v6, v7}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v6

    const/4 v7, 0x6

    move/from16 v75, v15

    const/4 v15, 0x7

    if-eqz v6, :cond_39

    filled-new-array {v15, v7}, [I

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    :cond_39
    move v6, v8

    const-wide/32 v7, 0x400000

    invoke-static {v10, v11, v7, v8}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/16 v7, 0xd

    invoke-virtual {v9, v7}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_3a
    const-wide/16 v7, 0x1

    invoke-static {v10, v11, v7, v8}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_3b

    invoke-virtual {v9, v8}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_3b
    const/16 v7, 0x22

    const/16 v8, 0x1a

    const/4 v15, 0x1

    if-ne v6, v15, :cond_3d

    filled-new-array {v8, v7}, [I

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    :cond_3c
    :goto_23
    const/4 v6, 0x6

    goto :goto_24

    :cond_3d
    const/4 v15, 0x2

    if-ne v6, v15, :cond_3c

    const/16 v6, 0x19

    const/16 v15, 0x21

    filled-new-array {v8, v7, v6, v15}, [I

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    goto :goto_23

    :goto_24
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v4, v6}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    and-long v6, v16, v32

    cmp-long v4, v6, v28

    if-eqz v4, :cond_3e

    const/16 v4, 0x14

    invoke-virtual {v9, v4}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_3e
    const-wide/16 v6, 0x1000

    invoke-static {v10, v11, v6, v7}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v4, 0xa

    invoke-virtual {v9, v4}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_3f
    if-eqz v18, :cond_41

    const-wide/32 v6, 0x40000

    invoke-static {v10, v11, v6, v7}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-eqz v4, :cond_40

    const/16 v4, 0xf

    invoke-virtual {v9, v4}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_40
    const-wide/32 v6, 0x200000

    invoke-static {v10, v11, v6, v7}, Landroidx/media3/session/LegacyConversions;->y(JJ)Z

    move-result v4

    if-eqz v4, :cond_41

    const/16 v4, 0xe

    invoke-virtual {v9, v4}, Landroidx/media3/common/Player$Commands$Builder;->a(I)V

    :cond_41
    invoke-virtual {v9}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    move-result-object v4

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget-object v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    if-ne v1, v6, :cond_42

    iget-object v1, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    :goto_25
    move-object/from16 v50, v1

    goto :goto_26

    :cond_42
    if-nez v6, :cond_43

    sget-object v1, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    goto :goto_25

    :cond_43
    new-instance v1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    iput-object v6, v1, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    new-instance v6, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v6, v1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    move-object v1, v6

    goto :goto_25

    :goto_26
    iget v1, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->s(I)I

    move-result v1

    iget v6, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    invoke-static {v6}, Landroidx/media3/session/LegacyConversions;->u(I)Z

    move-result v6

    if-ne v14, v5, :cond_45

    if-eqz v19, :cond_44

    goto :goto_27

    :cond_44
    iget-object v7, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v8, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    move/from16 v16, v1

    move/from16 v17, v6

    const/4 v6, 0x0

    goto/16 :goto_2f

    :cond_45
    :goto_27
    new-instance v7, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v7}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    sget-object v8, Landroidx/media3/session/SessionCommand;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7, v8}, Landroidx/media3/session/SessionCommands$Builder;->a(Ljava/util/List;)V

    iget-object v7, v7, Landroidx/media3/session/SessionCommands$Builder;->a:Ljava/util/HashSet;

    if-nez v18, :cond_47

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_46
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/session/SessionCommand;

    iget v10, v9, Landroidx/media3/session/SessionCommand;->a:I

    const v11, 0x9c4a

    if-ne v10, v11, :cond_46

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_47
    if-eqz v5, :cond_49

    iget-object v8, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    iget-object v10, v9, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->b:Ljava/lang/String;

    iget-object v9, v9, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->e:Landroid/os/Bundle;

    new-instance v11, Landroidx/media3/session/SessionCommand;

    if-nez v9, :cond_48

    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_48
    invoke-direct {v11, v10, v9}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_49
    new-instance v8, Landroidx/media3/session/SessionCommands;

    invoke-direct {v8, v7}, Landroidx/media3/session/SessionCommands;-><init>(Ljava/util/HashSet;)V

    if-nez v5, :cond_4a

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    move/from16 v16, v1

    move/from16 v17, v6

    move-object v1, v7

    const/4 v6, 0x0

    goto/16 :goto_2e

    :cond_4a
    iget-object v7, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->j:Ljava/util/List;

    new-instance v9, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    iget-object v11, v10, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->b:Ljava/lang/String;

    iget-object v14, v10, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->e:Landroid/os/Bundle;

    if-eqz v14, :cond_4b

    const-string v15, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    move/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v15, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    goto :goto_2a

    :cond_4b
    move/from16 v16, v1

    const/4 v15, 0x0

    :goto_2a
    new-instance v1, Landroidx/media3/session/CommandButton$Builder;

    move/from16 v17, v6

    iget v6, v10, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->d:I

    invoke-direct {v1, v15, v6}, Landroidx/media3/session/CommandButton$Builder;-><init>(II)V

    new-instance v6, Landroidx/media3/session/SessionCommand;

    if-nez v14, :cond_4c

    sget-object v15, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_2b

    :cond_4c
    move-object v15, v14

    :goto_2b
    invoke-direct {v6, v11, v15}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v11, v1, Landroidx/media3/session/CommandButton$Builder;->c:I

    const/4 v15, -0x1

    if-ne v11, v15, :cond_4d

    const/4 v11, 0x1

    goto :goto_2c

    :cond_4d
    const/4 v11, 0x0

    :goto_2c
    const-string v15, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v11, v15}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iput-object v6, v1, Landroidx/media3/session/CommandButton$Builder;->b:Landroidx/media3/session/SessionCommand;

    const/4 v6, 0x0

    iput-object v6, v1, Landroidx/media3/session/CommandButton$Builder;->j:Ljava/lang/Object;

    iget-object v10, v10, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->c:Ljava/lang/CharSequence;

    iput-object v10, v1, Landroidx/media3/session/CommandButton$Builder;->f:Ljava/lang/CharSequence;

    const/4 v15, 0x1

    iput-boolean v15, v1, Landroidx/media3/session/CommandButton$Builder;->h:Z

    if-eqz v14, :cond_4e

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v10, v1, Landroidx/media3/session/CommandButton$Builder;->g:Landroid/os/Bundle;

    :cond_4e
    if-eqz v14, :cond_4f

    const-string v10, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT"

    invoke-virtual {v14, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2d

    :cond_4f
    move-object v10, v6

    :goto_2d
    if-eqz v10, :cond_51

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v14, "content"

    invoke-static {v11, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_50

    const-string v14, "android.resource"

    invoke-static {v11, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    :cond_50
    invoke-virtual {v1, v10}, Landroidx/media3/session/CommandButton$Builder;->b(Landroid/net/Uri;)V

    :cond_51
    invoke-virtual {v1}, Landroidx/media3/session/CommandButton$Builder;->a()Landroidx/media3/session/CommandButton;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    move/from16 v1, v16

    move/from16 v6, v17

    goto/16 :goto_29

    :cond_52
    move/from16 v16, v1

    move/from16 v17, v6

    const/4 v6, 0x0

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v7, v37

    invoke-static {v1, v4, v7}, Landroidx/media3/session/CommandButton;->k(Ljava/util/List;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_2e
    move-object v7, v8

    move-object v8, v1

    :goto_2f
    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->a:Landroid/content/Context;

    invoke-static {v5, v1}, Landroidx/media3/session/LegacyConversions;->o(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroid/content/Context;)Landroidx/media3/common/PlaybackException;

    move-result-object v9

    if-nez v5, :cond_53

    :goto_30
    move-wide/from16 v10, v23

    goto :goto_34

    :cond_53
    iget v10, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    iget v11, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->g:I

    iget-object v14, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->h:Ljava/lang/CharSequence;

    iget-object v15, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->l:Landroid/os/Bundle;

    const/4 v6, 0x7

    if-eq v10, v6, :cond_57

    if-nez v11, :cond_54

    goto :goto_33

    :cond_54
    invoke-static {v11}, Landroidx/media3/session/LegacyConversions;->t(I)I

    move-result v6

    new-instance v10, Landroidx/media3/session/SessionError;

    if-eqz v14, :cond_55

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_55
    invoke-static {v6, v1}, Landroidx/media3/session/LegacyConversions;->x(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_31
    if-eqz v15, :cond_56

    goto :goto_32

    :cond_56
    sget-object v15, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_32
    invoke-direct {v10, v6, v1, v15}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    move-object v6, v10

    goto :goto_30

    :cond_57
    :goto_33
    move-wide/from16 v10, v23

    const/4 v6, 0x0

    :goto_34
    invoke-static {v5, v12, v10, v11}, Landroidx/media3/session/LegacyConversions;->c(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v14

    invoke-static {v5, v12, v10, v11}, Landroidx/media3/session/LegacyConversions;->b(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v38

    move-object/from16 v18, v6

    move-object v1, v7

    invoke-static {v5, v12, v10, v11}, Landroidx/media3/session/LegacyConversions;->b(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v6

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    invoke-static {v12}, Landroidx/media3/session/LegacyConversions;->d(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/media3/session/MediaUtils;->b(JJ)I

    move-result v40

    invoke-static {v5, v12, v10, v11}, Landroidx/media3/session/LegacyConversions;->b(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v6

    invoke-static {v5, v12, v10, v11}, Landroidx/media3/session/LegacyConversions;->c(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v8

    sub-long v41, v6, v8

    if-nez v12, :cond_59

    :cond_58
    const/4 v6, 0x0

    goto :goto_35

    :cond_59
    const-string v6, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {v12, v6}, Landroidx/media3/session/legacy/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v6, v28

    if-eqz v6, :cond_58

    const/4 v6, 0x1

    :goto_35
    if-nez v5, :cond_5a

    sget-object v7, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    goto :goto_36

    :cond_5a
    new-instance v7, Landroidx/media3/common/PlaybackParameters;

    iget v8, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->e:F

    invoke-direct {v7, v8}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    :goto_36
    if-nez v31, :cond_5b

    sget-object v8, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    move-object/from16 v53, v8

    move-object/from16 v8, v31

    goto :goto_37

    :cond_5b
    move-object/from16 v8, v31

    iget-object v9, v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->b:Landroidx/media3/common/AudioAttributes;

    move-object/from16 v53, v9

    :goto_37
    if-nez v5, :cond_5c

    :goto_38
    const/16 v59, 0x0

    goto :goto_39

    :cond_5c
    iget v9, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    packed-switch v9, :pswitch_data_1

    :pswitch_2
    goto :goto_38

    :pswitch_3
    const/16 v59, 0x1

    :goto_39
    if-nez v5, :cond_5e

    :pswitch_4
    move-object/from16 v24, v1

    :cond_5d
    const/4 v1, 0x1

    goto :goto_3c

    :cond_5e
    :try_start_0
    iget v9, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    invoke-static {v12}, Landroidx/media3/session/LegacyConversions;->d(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v31

    const-wide v43, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v24, v31, v43

    if-nez v24, :cond_60

    :cond_5f
    const/4 v10, 0x0

    goto :goto_3a

    :cond_60
    invoke-static {v5, v12, v10, v11}, Landroidx/media3/session/LegacyConversions;->c(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v10

    cmp-long v10, v10, v31

    if-ltz v10, :cond_5f

    const/4 v10, 0x1

    :goto_3a
    packed-switch v9, :pswitch_data_2

    new-instance v10, Landroidx/media3/session/LegacyConversions$ConversionException;

    new-instance v11, Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroidx/media3/session/LegacyConversions$ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v24, v1

    :try_start_1
    const-string v1, "Invalid state of PlaybackStateCompat: "

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Landroidx/media3/session/LegacyConversions$ConversionException; {:try_start_1 .. :try_end_1} :catch_1

    :pswitch_5
    move-object/from16 v24, v1

    const/4 v1, 0x2

    goto :goto_3c

    :pswitch_6
    move-object/from16 v24, v1

    :cond_61
    const/4 v1, 0x3

    goto :goto_3c

    :pswitch_7
    move-object/from16 v24, v1

    if-eqz v10, :cond_61

    :goto_3b
    move/from16 v1, v75

    goto :goto_3c

    :pswitch_8
    move-object/from16 v24, v1

    if-eqz v10, :cond_5d

    goto :goto_3b

    :goto_3c
    move/from16 v62, v1

    goto :goto_3d

    :catch_0
    move-object/from16 v24, v1

    :catch_1
    iget v1, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Received invalid playback state "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from package "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Keeping the previous state."

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    iget-object v1, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget v1, v1, Landroidx/media3/session/PlayerInfo;->A:I

    goto :goto_3c

    :goto_3d
    if-nez v5, :cond_63

    :cond_62
    const/16 v63, 0x0

    goto :goto_3e

    :cond_63
    iget v1, v5, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_62

    const/16 v63, 0x1

    :goto_3e
    if-nez v8, :cond_64

    sget-object v1, Landroidx/media3/common/DeviceInfo;->e:Landroidx/media3/common/DeviceInfo;

    :goto_3f
    move-object/from16 v56, v1

    goto :goto_43

    :cond_64
    new-instance v1, Landroidx/media3/common/DeviceInfo$Builder;

    iget v9, v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_65

    const/4 v9, 0x1

    goto :goto_40

    :cond_65
    const/4 v9, 0x0

    :goto_40
    invoke-direct {v1, v9}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    iget v9, v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->d:I

    iput v9, v1, Landroidx/media3/common/DeviceInfo$Builder;->c:I

    iget-object v9, v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->f:Ljava/lang/String;

    iget v10, v1, Landroidx/media3/common/DeviceInfo$Builder;->a:I

    if-nez v10, :cond_67

    if-nez v9, :cond_66

    goto :goto_41

    :cond_66
    const/4 v10, 0x0

    goto :goto_42

    :cond_67
    :goto_41
    const/4 v10, 0x1

    :goto_42
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object v9, v1, Landroidx/media3/common/DeviceInfo$Builder;->d:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/media3/common/DeviceInfo$Builder;->a()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    goto :goto_3f

    :goto_43
    if-nez v8, :cond_68

    const/16 v57, 0x0

    goto :goto_44

    :cond_68
    iget v1, v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->e:I

    move/from16 v57, v1

    :goto_44
    if-nez v8, :cond_6a

    :cond_69
    const/16 v58, 0x0

    goto :goto_45

    :cond_6a
    iget v1, v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->e:I

    if-nez v1, :cond_69

    const/16 v58, 0x1

    :goto_45
    iget-object v1, v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-wide v8, v1, Landroidx/media3/session/PlayerInfo;->C:J

    iget-wide v10, v1, Landroidx/media3/session/PlayerInfo;->D:J

    move-object/from16 v22, v4

    iget-wide v3, v1, Landroidx/media3/session/PlayerInfo;->E:J

    iget-object v1, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    move-object/from16 v27, v1

    invoke-virtual {v13}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result v1

    move/from16 v2, v25

    if-lt v2, v1, :cond_6b

    const/4 v1, 0x0

    goto :goto_46

    :cond_6b
    invoke-virtual {v13, v2}, Landroidx/media3/session/QueueTimeline;->s(I)Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->a:Landroidx/media3/common/MediaItem;

    :goto_46
    invoke-static {v2, v1, v14, v15, v6}, Landroidx/media3/session/MediaControllerImplLegacy;->U0(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v32

    new-instance v31, Landroidx/media3/session/SessionPositionInfo;

    move-wide/from16 v36, v35

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide v43, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v45, v36

    move-wide/from16 v47, v38

    move/from16 v33, v6

    invoke-direct/range {v31 .. v48}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    new-instance v37, Landroidx/media3/session/PlayerInfo;

    sget-object v41, Landroidx/media3/session/SessionPositionInfo;->k:Landroidx/media3/common/Player$PositionInfo;

    sget-object v47, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    sget-object v55, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    sget-object v72, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    sget-object v73, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v49, 0x0

    const/high16 v51, 0x3f800000    # 1.0f

    const/high16 v52, 0x3f800000    # 1.0f

    const/16 v54, 0x0

    const/16 v60, 0x1

    const/16 v61, 0x0

    const/16 v64, 0x0

    move-object/from16 v42, v41

    move-wide/from16 v70, v3

    move-object/from16 v44, v7

    move-wide/from16 v66, v8

    move-wide/from16 v68, v10

    move-object/from16 v48, v13

    move/from16 v45, v16

    move/from16 v46, v17

    move-object/from16 v38, v23

    move-object/from16 v40, v31

    invoke-direct/range {v37 .. v73}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FFLandroidx/media3/common/AudioAttributes;ILandroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    new-instance v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-object/from16 v40, v4

    move-object/from16 v46, v18

    move-object/from16 v44, v19

    move-object/from16 v43, v22

    move-object/from16 v42, v24

    move-object/from16 v45, v27

    move-object/from16 v41, v37

    invoke-direct/range {v40 .. v46}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    move-object/from16 v7, v20

    iget-wide v8, v7, Landroidx/media3/session/MediaController;->f:J

    const/16 v76, 0x3

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v10, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v10, v10, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->p()Z

    move-result v10

    iget-object v11, v4, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v13, v11, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v13}, Landroidx/media3/common/Timeline;->p()Z

    move-result v13

    if-eqz v10, :cond_6c

    if-eqz v13, :cond_6c

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_47
    const/16 v26, 0x1

    goto/16 :goto_4d

    :cond_6c
    if-eqz v10, :cond_6d

    if-nez v13, :cond_6d

    move-object v10, v6

    goto :goto_47

    :cond_6d
    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v2}, Landroidx/media3/session/PlayerInfo;->i()Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v11, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v10, Landroidx/media3/session/QueueTimeline;

    iget-object v13, v10, Landroidx/media3/session/QueueTimeline;->e:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v10, Landroidx/media3/session/QueueTimeline;->f:Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    if-eqz v10, :cond_6e

    iget-object v10, v10, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->a:Landroidx/media3/common/MediaItem;

    invoke-virtual {v2, v10}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    goto :goto_49

    :cond_6e
    const/4 v15, 0x0

    :goto_48
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ge v15, v10, :cond_70

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;

    iget-object v10, v10, Landroidx/media3/session/QueueTimeline$QueuedMediaItem;->a:Landroidx/media3/common/MediaItem;

    invoke-virtual {v2, v10}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    :goto_49
    const/4 v10, 0x1

    goto :goto_4a

    :cond_6f
    add-int/lit8 v15, v15, 0x1

    goto :goto_48

    :cond_70
    const/4 v10, 0x0

    :goto_4a
    if-nez v10, :cond_71

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_47

    :cond_71
    invoke-virtual {v11}, Landroidx/media3/session/PlayerInfo;->i()Landroidx/media3/common/MediaItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    invoke-static {v2, v1, v8, v9}, Landroidx/media3/session/LegacyConversions;->c(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v1

    invoke-static {v5, v12, v8, v9}, Landroidx/media3/session/LegacyConversions;->c(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v8

    cmp-long v3, v8, v28

    if-nez v3, :cond_72

    iget v3, v11, Landroidx/media3/session/PlayerInfo;->h:I

    const/4 v15, 0x1

    if-ne v3, v15, :cond_72

    move-object v10, v6

    move-object/from16 v30, v10

    goto :goto_4c

    :cond_72
    sub-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0x64

    cmp-long v1, v1, v5

    if-lez v1, :cond_73

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v10, v1

    :goto_4b
    const/16 v30, 0x0

    goto :goto_4c

    :cond_73
    const/4 v10, 0x0

    goto :goto_4b

    :goto_4c
    move-object/from16 v3, v30

    goto/16 :goto_47

    :cond_74
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v3, v10

    move-object v10, v6

    :goto_4d
    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    const/4 v3, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/session/MediaControllerImplLegacy;->Z0(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;ZLandroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->o:Z

    if-eqz v1, :cond_76

    const/4 v15, 0x0

    iput-boolean v15, v0, Landroidx/media3/session/MediaControllerImplLegacy;->o:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, v7, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_75

    move/from16 v9, v26

    goto :goto_4e

    :cond_75
    move v9, v15

    :goto_4e
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, v7, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_76
    :goto_4f
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0x17
        0x11
        0x12
        0x10
        0x15
        0x20
    .end array-data
.end method

.method public final W()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final W0()V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->s:Z

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v2, Landroidx/media3/session/QueueTimeline;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->b:I

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/media3/session/QueueTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-object v5, v0, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    invoke-virtual {v2, v1}, Landroidx/media3/session/QueueTimeline;->r(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->v:Z

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->c()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v6}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->g()V

    goto/16 :goto_0

    :cond_1
    iget-object v6, v5, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v5, v5, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    iget-object v7, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->a:Landroid/net/Uri;

    if-eqz v7, :cond_5

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->v:Z

    iget-object v7, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v5, :cond_3

    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v7, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->a:Landroid/net/Uri;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->c:Landroid/os/Bundle;

    if-nez v6, :cond_2

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_2
    invoke-virtual {v5, v7, v6}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->f(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v7, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->a:Landroid/net/Uri;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->c:Landroid/os/Bundle;

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_4
    invoke-virtual {v5, v7, v6}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->j(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    iget-object v7, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->b:Ljava/lang/String;

    iget-object v10, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    if-eqz v7, :cond_9

    iget-object v5, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean v5, v5, Landroidx/media3/session/PlayerInfo;->v:Z

    iget-object v7, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v5, :cond_7

    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v7, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->b:Ljava/lang/String;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->c:Landroid/os/Bundle;

    if-nez v6, :cond_6

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_6
    invoke-virtual {v5, v7, v6}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v7, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->b:Ljava/lang/String;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->c:Landroid/os/Bundle;

    if-nez v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_8
    invoke-virtual {v5, v7, v6}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    iget-object v7, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean v7, v7, Landroidx/media3/session/PlayerInfo;->v:Z

    iget-object v10, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v7, :cond_b

    invoke-virtual {v10}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v7

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->c:Landroid/os/Bundle;

    if-nez v6, :cond_a

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_a
    invoke-virtual {v7, v5, v6}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_b
    invoke-virtual {v10}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v7

    iget-object v6, v6, Landroidx/media3/common/MediaItem$RequestMetadata;->c:Landroid/os/Bundle;

    if-nez v6, :cond_c

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_c
    invoke-virtual {v7, v5, v6}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->h(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v5, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v5, v5, Landroidx/media3/common/Player$PositionInfo;->f:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v6, v6, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v6, v6, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v6, v6, Landroidx/media3/common/Player$PositionInfo;->f:J

    invoke-virtual {v5, v6, v7}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->l(J)V

    :cond_d
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v5, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-virtual {v2}, Landroidx/media3/session/QueueTimeline;->o()I

    move-result v10

    if-ge v7, v10, :cond_10

    if-eq v7, v1, :cond_f

    invoke-virtual {v2, v7}, Landroidx/media3/session/QueueTimeline;->r(I)J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v2, v7, v0, v3, v4}, Landroidx/media3/session/QueueTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-object v10, v0, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_10
    invoke-virtual {p0, v6, v5}, Landroidx/media3/session/MediaControllerImplLegacy;->Q0(ILjava/util/List;)V

    :cond_11
    return-void
.end method

.method public final X(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->G(IZ)V

    return-void
.end method

.method public final X0()V
    .locals 10

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->h()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaControllerCompat;->i()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/session/MediaControllerImplLegacy;->T0(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v4}, Landroidx/media3/session/legacy/MediaControllerCompat;->f()Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaControllerCompat;->j()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/session/MediaControllerImplLegacy;->S0(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v6}, Landroidx/media3/session/legacy/MediaControllerCompat;->k()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaControllerCompat;->m()I

    move-result v7

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v8}, Landroidx/media3/session/legacy/MediaControllerCompat;->n()I

    move-result v8

    iget-object v9, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v9}, Landroidx/media3/session/legacy/MediaControllerCompat;->d()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->V0(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->d:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final Y0(IJ)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->v()I

    move-result v6

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v7, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->o()I

    move-result v8

    if-ge v1, v8, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->j()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x2

    if-eq v1, v6, :cond_5

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v10, v10, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v10, v10, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    check-cast v10, Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v10, v1}, Landroidx/media3/session/QueueTimeline;->r(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_4

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v6}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->s(J)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v10, "Cannot seek to new media item due to the missing queue Id at media item, mediaItemIndex="

    invoke-static {v1, v10}, La;->u(ILjava/lang/String;)V

    :cond_5
    move v1, v6

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentPosition()J

    move-result-wide v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v2, v12

    if-nez v14, :cond_6

    move-wide v2, v10

    const/4 v14, 0x0

    :goto_2
    move-wide v15, v12

    goto :goto_3

    :cond_6
    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v14}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->l(J)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_2

    :goto_3
    const-wide/16 v12, 0x0

    if-nez v6, :cond_9

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->B0()J

    move-result-wide v8

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDuration()J

    move-result-wide v17

    cmp-long v10, v2, v10

    if-gez v10, :cond_7

    move-wide v8, v2

    goto :goto_4

    :cond_7
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_4
    cmp-long v10, v17, v15

    if-nez v10, :cond_8

    move v10, v5

    goto :goto_5

    :cond_8
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v8

    div-long v10, v10, v17

    long-to-int v10, v10

    :goto_5
    sub-long v15, v8, v2

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move-wide/from16 v29, v15

    move-wide/from16 v24, v17

    goto :goto_6

    :cond_9
    move/from16 v28, v5

    move-wide/from16 v26, v12

    move-wide/from16 v29, v26

    move-wide/from16 v24, v15

    :goto_6
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    move-result v8

    if-nez v8, :cond_a

    new-instance v8, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v7, v1, v8, v12, v13}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    invoke-static {v1, v7, v2, v3, v5}, Landroidx/media3/session/MediaControllerImplLegacy;->U0(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v20

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    new-instance v19, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x0

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    invoke-direct/range {v19 .. v36}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo;->e(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget v2, v1, Landroidx/media3/session/PlayerInfo;->A:I

    if-eq v2, v4, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    :cond_b
    move-object v8, v1

    new-instance v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v9, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v11, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v12, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    invoke-virtual {v0, v7, v14, v6}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final Z()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Z0(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;ZLandroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    iget-object v5, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    const/4 v8, 0x1

    if-eqz p3, :cond_0

    iput-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iput-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplLegacy;->R0(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-boolean v8, v0, Landroidx/media3/session/MediaControllerImplLegacy;->s:Z

    :cond_0
    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v9, v0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    if-eqz p1, :cond_2

    invoke-virtual {v9}, Landroidx/media3/session/MediaController;->W0()V

    iget-object v1, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v9, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/session/j0;

    invoke-direct {v3, v0, v2}, Landroidx/media3/session/j0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v10, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v11, v10, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    iget-object v12, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v13, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->f:Landroidx/media3/session/SessionError;

    iget-object v14, v12, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v11, v14}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v14, 0x4

    const/4 v15, 0x0

    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplLegacy;->d:Landroidx/media3/common/util/ListenerSet;

    if-nez v11, :cond_3

    new-instance v11, Landroidx/media3/session/h0;

    invoke-direct {v11, v2, v14}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    invoke-virtual {v8, v15, v11}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_3
    iget-object v11, v6, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget-object v15, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget-object v14, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-static {v11, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v15, 0x5

    if-nez v11, :cond_4

    new-instance v11, Landroidx/media3/session/h0;

    invoke-direct {v11, v2, v15}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/16 v15, 0xf

    invoke-virtual {v8, v15, v11}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_4
    const/16 v11, 0xb

    if-eqz v3, :cond_5

    new-instance v15, Landroidx/media3/session/i0;

    invoke-direct {v15, v7, v2, v3}, Landroidx/media3/session/i0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;)V

    invoke-virtual {v8, v11, v15}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_5
    if-eqz v4, :cond_6

    new-instance v3, Landroidx/media3/session/s;

    const/4 v15, 0x4

    invoke-direct {v3, v2, v4, v15}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v4, 0x1

    invoke-virtual {v8, v4, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_6
    iget-object v3, v6, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    sget-object v4, Landroidx/media3/session/MediaUtils;->a:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    const/4 v4, 0x7

    if-eqz v3, :cond_7

    iget v15, v3, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    if-ne v15, v4, :cond_7

    const/4 v15, 0x1

    goto :goto_0

    :cond_7
    const/4 v15, 0x0

    :goto_0
    if-eqz v14, :cond_8

    iget v11, v14, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    if-ne v11, v4, :cond_8

    const/4 v11, 0x1

    goto :goto_1

    :cond_8
    const/4 v11, 0x0

    :goto_1
    const/16 v4, 0xa

    if-eqz v15, :cond_9

    if-eqz v11, :cond_9

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v11, v3, Landroidx/media3/session/legacy/PlaybackStateCompat;->g:I

    iget v15, v14, Landroidx/media3/session/legacy/PlaybackStateCompat;->g:I

    if-ne v11, v15, :cond_a

    iget-object v3, v3, Landroidx/media3/session/legacy/PlaybackStateCompat;->h:Ljava/lang/CharSequence;

    iget-object v11, v14, Landroidx/media3/session/legacy/PlaybackStateCompat;->h:Ljava/lang/CharSequence;

    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_9
    if-ne v15, v11, :cond_a

    goto :goto_2

    :cond_a
    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy;->a:Landroid/content/Context;

    invoke-static {v14, v3}, Landroidx/media3/session/LegacyConversions;->o(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroid/content/Context;)Landroidx/media3/common/PlaybackException;

    move-result-object v3

    new-instance v11, Lls;

    const/4 v14, 0x3

    invoke-direct {v11, v14, v3}, Lls;-><init>(ILandroidx/media3/common/PlaybackException;)V

    invoke-virtual {v8, v4, v11}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    if-eqz v3, :cond_b

    new-instance v11, Lls;

    const/4 v15, 0x4

    invoke-direct {v11, v15, v3}, Lls;-><init>(ILandroidx/media3/common/PlaybackException;)V

    invoke-virtual {v8, v4, v11}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_b
    :goto_2
    iget-object v3, v6, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    if-eq v3, v1, :cond_c

    new-instance v1, Landroidx/media3/session/k0;

    invoke-direct {v1, v0}, Landroidx/media3/session/k0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    const/16 v0, 0xe

    invoke-virtual {v8, v0, v1}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_c
    iget v0, v10, Landroidx/media3/session/PlayerInfo;->A:I

    iget v1, v12, Landroidx/media3/session/PlayerInfo;->A:I

    if-eq v0, v1, :cond_d

    new-instance v0, Landroidx/media3/session/h0;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/4 v15, 0x4

    invoke-virtual {v8, v15, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_d
    iget-boolean v0, v10, Landroidx/media3/session/PlayerInfo;->v:Z

    iget-boolean v1, v12, Landroidx/media3/session/PlayerInfo;->v:Z

    if-eq v0, v1, :cond_e

    new-instance v0, Landroidx/media3/session/h0;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/4 v3, 0x5

    invoke-virtual {v8, v3, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_3

    :cond_e
    const/4 v1, 0x7

    :goto_3
    iget-boolean v0, v10, Landroidx/media3/session/PlayerInfo;->x:Z

    iget-boolean v3, v12, Landroidx/media3/session/PlayerInfo;->x:Z

    const/16 v6, 0x8

    if-eq v0, v3, :cond_f

    new-instance v0, Landroidx/media3/session/h0;

    invoke-direct {v0, v2, v6}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    invoke-virtual {v8, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_f
    iget-object v0, v10, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    iget-object v1, v12, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, v1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x9

    const/16 v3, 0xc

    if-nez v0, :cond_10

    new-instance v0, Landroidx/media3/session/h0;

    invoke-direct {v0, v2, v1}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    invoke-virtual {v8, v3, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_10
    iget v0, v10, Landroidx/media3/session/PlayerInfo;->h:I

    iget v11, v12, Landroidx/media3/session/PlayerInfo;->h:I

    if-eq v0, v11, :cond_11

    new-instance v0, Landroidx/media3/session/h0;

    invoke-direct {v0, v2, v4}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    invoke-virtual {v8, v6, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_11
    iget-boolean v0, v10, Landroidx/media3/session/PlayerInfo;->i:Z

    iget-boolean v4, v12, Landroidx/media3/session/PlayerInfo;->i:Z

    if-eq v0, v4, :cond_12

    new-instance v0, Landroidx/media3/session/h0;

    const/16 v4, 0xb

    invoke-direct {v0, v2, v4}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    invoke-virtual {v8, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_12
    iget-object v0, v10, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    iget-object v1, v12, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Landroidx/media3/session/h0;

    invoke-direct {v0, v2, v3}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/16 v1, 0x14

    invoke-virtual {v8, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_13
    iget v0, v10, Landroidx/media3/session/PlayerInfo;->p:I

    iget v1, v12, Landroidx/media3/session/PlayerInfo;->p:I

    if-eq v0, v1, :cond_14

    new-instance v0, Landroidx/media3/session/h0;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/16 v1, 0x15

    invoke-virtual {v8, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_4

    :cond_14
    const/4 v4, 0x0

    :goto_4
    iget-object v0, v10, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget-object v1, v12, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v0, v1}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Landroidx/media3/session/h0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/16 v3, 0x1d

    invoke-virtual {v8, v3, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_5

    :cond_15
    const/4 v1, 0x1

    :goto_5
    iget v0, v10, Landroidx/media3/session/PlayerInfo;->t:I

    iget v3, v12, Landroidx/media3/session/PlayerInfo;->t:I

    if-ne v0, v3, :cond_16

    iget-boolean v0, v10, Landroidx/media3/session/PlayerInfo;->u:Z

    iget-boolean v3, v12, Landroidx/media3/session/PlayerInfo;->u:Z

    if-eq v0, v3, :cond_17

    :cond_16
    new-instance v0, Landroidx/media3/session/h0;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/16 v3, 0x1e

    invoke-virtual {v8, v3, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_17
    iget-object v0, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v3, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, v3}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Landroidx/media3/session/h0;

    const/4 v14, 0x3

    invoke-direct {v0, v2, v14}, Landroidx/media3/session/h0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;I)V

    const/16 v3, 0xd

    invoke-virtual {v8, v3, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_18
    iget-object v0, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, v2}, Landroidx/media3/session/SessionCommands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, v9, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_19

    move v0, v1

    goto :goto_6

    :cond_19
    move v0, v4

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, v9, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$Listener;->T()V

    :cond_1a
    iget-object v0, v7, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, v9, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1b

    move v0, v1

    goto :goto_7

    :cond_1b
    move v0, v4

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, v9, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaController$Listener;->z()Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$Listener;->x()V

    :cond_1c
    if-eqz v13, :cond_1e

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, v9, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1d

    goto :goto_8

    :cond_1d
    move v1, v4

    :goto_8
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, v9, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1e
    invoke-virtual {v8}, Landroidx/media3/common/util/ListenerSet;->b()V

    return-void
.end method

.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final a0(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p1, Landroidx/media3/session/SessionCommand;->c:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object p2, v1

    :goto_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->m(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/16 p1, -0x64

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->m:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/session/MediaControllerImplLegacy;->Z0(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;ZLandroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final b()Landroidx/media3/session/SessionCommands;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    return-object p0
.end method

.method public final b0()V
    .locals 0

    const-string p0, "Session doesn\'t support muting the player"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->P(Z)V

    return-void
.end method

.method public final c0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->I(I)V

    return-void
.end method

.method public final connect()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->c:Landroidx/media3/session/SessionToken;

    iget-object v1, v0, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v1}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getType()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    new-instance v1, Landroidx/media3/session/g0;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v1}, Landroidx/media3/session/MediaController;->Y0(Ljava/lang/Runnable;)V

    iget-object v0, v2, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/j0;

    invoke-direct {v1, p0, v3}, Landroidx/media3/session/j0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/j0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/j0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;I)V

    invoke-virtual {v2, v0}, Landroidx/media3/session/MediaController;->Y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->c(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->n(F)V

    return-void
.end method

.method public final d0()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    sget-object p0, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method public final e()Landroidx/media3/common/PlaybackException;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method

.method public final e0(Landroid/view/TextureView;)V
    .locals 0

    const-string p0, "Session doesn\'t support setting TextureView"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 10

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    invoke-virtual {p0, v3, v2, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->R0(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->W0()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final f0()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget p0, v0, Landroidx/media3/session/PlayerInfo;->t:I

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->h()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-result-object p0

    sget-object v0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->e:I

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(F)V
    .locals 0

    const-string p0, "Session doesn\'t support setting player volume"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final g0()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final getCurrentPosition()J
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-wide v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->q:J

    iget-wide v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->r:J

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    iget-wide v6, v0, Landroidx/media3/session/MediaController;->f:J

    invoke-static/range {v1 .. v7}, Landroidx/media3/session/MediaUtils;->c(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->q:J

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->d:J

    return-wide v0
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->A:I

    return p0
.end method

.method public final h0(IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplLegacy;->Y0(IJ)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->h:I

    return p0
.end method

.method public final i0()Landroidx/media3/common/Player$Commands;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public final isConnected()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->x:Z

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean p0, p0, Landroidx/media3/session/SessionPositionInfo;->b:Z

    return p0
.end method

.method public final j0(Z)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->w()Z

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0, v0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->i:Z

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    sget-object v0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->p(I)V

    return-void
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->v()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->Y0(IJ)V

    return-void
.end method

.method public final k0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->E:J

    return-wide v0
.end method

.method public final l()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->r()V

    return-void
.end method

.method public final l0(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->K(IILjava/util/List;)V

    return-void
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Landroidx/media3/common/Tracks;
    .locals 0

    sget-object p0, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    return-object p0
.end method

.method public final n0()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->v()I

    move-result p0

    return p0
.end method

.method public final o()Landroidx/media3/common/text/CueGroup;
    .locals 0

    const-string p0, "Session doesn\'t support getting Cue"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    sget-object p0, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method public final o0(Landroid/view/TextureView;)V
    .locals 0

    const-string p0, "Session doesn\'t support clearing TextureView"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final p()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final p0(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 0

    const-string p0, "Legacy session doesn\'t support setting audio attributes remotely"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->P(Z)V

    return-void
.end method

.method public final q()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->q()V

    return-void
.end method

.method public final q0()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->v:Z

    return p0
.end method

.method public final r0()Landroidx/media3/common/AudioAttributes;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method public final release()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->k:Z

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->j:Landroidx/media3/session/legacy/MediaBrowserCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->b()V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->j:Landroidx/media3/session/legacy/MediaBrowserCompat;

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->e:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->u(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V

    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->d:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->d()V

    return-void
.end method

.method public final s()Landroidx/media3/common/VideoSize;
    .locals 0

    const-string p0, "Session doesn\'t support getting VideoSize"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    sget-object p0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method public final s0()Landroidx/media3/common/DeviceInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method public final seekTo(J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->v()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy;->Y0(IJ)V

    return-void
.end method

.method public final stop()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget v2, v1, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v2, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-boolean v6, v2, Landroidx/media3/session/SessionPositionInfo;->b:Z

    iget-wide v9, v2, Landroidx/media3/session/SessionPositionInfo;->d:J

    iget-wide v11, v5, Landroidx/media3/common/Player$PositionInfo;->f:J

    invoke-static {v11, v12, v9, v10}, Landroidx/media3/session/MediaUtils;->b(JJ)I

    move-result v13

    new-instance v4, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    invoke-direct/range {v4 .. v21}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    invoke-virtual {v1, v4}, Landroidx/media3/session/PlayerInfo;->e(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget v4, v2, Landroidx/media3/session/PlayerInfo;->A:I

    if-eq v4, v3, :cond_1

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    :cond_1
    move-object v3, v1

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->s:Z

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->t()V

    return-void
.end method

.method public final t(F)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    new-instance v2, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v2, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerInfo;->c(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->n(F)V

    return-void
.end method

.method public final t0(II)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->b:I

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->c:I

    if-gt v1, p1, :cond_1

    if-eqz v0, :cond_0

    if-gt p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->K0()Z

    move-result v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v2, p1, v0}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat;->t(II)V

    return-void
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u0()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    return p0
.end method

.method public final v()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->b:I

    return p0
.end method

.method public final v0()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->i:Z

    return p0
.end method

.method public final w0(Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->R(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final x()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->B0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final x0(Ljava/util/List;IJ)V
    .locals 25

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->D()V

    return-void

    :cond_0
    sget-object v1, Landroidx/media3/session/QueueTimeline;->g:Landroidx/media3/session/QueueTimeline;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/QueueTimeline;->q(ILjava/util/List;)Landroidx/media3/session/QueueTimeline;

    move-result-object v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p3, v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p3

    :goto_0
    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v6, v6, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    move/from16 v7, p2

    invoke-static {v7, v3, v4, v5, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->U0(ILandroidx/media3/common/MediaItem;JZ)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v8

    new-instance v7, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    invoke-direct/range {v7 .. v24}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    invoke-static {v6, v6}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v3

    iput-object v1, v3, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    iput-object v7, v3, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    iput v2, v3, Landroidx/media3/session/PlayerInfo$Builder;->k:I

    invoke-virtual {v3}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v9

    new-instance v8, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    iget-object v11, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    iget-object v12, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v13, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->a1(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplLegacy;->R0(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->W0()V

    :cond_2
    return-void
.end method

.method public final y()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->a()V

    return-void
.end method

.method public final y0(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->Y0(IJ)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->o()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;->k()V

    return-void
.end method

.method public final z0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->p:Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->D:J

    return-wide v0
.end method
