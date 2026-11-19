.class Landroidx/media3/session/MediaSessionImpl$PlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerListener"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->h:I

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->o(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final B(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Landroidx/media3/session/PlayerInfo$Builder;

    iget-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-direct {p0, v1}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->r:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    return-void
.end method

.method public final H(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-boolean v1, p0, Landroidx/media3/session/PlayerInfo;->v:Z

    iget v2, p0, Landroidx/media3/session/PlayerInfo;->w:I

    invoke-virtual {p0, v2, p1, v1}, Landroidx/media3/session/PlayerInfo;->b(IIZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final K(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->e()Landroidx/media3/common/PlaybackException;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p1, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p1, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->e()Landroidx/media3/common/PlaybackException;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final L(ILandroidx/media3/common/MediaItem;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->b:I

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->k(Landroidx/media3/common/MediaItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final N(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->i:Z

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->p(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final O(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->o:Landroidx/media3/session/legacy/VolumeProviderCompat;

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    iput p1, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->d:I

    invoke-virtual {p0}, Landroidx/media3/session/legacy/VolumeProviderCompat;->a()Landroid/media/VolumeProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final P(J)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->C:J

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Q(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->B:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final R(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->G:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    new-instance p0, Landroidx/media3/session/q0;

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Landroidx/media3/session/q0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Landroidx/media3/session/MediaSessionImpl;->e(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public final S()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0, v3}, Landroidx/media3/session/ConnectedControllersManager;->h(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/common/PlaybackException;

    new-instance v4, Landroidx/media3/session/q0;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Landroidx/media3/session/MediaSessionImpl;->d(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final X(II)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Landroidx/media3/session/r0;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroidx/media3/session/r0;-><init>(III)V

    invoke-virtual {v0, p0}, Landroidx/media3/session/MediaSessionImpl;->e(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public final Y(Landroidx/media3/common/Player$Commands;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->g(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public final b(Landroidx/media3/common/VideoSize;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0, v0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    iput-object p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->l:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d0(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-object p2, p0, Landroidx/media3/session/PlayerInfo$Builder;->d:Landroidx/media3/common/Player$PositionInfo;

    iput-object p3, p0, Landroidx/media3/session/PlayerInfo$Builder;->e:Landroidx/media3/common/Player$PositionInfo;

    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->f:I

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()Landroidx/media3/session/MediaSessionImpl;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaSessionImpl;

    return-object p0
.end method

.method public final e0(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->y:Z

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->w()V

    return-void
.end method

.method public final f(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->p:I

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g0(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget v1, p0, Landroidx/media3/session/PlayerInfo;->z:I

    invoke-virtual {p0, p1, v1, p2}, Landroidx/media3/session/PlayerInfo;->b(IIZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerInfo;->c(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h0(F)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0, v0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    :goto_0
    iput v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->o:F

    iput p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i0(Landroidx/media3/common/AudioAttributes;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->q:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->a:I

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->n(Landroidx/media3/common/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m0(Landroidx/media3/common/Timeline;I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->X0()Landroidx/media3/session/SessionPositionInfo;

    move-result-object p0

    invoke-static {v1, v1}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v1

    iput-object p1, v1, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    iput-object p0, v1, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    iput p2, v1, Landroidx/media3/session/PlayerInfo$Builder;->k:I

    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->q(Landroidx/media3/common/Timeline;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o0(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0, v0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    iput-object p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->m:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->n(Landroidx/media3/common/MediaMetadata;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p0(J)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->D:J

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final q0(Landroidx/media3/common/Tracks;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->F:Landroidx/media3/common/Tracks;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    new-instance p0, Landroidx/media3/session/q0;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Landroidx/media3/session/q0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Landroidx/media3/session/MediaSessionImpl;->e(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public final r0(Landroidx/media3/common/DeviceInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->s:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->a:Landroidx/media3/common/PlaybackException;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final u0(J)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->E:J

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    return-void
.end method

.method public final x0(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->e()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerWrapper;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0, p0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->x:Z

    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    :try_start_0
    iget-object p0, v0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->r()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->w()V

    return-void
.end method
