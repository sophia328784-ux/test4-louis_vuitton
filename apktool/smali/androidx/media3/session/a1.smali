.class public final synthetic Landroidx/media3/session/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaNotificationManager;

.field public final synthetic c:Landroidx/media3/session/MediaSession;

.field public final synthetic d:Lcom/google/common/collect/ImmutableList;

.field public final synthetic e:Landroidx/media3/session/n;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/n;ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/a1;->b:Landroidx/media3/session/MediaNotificationManager;

    iput-object p2, p0, Landroidx/media3/session/a1;->c:Landroidx/media3/session/MediaSession;

    iput-object p3, p0, Landroidx/media3/session/a1;->d:Lcom/google/common/collect/ImmutableList;

    iput-object p4, p0, Landroidx/media3/session/a1;->e:Landroidx/media3/session/n;

    iput-boolean p5, p0, Landroidx/media3/session/a1;->f:Z

    iput-object p6, p0, Landroidx/media3/session/a1;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v1, p0, Landroidx/media3/session/a1;->b:Landroidx/media3/session/MediaNotificationManager;

    iget-object v2, p0, Landroidx/media3/session/a1;->c:Landroidx/media3/session/MediaSession;

    iget-object v0, p0, Landroidx/media3/session/a1;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p0, Landroidx/media3/session/a1;->e:Landroidx/media3/session/n;

    iget-boolean v4, p0, Landroidx/media3/session/a1;->f:Z

    iget-object v5, p0, Landroidx/media3/session/a1;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :try_start_0
    iget-object p0, v1, Landroidx/media3/session/MediaNotificationManager;->j:Landroidx/media3/session/MediaNotification$Provider;

    iget-object v6, v1, Landroidx/media3/session/MediaNotificationManager;->c:Landroidx/media3/session/MediaNotification$ActionFactory;

    invoke-interface {p0, v2, v0, v6, v3}, Landroidx/media3/session/MediaNotification$Provider;->b(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$ActionFactory;Landroidx/media3/session/n;)Landroidx/media3/session/MediaNotification;

    move-result-object v3

    iget p0, v3, Landroidx/media3/session/MediaNotification;->a:I

    const/16 v0, 0x51ca

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "notification ID 20938 is already used internally."

    invoke-static {v0, p0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-object p0, v1, Landroidx/media3/session/MediaNotificationManager;->f:Landroidx/media3/session/g;

    new-instance v0, Landroidx/media3/session/b1;

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/b1;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/g;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v5, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
