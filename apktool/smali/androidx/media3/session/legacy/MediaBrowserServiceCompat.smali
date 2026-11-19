.class public abstract Landroidx/media3/session/legacy/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ResultWrapper;
    }
.end annotation


# instance fields
.field public b:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

.field public final c:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

.field public final d:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

.field public final e:Ljava/util/ArrayList;

.field public final f:Landroidx/collection/ArrayMap;

.field public g:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

.field public final h:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

.field public i:Landroidx/media3/session/legacy/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->c:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v3, "android.media.session.MediaController"

    const/4 v4, -0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;Ljava/lang/String;IILandroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    iput-object v1, v2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->d:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->e:Ljava/util/ArrayList;

    new-instance p0, Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p0, v2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->f:Landroidx/collection/ArrayMap;

    new-instance p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {p0, v2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;)V

    iput-object p0, v2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->h:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, v1, :cond_2

    if-ne p1, v1, :cond_2

    :goto_0
    return-object p0

    :cond_2
    mul-int v1, p1, v0

    add-int v2, v1, p1

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lt v1, p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le v2, p1, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :cond_4
    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final b()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->b:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;->f:Landroidx/media3/session/legacy/MediaBrowserServiceCompat;

    iget-object v1, v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->g:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->d:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    if-ne v1, v0, :cond_0

    new-instance v0, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->b:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getCurrentBrowserInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v0

    :cond_0
    iget-object p0, v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->d:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    return-object p0

    :cond_1
    const-string p0, "This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->e()V

    return-void
.end method

.method public abstract d(ILjava/lang/String;Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->e:I

    invoke-virtual {p0, p3, p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->f(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method public abstract f(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
.end method

.method public g(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 0

    const/4 p0, 0x2

    iput p0, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->e:I

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x4

    iput p0, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->e:I

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final k(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->i:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->i:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->b:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->d:Landroidx/media3/session/legacy/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->h:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "The session token has already been set"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Session token may not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->b:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->b:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->b:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    new-instance v1, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26;

    invoke-direct {v1, v0, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;Landroid/content/Context;)V

    iput-object v1, v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->b:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->h:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;->release()V

    return-void
.end method
