.class Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RenderSurface;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/android/UiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceViewHandler"
.end annotation


# instance fields
.field public final b:Landroid/view/SurfaceView;

.field public final synthetic c:Lcom/google/android/filament/android/UiHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/android/UiHelper;Landroid/view/SurfaceView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->c:Lcom/google/android/filament/android/UiHelper;

    iput-object p2, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->b:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->a(Landroid/view/Surface;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/filament/android/UiHelper;->c:Z

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->c:Lcom/google/android/filament/android/UiHelper;

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3, p4}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->b(II)V

    :cond_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->c:Lcom/google/android/filament/android/UiHelper;

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->a(Landroid/view/Surface;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->c:Z

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->c:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->c()V

    return-void
.end method
