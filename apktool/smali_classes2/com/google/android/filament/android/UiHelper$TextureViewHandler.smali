.class Lcom/google/android/filament/android/UiHelper$TextureViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RenderSurface;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/android/UiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureViewHandler"
.end annotation


# instance fields
.field public final b:Landroid/view/TextureView;

.field public c:Landroid/view/Surface;

.field public final synthetic d:Lcom/google/android/filament/android/UiHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/android/UiHelper;Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->d:Lcom/google/android/filament/android/UiHelper;

    iput-object p2, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->b:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p2}, Landroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->b:Landroid/view/TextureView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->c:Landroid/view/Surface;

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->d:Lcom/google/android/filament/android/UiHelper;

    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->a(Landroid/view/Surface;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->c:Z

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2, p3}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->b(II)V

    :cond_1
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->c:Landroid/view/Surface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->c:Landroid/view/Surface;

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->d:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->c()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->d:Lcom/google/android/filament/android/UiHelper;

    iget-object v0, p1, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->b(II)V

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->c:Landroid/view/Surface;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-interface {p1, p0}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
