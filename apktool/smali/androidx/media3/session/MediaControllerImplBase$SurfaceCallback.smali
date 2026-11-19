.class Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceCallback"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaControllerImplBase;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p0, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result p1

    const/16 v1, 0x8

    if-lt p1, v1, :cond_1

    new-instance p1, Landroidx/media3/session/f0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, p2, p3, v1}, Landroidx/media3/session/f0;-><init>(Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;III)V

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->X0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p2, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    if-ne v0, p1, :cond_2

    invoke-virtual {p2}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    new-instance p1, Landroidx/media3/session/f0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, p4, v0}, Landroidx/media3/session/f0;-><init>(Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;III)V

    invoke-virtual {p2, p1}, Landroidx/media3/session/MediaControllerImplBase;->X0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    :cond_1
    invoke-virtual {p2, p3, p4}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void
.end method
