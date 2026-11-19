.class Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackImpl;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionCallbackImpl"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;


# direct methods
.method public constructor <init>(Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackImpl;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 8

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackImpl;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;->b:Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->d:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    iget-object v2, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->b:Landroid/media/browse/MediaBrowser;

    :try_start_0
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "extra_service_version"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    const-string v4, "extra_messenger"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->c:Landroid/os/Bundle;

    invoke-direct {v5, v4, v6}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v5, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->f:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    :try_start_1
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->a:Landroid/content/Context;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "data_package_name"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_calling_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data_root_hints"

    iget-object v7, v5, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x6

    invoke-virtual {v5, v1, v6, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Remote error registering client messenger."

    invoke-static {v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v1, "extra_session_binder"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;-><init>(Landroid/media/session/MediaSession$Token;Landroidx/media3/session/legacy/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V

    iput-object v3, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->h:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Unexpected IllegalStateException"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;->a()V

    return-void
.end method

.method public final onConnectionFailed()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackImpl;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;->b()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackImpl;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;->b:Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->f:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object v1, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->g:Landroid/os/Messenger;

    iput-object v1, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->h:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->d:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;->c()V

    return-void
.end method
