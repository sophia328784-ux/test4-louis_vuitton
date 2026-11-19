.class public final synthetic Landroidx/media3/session/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

.field public final synthetic d:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final synthetic e:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/u0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/u0;->c:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/u0;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media3/session/u0;->e:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    iput-object p4, p0, Landroidx/media3/session/u0;->g:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/media3/session/u0;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/session/u0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/u0;->c:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/u0;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media3/session/u0;->e:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    iput-object p4, p0, Landroidx/media3/session/u0;->f:Ljava/lang/String;

    iput-object p5, p0, Landroidx/media3/session/u0;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Landroidx/media3/session/u0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/session/u0;->c:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iget-object v4, p0, Landroidx/media3/session/u0;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v8, p0, Landroidx/media3/session/u0;->e:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    iget-object v6, p0, Landroidx/media3/session/u0;->f:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/session/u0;->g:Landroid/os/Bundle;

    sget p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    iget-object p0, v0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    const v3, 0xc355

    invoke-virtual {p0, v4, v3}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v8, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, v4, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    iget-object v9, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->a:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->c:Ljava/util/ArrayList;

    new-instance v3, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;

    iget-object v5, v4, Landroidx/media3/session/MediaSession$ControllerInfo;->a:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    invoke-direct/range {v3 .. v8}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-static {p0, v7}, Landroidx/media3/session/LegacyConversions;->h(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object p0, v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {p0, v4}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/y0;

    invoke-direct {v1, p0, v0, v4, v2}, Landroidx/media3/session/y0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    new-instance v2, Landroidx/media3/session/x0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/session/u0;->c:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iget-object v3, p0, Landroidx/media3/session/u0;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v4, p0, Landroidx/media3/session/u0;->e:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    iget-object v5, p0, Landroidx/media3/session/u0;->g:Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/media3/session/u0;->f:Ljava/lang/String;

    iget-object v6, v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v7, v0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    const v8, 0xc353

    invoke-virtual {v7, v3, v8}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    iget-object v7, v6, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :try_start_2
    const-string v7, "android.media.browse.extra.PAGE"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v6, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-static {v9, v5}, Landroidx/media3/session/LegacyConversions;->h(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    if-ltz v7, :cond_2

    if-lez v8, :cond_2

    invoke-virtual {v6, v3, p0, v8, v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->B(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    new-instance v7, Landroidx/media3/session/s0;

    invoke-direct {v7, v0, v2}, Landroidx/media3/session/s0;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;I)V

    invoke-static {v5, v7}, Landroidx/media3/common/util/Util;->e0(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    new-instance v7, Landroidx/media3/session/v0;

    invoke-direct {v7, v5, v4, v2}, Landroidx/media3/session/v0;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    const v5, 0x7fffffff

    invoke-virtual {v6, v3, p0, v5, v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->B(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v1, Landroidx/media3/session/s0;

    invoke-direct {v1, v0, v2}, Landroidx/media3/session/s0;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;I)V

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->e0(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p0

    new-instance v0, Landroidx/media3/session/v0;

    invoke-direct {v0, p0, v4, v2}, Landroidx/media3/session/v0;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
