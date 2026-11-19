.class public abstract Landroidx/media3/session/MediaSessionService;
.super Landroidx/lifecycle/LifecycleService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;,
        Landroidx/media3/session/MediaSessionService$Listener;,
        Landroidx/media3/session/MediaSessionService$MediaSessionListener;,
        Landroidx/media3/session/MediaSessionService$ShowNotificationForIdlePlayerMode;
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Landroid/os/Handler;

.field public e:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

.field public f:Landroidx/media3/session/MediaNotificationManager;

.field public g:Landroidx/media3/session/DefaultActionFactory;

.field public final h:Landroidx/collection/ArrayMap;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->c:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->d:Landroid/os/Handler;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public static a(Landroidx/media3/session/MediaSessionService;Ljava/lang/RuntimeException;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/app/ForegroundServiceStartNotAllowedException;

    if-eqz v0, :cond_0

    const-string v0, "Failed to start service into the foreground"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionService;->d:Landroid/os/Handler;

    new-instance v0, Let;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, v1}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "Calling updateNotification() failed with a runtime exception"

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Intent;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "androidx.media3.session.MediaSessionService"

    :goto_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.media3.session.hint.controller_info_type"

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "androidx.media3.session.hint.intent_extras"

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v2, "media3.session"

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, ""

    :goto_2
    const-string v1, "androidx.media3.session.hint.session_id"

    invoke-virtual {v7, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    new-instance v2, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    const/4 p0, -0x1

    invoke-direct {v2, v0, p0, p0}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v3, 0x3c336594

    const/16 v4, 0x9

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public final b(Landroidx/media3/session/MediaSession;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "session is already released"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    iget-object v3, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v3, v3, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    const-string v4, "Session ID should be unique"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    iget-object v4, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v4, v4, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->d:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/p1;

    invoke-direct {v1, p0, p1, v3}, Landroidx/media3/session/p1;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSession;I)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d()Landroidx/media3/session/MediaNotificationManager;
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->f:Landroidx/media3/session/MediaNotificationManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Accessing service context before onCreate()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v1, Landroidx/media3/session/DefaultMediaNotificationProvider;

    const-string v3, "default_channel_id"

    iget v4, v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->c:I

    iget-object v5, v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->a:Landroid/content/Context;

    iget-object v6, v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->b:Los;

    invoke-direct {v1, v5, v6, v3, v4}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    iput-boolean v2, v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->d:Z

    new-instance v0, Landroidx/media3/session/MediaNotificationManager;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->g:Landroidx/media3/session/DefaultActionFactory;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/media3/session/DefaultActionFactory;

    invoke-direct {v2, p0}, Landroidx/media3/session/DefaultActionFactory;-><init>(Landroidx/media3/session/MediaSessionService;)V

    iput-object v2, p0, Landroidx/media3/session/MediaSessionService;->g:Landroidx/media3/session/DefaultActionFactory;

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->g:Landroidx/media3/session/DefaultActionFactory;

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/session/MediaNotificationManager;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification$Provider;Landroidx/media3/session/MediaNotification$ActionFactory;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->f:Landroidx/media3/session/MediaNotificationManager;

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaSessionService;->f:Landroidx/media3/session/MediaNotificationManager;

    return-object p0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Landroidx/media3/session/MediaSession;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    iget-object p1, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract g(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
.end method

.method public final h(Landroidx/media3/session/MediaSession;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/session/MediaNotificationManager;->c(Z)Z

    move-result p2

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/session/h;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/session/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lmw;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lmw;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p1, v0, p2, p0}, Lcom/google/common/util/concurrent/Futures;->b(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final i(Landroidx/media3/session/MediaSession;)V
    .locals 3

    const-string v0, "session must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    iget-object v2, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, v2, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "session not found"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    iget-object v2, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, v2, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->d:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/p1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/session/p1;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSession;I)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/session/MediaNotificationManager;->j:Landroidx/media3/session/MediaNotification$Provider;

    invoke-interface {v1}, Landroidx/media3/session/MediaNotification$Provider;->a()Landroidx/media3/session/MediaNotification$Provider$NotificationChannelInfo;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/session/MediaNotificationManager;->d:Landroid/app/NotificationManager;

    iget-object v2, v1, Landroidx/media3/session/MediaNotification$Provider$NotificationChannelInfo;->a:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media3/session/MediaNotification$Provider$NotificationChannelInfo;->b:Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v2, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->N:I

    :cond_1
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const v1, 0x7f08031e

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v1, v3, Landroid/app/Notification;->icon:I

    const/4 v1, -0x1

    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->E:I

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    const/16 v3, 0x51ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification;

    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaNotificationManager;->a()V

    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catch_0
    move-exception p0

    const-string v0, "The service must be declared with a foregroundServiceType that includes mediaPlayback"

    invoke-static {v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    throw p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-super {p0, p1}, Landroidx/lifecycle/LifecycleService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "androidx.media3.session.MediaSessionService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    const-string p1, "android.media.session.MediaController"

    const/4 v0, -0x1

    invoke-direct {v1, p1, v0, v0}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionService;->g(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionService;->b(Landroidx/media3/session/MediaSession;)V

    iget-object p0, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->y:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionServiceLegacyStub;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionServiceLegacyStub;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    invoke-virtual {v1, v0}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->m(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->y:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->y:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    iget-object p0, p0, Landroidx/media3/session/MediaSessionService;->e:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    new-instance v0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;-><init>(Landroidx/media3/session/MediaSessionService;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->e:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->f:Landroidx/media3/session/MediaNotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaNotificationManager;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->e:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    iget-object v1, v0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/IMediaController;

    invoke-static {v3}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object v2, p0, Landroidx/media3/session/MediaSessionService;->e:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    :cond_2
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object p3, p0, Landroidx/media3/session/MediaSessionService;->g:Landroidx/media3/session/DefaultActionFactory;

    if-nez p3, :cond_1

    new-instance p3, Landroidx/media3/session/DefaultActionFactory;

    invoke-direct {p3, p0}, Landroidx/media3/session/DefaultActionFactory;-><init>(Landroidx/media3/session/MediaSessionService;)V

    iput-object p3, p0, Landroidx/media3/session/MediaSessionService;->g:Landroidx/media3/session/DefaultActionFactory;

    :cond_1
    iget-object p3, p0, Landroidx/media3/session/MediaSessionService;->g:Landroidx/media3/session/DefaultActionFactory;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    :cond_2
    const/4 p3, 0x0

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->h:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession;

    iget-object v4, v3, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v4, v4, Landroidx/media3/session/MediaSessionImpl;->b:Landroid/net/Uri;

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_4
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    move-object v3, p3

    :goto_2
    if-nez v3, :cond_7

    invoke-static {p1}, Landroidx/media3/session/MediaSessionService;->c(Landroid/content/Intent;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionService;->g(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v3

    if-nez v3, :cond_6

    iget-boolean p1, p0, Landroidx/media3/session/MediaSessionService;->i:Z

    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->j()V

    return p2

    :cond_6
    invoke-virtual {p0, v3}, Landroidx/media3/session/MediaSessionService;->b(Landroidx/media3/session/MediaSession;)V

    :cond_7
    move-object v2, v3

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p3, v2, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, p3, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/g0;

    const/16 v2, 0x9

    invoke-direct {v1, p3, p1, v2}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, p3

    :goto_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_4

    :cond_a
    move-object v3, p3

    :goto_4
    if-nez v3, :cond_b

    iget-boolean p1, p0, Landroidx/media3/session/MediaSessionService;->i:Z

    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->j()V

    return p2

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string p3, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS"

    invoke-virtual {v0, p3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :cond_c
    instance-of v0, p3, Landroid/os/Bundle;

    if-eqz v0, :cond_d

    check-cast p3, Landroid/os/Bundle;

    :goto_5
    move-object v4, p3

    goto :goto_6

    :cond_d
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_5

    :goto_6
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaNotificationManager;->b(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaController;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_7

    :cond_e
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->a0()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroidx/media3/session/e;

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/e;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/MediaController;)V

    invoke-static {p3, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_f
    :goto_7
    iget-boolean p3, p0, Landroidx/media3/session/MediaSessionService;->i:Z

    if-nez p3, :cond_10

    const-string p3, "androidx.media3.session.intent.uid"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    const-string p3, "androidx.media3.session.intent.uid"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object p3

    iget-object p3, p3, Landroidx/media3/session/MediaNotificationManager;->h:Ljava/lang/String;

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/session/MediaSessionService;->i:Z

    if-nez p1, :cond_10

    const-string p1, "Terminating service that was started by a stale start intent"

    invoke-static {p1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->j()V

    :cond_10
    :goto_8
    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/media3/session/MediaNotificationManager;->m:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->e()Ljava/util/ArrayList;

    move-result-object p1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaNotificationManager;->a()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->e()Ljava/util/ArrayList;

    move-result-object p1

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v2

    invoke-interface {v2, v0}, Landroidx/media3/common/Player;->P(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
