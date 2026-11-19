.class public final synthetic Landroidx/media3/session/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    iput p5, p0, Landroidx/media3/session/m;->b:I

    iput-object p1, p0, Landroidx/media3/session/m;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/m;->f:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/session/m;->d:I

    iput p4, p0, Landroidx/media3/session/m;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/m;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSessionStub;

    iget-object v1, p0, Landroidx/media3/session/m;->f:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    iget-object v2, v0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v2, Landroidx/media3/session/MediaSessionImpl;->r:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->B(Landroid/view/Surface;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->O(Landroid/view/SurfaceHolder;)V

    iput-object p0, v0, Landroidx/media3/session/MediaSessionStub;->o:Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;

    return-void

    :cond_1
    new-instance v2, Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;

    iget v3, p0, Landroidx/media3/session/m;->d:I

    iget p0, p0, Landroidx/media3/session/m;->e:I

    invoke-direct {v2, v1, v3, p0}, Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;-><init>(Landroid/view/Surface;II)V

    iput-object v2, v0, Landroidx/media3/session/MediaSessionStub;->o:Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;

    invoke-virtual {p1, v2}, Landroidx/media3/session/PlayerWrapper;->O(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 9

    iget v1, p0, Landroidx/media3/session/m;->b:I

    iget-object v2, p0, Landroidx/media3/session/m;->f:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/session/m;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v3, Landroidx/media3/session/MediaControllerImplBase;

    check-cast v2, Landroid/view/Surface;

    iget v5, p0, Landroidx/media3/session/m;->e:I

    iget-object v1, v3, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    iget v4, p0, Landroidx/media3/session/m;->d:I

    move-object v0, p1

    move-object v3, v2

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->t(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;II)V

    return-void

    :pswitch_0
    move-object v6, v3

    check-cast v6, Landroidx/media3/session/MediaControllerImplBase;

    check-cast v2, Ljava/util/List;

    new-instance v5, Landroidx/media3/common/BundleListRetriever;

    sget-object v1, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/MediaItem;

    invoke-virtual {v6}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v5, v1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-virtual {v6}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v1

    iget-object v2, v6, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    iget v3, p0, Landroidx/media3/session/m;->d:I

    iget v4, p0, Landroidx/media3/session/m;->e:I

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    move-object v0, p1

    move-object v1, v2

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->h2(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    invoke-interface {p1, v1, p2, v4, v5}, Landroidx/media3/session/IMediaSession;->p1(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, v1, p2, v3, v4}, Landroidx/media3/session/IMediaSession;->M1(Landroidx/media3/session/IMediaController;III)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
