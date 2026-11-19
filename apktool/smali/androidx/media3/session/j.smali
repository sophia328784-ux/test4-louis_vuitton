.class public final synthetic Landroidx/media3/session/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/j;->b:I

    iput-object p1, p0, Landroidx/media3/session/j;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/media3/session/j;->b:I

    iget-object p0, p0, Landroidx/media3/session/j;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {p0}, Landroidx/media3/session/SequencedFutureManager;->c()V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->J:Landroidx/media3/session/PlayerInfo;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->c:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->l1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->p:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->p:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerStub;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
