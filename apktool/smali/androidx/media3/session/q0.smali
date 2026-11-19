.class public final synthetic Landroidx/media3/session/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;
.implements Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;
.implements Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
.implements Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    iput p1, p0, Landroidx/media3/session/q0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/media3/session/SessionError;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/session/q0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 8
    iput p2, p0, Landroidx/media3/session/q0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 9
    iput p2, p0, Landroidx/media3/session/q0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 1

    iget p0, p0, Landroidx/media3/session/q0;->b:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    sget p0, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-object p0, p1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Let;

    const/16 v0, 0x19

    invoke-direct {p1, p0, v0}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaController;->Y0(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object p0, p1, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    new-instance p1, Lmt;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lmt;-><init>(I)V

    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_2
    sget p0, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-object p0, p1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {p1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/media3/session/q0;->b:I

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->D()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->f()V

    return-void

    :pswitch_2
    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->k()V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->Q()V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->stop()V

    return-void

    :pswitch_5
    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->H()V

    return-void

    :pswitch_6
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->q()V

    return-void

    :pswitch_7
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->y()V

    return-void

    :pswitch_8
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->F()V

    return-void

    :pswitch_9
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->l()V

    return-void

    :pswitch_a
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->z()V

    return-void

    :pswitch_b
    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->c0()V

    return-void

    :pswitch_c
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->S()V

    return-void

    :pswitch_d
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->pause()V

    return-void

    :pswitch_e
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->b0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/media3/session/MediaUtils;->f(Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    return-void
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Landroidx/media3/session/q0;->b:I

    const/4 p3, 0x0

    const/4 v0, -0x6

    sparse-switch p0, :sswitch_data_0

    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p0, p1, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :sswitch_0
    check-cast p1, Landroidx/media3/session/MediaLibrarySessionImpl;

    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p0, p1, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v0, Landroidx/media3/session/y0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, p2, v1}, Landroidx/media3/session/y0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    new-instance p2, Landroidx/media3/session/x0;

    invoke-direct {p2, p1, p3}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0

    :sswitch_1
    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p0, p1, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :sswitch_2
    check-cast p1, Landroidx/media3/session/MediaLibrarySessionImpl;

    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p0, p1, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v0, Landroidx/media3/session/y0;

    invoke-direct {v0, p1, p0, p2, p3}, Landroidx/media3/session/y0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    new-instance p2, Landroidx/media3/session/x0;

    invoke-direct {p2, p1, p3}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_2
        0x11 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0

    iget p0, p0, Landroidx/media3/session/q0;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->f(I)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0

    iget p0, p0, Landroidx/media3/session/q0;->b:I

    packed-switch p0, :pswitch_data_0

    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p3}, Landroidx/media3/session/PlayerWrapper;->J0(Ljava/util/List;)V

    return-void

    :pswitch_0
    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p3}, Landroidx/media3/session/PlayerWrapper;->J0(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
