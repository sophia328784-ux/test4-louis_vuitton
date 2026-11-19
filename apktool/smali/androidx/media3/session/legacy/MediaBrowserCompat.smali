.class public final Landroidx/media3/session/legacy/MediaBrowserCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi26;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImpl;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;,
        Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi26;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi26;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi26;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "Connecting to a MediaBrowserService."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi26;

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->b:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi26;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->f:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->g:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Remote error unregistering client messenger."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->b:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    return-void
.end method

.method public final c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 3

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat;->a:Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi26;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->h:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->b:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;-><init>(Landroid/media/session/MediaSession$Token;Landroidx/media3/session/legacy/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->h:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi23;->h:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    return-object p0
.end method
