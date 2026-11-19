.class final Landroidx/media3/session/MediaNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;,
        Landroidx/media3/session/MediaNotificationManager$ControllerInfo;
    }
.end annotation


# instance fields
.field public final b:Landroidx/media3/session/MediaSessionService;

.field public final c:Landroidx/media3/session/MediaNotification$ActionFactory;

.field public final d:Landroid/app/NotificationManager;

.field public final e:Landroid/os/Handler;

.field public final f:Landroidx/media3/session/g;

.field public final g:Landroid/content/Intent;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/HashMap;

.field public final j:Landroidx/media3/session/MediaNotification$Provider;

.field public k:I

.field public l:Landroidx/media3/session/MediaNotification;

.field public m:Z

.field public n:Z

.field public o:Z

.field public final p:J

.field public final q:I


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification$Provider;Landroidx/media3/session/MediaNotification$ActionFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->j:Landroidx/media3/session/MediaNotification$Provider;

    iput-object p3, p0, Landroidx/media3/session/MediaNotificationManager;->c:Landroidx/media3/session/MediaNotification$ActionFactory;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->d:Landroid/app/NotificationManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    sget-object p3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Landroidx/media3/session/MediaNotificationManager;->e:Landroid/os/Handler;

    new-instance p2, Landroidx/media3/session/g;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Landroidx/media3/session/g;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->f:Landroidx/media3/session/g;

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->g:Landroid/content/Intent;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaNotificationManager;->h:Ljava/lang/String;

    const-string v0, "androidx.media3.session.intent.uid"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaNotificationManager;->i:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/session/MediaNotificationManager;->m:Z

    iput-boolean p3, p0, Landroidx/media3/session/MediaNotificationManager;->o:Z

    const-wide/32 p1, 0x927c0

    iput-wide p1, p0, Landroidx/media3/session/MediaNotificationManager;->p:J

    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/session/MediaNotificationManager;->q:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaNotificationManager;->o:Z

    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->e()Ljava/util/ArrayList;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession;

    invoke-virtual {p0, v3, v0}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaController;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final c(Z)Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionService;->e()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession;

    invoke-virtual {p0, v3}, Landroidx/media3/session/MediaNotificationManager;->b(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/media3/session/MediaController;->r()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {v3}, Landroidx/media3/session/MediaController;->h()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Landroidx/media3/session/MediaController;->h()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_1
    iget-boolean v0, p0, Landroidx/media3/session/MediaNotificationManager;->o:Z

    iget-wide v2, p0, Landroidx/media3/session/MediaNotificationManager;->p:J

    if-eqz v0, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iget-boolean v5, p0, Landroidx/media3/session/MediaNotificationManager;->n:Z

    iget-object v6, p0, Landroidx/media3/session/MediaNotificationManager;->e:Landroid/os/Handler;

    if-eqz v5, :cond_5

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v6, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    :goto_3
    iput-boolean p1, p0, Landroidx/media3/session/MediaNotificationManager;->n:Z

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-nez p1, :cond_8

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    return v1

    :cond_8
    :goto_4
    return v4
.end method

.method public final d(Landroidx/media3/session/MediaSession;)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->b(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->p()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/MediaNotificationManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->h()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iput-boolean v1, p1, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->b:Z

    iput-boolean v2, p1, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->c:Z

    return v2

    :cond_1
    iget p0, p0, Landroidx/media3/session/MediaNotificationManager;->q:I

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    iget-boolean p0, p1, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->b:Z

    if-nez p0, :cond_4

    iget-boolean p0, p1, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->c:Z

    if-eqz p0, :cond_4

    return v2

    :cond_2
    invoke-static {}, Lr81;->b()V

    return v1

    :cond_3
    iget-boolean p0, p1, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->b:Z

    xor-int/2addr p0, v2

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final e(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V
    .locals 4

    iget-object p1, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->c:Landroid/media/session/MediaSession$Token;

    iget-object v0, p2, Landroidx/media3/session/MediaNotification;->b:Landroid/app/Notification;

    iget v1, p2, Landroidx/media3/session/MediaNotification;->a:I

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.mediaSession"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->l:Landroidx/media3/session/MediaNotification;

    const/4 p1, 0x2

    iget-object p2, p0, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/media3/session/MediaNotificationManager;->g:Landroid/content/Intent;

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object p3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2, v1, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/session/MediaNotificationManager;->m:Z

    return-void

    :catch_0
    move-exception p0

    const-string p1, "The service must be declared with a foregroundServiceType that includes mediaPlayback"

    invoke-static {p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager;->d:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->e()Ljava/util/ArrayList;

    move-result-object p1

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession;

    invoke-virtual {p0, v3, v0}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v0
.end method
