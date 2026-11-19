.class final Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaController$Listener;
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaControllerListener"
.end annotation


# instance fields
.field public final b:Landroidx/media3/session/MediaSessionService;

.field public final c:Landroidx/media3/session/MediaSession;

.field public final synthetic d:Landroidx/media3/session/MediaNotificationManager;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSession;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->d:Landroidx/media3/session/MediaNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->b:Landroidx/media3/session/MediaSessionService;

    iput-object p3, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->c:Landroidx/media3/session/MediaSession;

    return-void
.end method


# virtual methods
.method public final T()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->c:Landroidx/media3/session/MediaSession;

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->b:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    return-void
.end method

.method public final V(Landroidx/media3/session/SessionCommand;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    const-string v0, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->c:Landroidx/media3/session/MediaSession;

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->d:Landroidx/media3/session/MediaNotificationManager;

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->b:Z

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x6

    :goto_0
    new-instance p1, Landroidx/media3/session/SessionResult;

    invoke-direct {p1, p0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->b:Landroidx/media3/session/MediaSessionService;

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->c:Landroidx/media3/session/MediaSession;

    invoke-virtual {v0, p0}, Landroidx/media3/session/MediaSessionService;->f(Landroidx/media3/session/MediaSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/media3/session/MediaSessionService;->i(Landroidx/media3/session/MediaSession;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    return-void
.end method

.method public final f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 3

    const/4 p1, 0x4

    const/4 v0, 0x5

    const/16 v1, 0xe

    const/4 v2, 0x0

    filled-new-array {p1, v0, v1, v2}, [I

    move-result-object p1

    iget-object p2, p2, Landroidx/media3/common/Player$Events;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {p2, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->b:Landroidx/media3/session/MediaSessionService;

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->c:Landroidx/media3/session/MediaSession;

    invoke-virtual {p1, p0, v2}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->c:Landroidx/media3/session/MediaSession;

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->b:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    return-void
.end method
