.class public final synthetic Landroidx/media3/session/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/h;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/h;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/media3/session/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/session/h;->b:Z

    iput-object p2, p0, Landroidx/media3/session/h;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/h;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/h;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/media3/session/SessionCommand;

    iget-object v0, p0, Landroidx/media3/session/h;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-boolean p0, p0, Landroidx/media3/session/h;->b:Z

    if-eqz p0, :cond_0

    new-instance v1, Landroidx/media3/session/MediaSessionStub$ProgressReporter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaSessionStub$ProgressReporter;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v3, p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaSessionImpl;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    if-eqz v1, :cond_1

    iput-object p0, v1, Landroidx/media3/session/MediaSessionStub$ProgressReporter;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    return-object p0
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/h;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, p0, Landroidx/media3/session/h;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/AudioAttributes;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v1}, Landroidx/media3/common/AudioAttributes;->d()Landroid/os/Bundle;

    move-result-object v1

    iget-boolean p0, p0, Landroidx/media3/session/h;->b:Z

    invoke-interface {p1, v0, p2, v1, p0}, Landroidx/media3/session/IMediaSession;->R(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/h;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/media3/session/MediaNotificationManager;

    iget-object v0, p0, Landroidx/media3/session/h;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/media3/session/MediaSession;

    iget-object v0, v2, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {v0, v3}, Landroidx/media3/session/MediaSessionService;->f(Landroidx/media3/session/MediaSession;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaNotificationManager;->d(Landroidx/media3/session/MediaSession;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v7, p1

    goto :goto_2

    :cond_1
    iget v0, v2, Landroidx/media3/session/MediaNotificationManager;->k:I

    add-int/2addr v0, v4

    iput v0, v2, Landroidx/media3/session/MediaNotificationManager;->k:I

    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaNotificationManager;->b(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object v1, v1, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->O0()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v5, Landroidx/media3/session/n;

    const/4 v1, 0x2

    invoke-direct {v5, v2, v0, v3, v1}, Landroidx/media3/session/n;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v3}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->a0()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/media3/session/a1;

    iget-boolean v6, p0, Landroidx/media3/session/h;->b:Z

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/a1;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/n;ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-string p0, "notificationUpdated"

    return-object p0

    :goto_2
    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/Service;->stopForeground(I)V

    iget-object p0, v2, Landroidx/media3/session/MediaNotificationManager;->l:Landroidx/media3/session/MediaNotification;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    iget-object v0, v2, Landroidx/media3/session/MediaNotificationManager;->d:Landroid/app/NotificationManager;

    iget p0, p0, Landroidx/media3/session/MediaNotification;->a:I

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    iget p0, v2, Landroidx/media3/session/MediaNotificationManager;->k:I

    add-int/2addr p0, v4

    iput p0, v2, Landroidx/media3/session/MediaNotificationManager;->k:I

    iput-object p1, v2, Landroidx/media3/session/MediaNotificationManager;->l:Landroidx/media3/session/MediaNotification;

    :cond_3
    invoke-virtual {v7, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    const-string p0, "notificationRemoved"

    return-object p0
.end method
