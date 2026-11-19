.class public final synthetic Landroidx/media3/session/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaLibrarySessionImpl;

.field public final synthetic d:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic e:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;II)V
    .locals 0

    iput p5, p0, Landroidx/media3/session/w0;->b:I

    iput-object p1, p0, Landroidx/media3/session/w0;->c:Landroidx/media3/session/MediaLibrarySessionImpl;

    iput-object p2, p0, Landroidx/media3/session/w0;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Landroidx/media3/session/w0;->e:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput p4, p0, Landroidx/media3/session/w0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/media3/session/w0;->b:I

    iget v1, p0, Landroidx/media3/session/w0;->f:I

    iget-object v2, p0, Landroidx/media3/session/w0;->e:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v3, p0, Landroidx/media3/session/w0;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Landroidx/media3/session/w0;->c:Landroidx/media3/session/MediaLibrarySessionImpl;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaLibrarySessionImpl;->L:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/media3/session/MediaLibrarySessionImpl;->F(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->A(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V

    invoke-static {v1, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->G(ILandroidx/media3/session/LibraryResult;)V

    :cond_0
    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaLibrarySessionImpl;->L:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/media3/session/MediaLibrarySessionImpl;->F(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/LibraryResult;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->A(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V

    invoke-static {v1, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->G(ILandroidx/media3/session/LibraryResult;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
