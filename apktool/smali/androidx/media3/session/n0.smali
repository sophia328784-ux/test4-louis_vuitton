.class public final synthetic Landroidx/media3/session/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 9
    iput p2, p0, Landroidx/media3/session/n0;->b:I

    iput p1, p0, Landroidx/media3/session/n0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Landroidx/media3/session/n0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/n0;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0

    .line 10
    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/session/n0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/media3/session/n0;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 1

    sget v0, Landroidx/media3/session/MediaControllerStub;->j:I

    invoke-virtual {p1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/session/MediaControllerImplBase;->l:Landroid/util/SparseArray;

    iget p0, p0, Landroidx/media3/session/n0;->c:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaController$ProgressListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/session/MediaController$ProgressListener;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/session/n0;->b:I

    iget p0, p0, Landroidx/media3/session/n0;->c:I

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->L0(I)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->E0(I)V

    return-void

    :pswitch_1
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->I(I)V

    return-void

    :pswitch_2
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->T(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Landroidx/media3/session/MediaLibrarySessionImpl;

    sget p1, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p1, v1, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {v1, p2}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x6

    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v0, Landroidx/media3/session/w0;

    const/4 v5, 0x1

    iget v4, p0, Landroidx/media3/session/n0;->c:I

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/w0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;II)V

    new-instance p0, Landroidx/media3/session/x0;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {v2, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method
