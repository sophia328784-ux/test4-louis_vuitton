.class Landroidx/media3/session/MediaSessionServiceLegacyStub;
.super Landroidx/media3/session/legacy/MediaBrowserServiceCompat;
.source "SourceFile"


# instance fields
.field public final j:Landroidx/media3/session/legacy/MediaSessionManager;

.field public final k:Landroidx/media3/session/MediaSessionImpl;

.field public final l:Landroidx/media3/session/ConnectedControllersManager;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;-><init>()V

    iget-object v0, p1, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionManager;->a(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->j:Landroidx/media3/session/legacy/MediaSessionManager;

    iput-object p1, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->k:Landroidx/media3/session/MediaSessionImpl;

    new-instance v0, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/String;Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->b()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p0, p1, p3}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v4, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v4}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iget-object p2, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->k:Landroidx/media3/session/MediaSessionImpl;

    iget-object p2, p2, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/e;

    const/16 v5, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v4}, Landroidx/media3/common/util/ConditionVariable;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaSession$ConnectionResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/session/MediaSession$ConnectionResult;->a:Landroidx/media3/session/SessionCommands;

    iget-object p0, p0, Landroidx/media3/session/MediaSession$ConnectionResult;->b:Landroidx/media3/common/Player$Commands;

    iget-object p3, v1, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p3, p1, v3, p2, p0}, Landroidx/media3/session/ConnectedControllersManager;->a(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    sget-object p0, Landroidx/media3/session/MediaUtils;->a:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Couldn\'t get a result from onConnect"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public l(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 7

    new-instance v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->j:Landroidx/media3/session/legacy/MediaSessionManager;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionManager;->b(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v4

    sget-object p0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    const-string p0, "androidx.media.utils.MediaBrowserCompat.extras.CUSTOM_BROWSER_ACTION_LIMIT"

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final m(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->k:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onCreate()V

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->k(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    return-void
.end method
