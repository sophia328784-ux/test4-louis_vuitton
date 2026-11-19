.class public final synthetic Landroidx/media3/session/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerImplLegacy;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;I)V
    .locals 0

    .line 9
    iput p2, p0, Landroidx/media3/session/j0;->b:I

    iput-object p1, p0, Landroidx/media3/session/j0;->c:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Landroidx/media3/session/j0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/j0;->c:Landroidx/media3/session/MediaControllerImplLegacy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/media3/session/j0;->b:I

    iget-object p0, p0, Landroidx/media3/session/j0;->c:Landroidx/media3/session/MediaControllerImplLegacy;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaController$Listener;->z()Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$Listener;->x()V

    return-void

    :pswitch_0
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserCompat;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->c:Landroidx/media3/session/SessionToken;

    iget-object v2, v2, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->e()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;

    invoke-direct {v3, p0}, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    iget-object v4, v4, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v4}, Landroidx/media3/session/MediaController$MediaControllerImpl;->P0()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->j:Landroidx/media3/session/legacy/MediaBrowserCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->a()V

    return-void

    :pswitch_1
    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy;->X0()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
