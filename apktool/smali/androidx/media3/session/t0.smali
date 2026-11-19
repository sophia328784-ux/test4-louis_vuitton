.class public final synthetic Landroidx/media3/session/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, Landroidx/media3/session/t0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/t0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/t0;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/t0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaController;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 13
    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/session/t0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/session/t0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/t0;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/t0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Landroidx/media3/session/t0;->b:I

    iput-object p1, p0, Landroidx/media3/session/t0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/t0;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/t0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Landroidx/media3/session/t0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/session/t0;->e:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/session/t0;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/t0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/MediaSessionImpl;

    check-cast v4, Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;

    check-cast v3, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-interface {v4, p0, v3}, Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;->b(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    check-cast v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    check-cast v3, Landroid/view/KeyEvent;

    invoke-static {p0, v4, v3}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->a(Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/view/KeyEvent;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/session/MediaController;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object v0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroidx/media3/session/SessionCommands;->b:Landroidx/media3/session/SessionCommands;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->b()Landroidx/media3/session/SessionCommands;

    move-result-object v5

    :goto_0
    iget-object v5, v5, Landroidx/media3/session/SessionCommands;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/session/SessionCommand;

    iget v7, v6, Landroidx/media3/session/SessionCommand;->a:I

    if-nez v7, :cond_2

    iget-object v7, v6, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v1, v6

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v4}, Landroidx/media3/session/CommandButton;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    new-instance v1, Landroidx/media3/session/SessionCommand;

    invoke-direct {v1, v4, v3}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget p0, v1, Landroidx/media3/session/SessionCommand;->a:I

    if-nez p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    const-string p0, "command must be a custom command"

    invoke-static {v2, p0}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {v0, v1, v3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->a0(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_1

    :cond_6
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/16 v0, -0x64

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_1
    new-instance v0, Landroidx/media3/session/MediaNotificationManager$1;

    invoke-direct {v0, v4}, Landroidx/media3/session/MediaNotificationManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_7
    return-void

    :pswitch_2
    check-cast p0, Landroidx/media3/session/MediaLibrarySessionImpl;

    check-cast v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    check-cast v3, Ljava/lang/String;

    sget v0, Landroidx/media3/session/MediaLibrarySessionImpl;->L:I

    invoke-virtual {p0, v4, v3}, Landroidx/media3/session/MediaLibrarySessionImpl;->E(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    check-cast v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    check-cast v3, Ljava/lang/String;

    sget v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    const v1, 0xc352

    invoke-virtual {v0, v4, v1}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object p0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {p0, v4}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/media3/session/LibraryResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    invoke-static {v5}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/t0;

    const/4 v5, 0x3

    invoke-direct {v1, p0, v4, v3, v5}, Landroidx/media3/session/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Landroidx/media3/session/x0;

    invoke-direct {v3, p0, v2}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {v0, v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_2
    return-void

    :pswitch_4
    check-cast p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    check-cast v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    check-cast v3, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    sget v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    const v5, 0xc354

    invoke-virtual {v0, v4, v5}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v3, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v1, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {v0, v4}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v5, Landroidx/media3/session/y0;

    invoke-direct {v5, v0, v1, v4, v2}, Landroidx/media3/session/y0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    new-instance v4, Landroidx/media3/session/x0;

    invoke-direct {v4, v0, v2}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {v1, v5, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroidx/media3/session/s0;

    invoke-direct {v0, p0, v2}, Landroidx/media3/session/s0;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;I)V

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->e0(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p0

    new-instance v0, Landroidx/media3/session/v0;

    invoke-direct {v0, p0, v3, v2}, Landroidx/media3/session/v0;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_3
    return-void

    :pswitch_5
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast v4, Lcom/google/common/util/concurrent/SettableFuture;

    check-cast v3, Landroidx/media3/common/MediaItem;

    sget v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "failed to get bitmap"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_4
    invoke-static {v3, v1}, Landroidx/media3/session/LegacyConversions;->a(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
