.class public final synthetic Landroidx/media3/session/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionService;

.field public final synthetic d:Landroidx/media3/session/MediaSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSession;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/p1;->b:I

    iput-object p1, p0, Landroidx/media3/session/p1;->c:Landroidx/media3/session/MediaSessionService;

    iput-object p2, p0, Landroidx/media3/session/p1;->d:Landroidx/media3/session/MediaSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/media3/session/p1;->b:I

    iget-object v1, p0, Landroidx/media3/session/p1;->c:Landroidx/media3/session/MediaSessionService;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaSessionService;->j:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/session/MediaNotificationManager;->i:Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/media3/session/p1;->d:Landroidx/media3/session/MediaSession;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/media3/session/MediaController;->X0(Lcom/google/common/util/concurrent/ListenableFuture;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->x:Landroidx/media3/session/MediaSessionService$MediaSessionListener;

    return-void

    :pswitch_0
    iget-object v6, p0, Landroidx/media3/session/p1;->d:Landroidx/media3/session/MediaSession;

    iget-object p0, v6, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    sget v0, Landroidx/media3/session/MediaSessionService;->j:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v3

    iget-object v0, v3, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    iget-object v2, v3, Landroidx/media3/session/MediaNotificationManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;

    invoke-direct {v5, v3, v0, v6}, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSession;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "androidx.media3.session.MediaNotificationManager"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v7, Landroidx/media3/session/MediaController$Builder;

    iget-object v8, p0, Landroidx/media3/session/MediaSessionImpl;->j:Landroidx/media3/session/SessionToken;

    invoke-direct {v7, v0, v8}, Landroidx/media3/session/MediaController$Builder;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, v7, Landroidx/media3/session/MediaController$Builder;->c:Landroid/os/Bundle;

    iput-object v5, v7, Landroidx/media3/session/MediaController$Builder;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v7, Landroidx/media3/session/MediaController$Builder;->e:Landroid/os/Looper;

    invoke-virtual {v7}, Landroidx/media3/session/MediaController$Builder;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v0, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;

    invoke-direct {v0, v4}, Landroidx/media3/session/MediaNotificationManager$ControllerInfo;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/session/e;

    const/4 v7, 0x6

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v3, Landroidx/media3/session/MediaNotificationManager;->f:Landroidx/media3/session/g;

    check-cast v4, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v4, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    new-instance v0, Landroidx/media3/session/MediaSessionService$MediaSessionListener;

    invoke-direct {v0, v1}, Landroidx/media3/session/MediaSessionService$MediaSessionListener;-><init>(Landroidx/media3/session/MediaSessionService;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->x:Landroidx/media3/session/MediaSessionService$MediaSessionListener;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
