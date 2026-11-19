.class Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionCallbackApi21"
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 8

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->d:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    iget-object v2, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->b:Landroid/media/browse/MediaBrowser;

    :try_start_0
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "extra_service_version"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    const-string v4, "extra_messenger"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->c:Landroid/os/Bundle;

    invoke-direct {v5, v4, v6}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v5, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->f:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    :try_start_1
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->f:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v4, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->a:Landroid/content/Context;

    iget-object v5, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->g:Landroid/os/Messenger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "data_package_name"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data_calling_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "data_root_hints"

    iget-object v7, v1, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v7, 0x6

    iput v7, v4, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    const-string v1, "extra_session_binder"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->E2(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v4, v2, v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V

    move-object v3, v4

    :cond_2
    iput-object v3, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    :catch_1
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->a()V

    return-void
.end method

.method public final onConnectionFailed()V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->f:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->g:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->d:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->c()V

    return-void
.end method
