.class public final Lcom/vuitton/android/presentation/ar/filament/Filament;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/filament/Filament;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "<init>",
        "(Landroid/content/Context;Landroid/view/SurfaceView;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/view/SurfaceView;

.field public final b:Landroid/opengl/EGLContext;

.field public final c:Lcom/google/android/filament/Engine;

.field public final d:Lcom/google/android/filament/Renderer;

.field public final e:Lcom/google/android/filament/Scene;

.field public final f:Lcom/google/android/filament/Camera;

.field public final g:Lcom/google/android/filament/View;

.field public final h:Lcom/google/android/filament/gltfio/AssetLoader;

.field public final i:Lcom/google/android/filament/gltfio/ResourceLoader;

.field public j:Lcom/google/android/filament/SwapChain;

.field public final k:Lcom/google/android/filament/android/DisplayHelper;

.field public final l:Lcom/google/android/filament/android/UiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->a:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-static {v1, v9, v0, v9, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    const/4 v10, 0x1

    new-array v4, v10, [Landroid/opengl/EGLConfig;

    const/16 v2, 0x3040

    const/16 v3, 0x40

    const/16 v11, 0x3038

    filled-new-array {v2, v3, v11}, [I

    move-result-object v2

    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    aget-object v2, v4, v0

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v5, 0x3098

    const/4 v6, 0x3

    filled-new-array {v5, v6, v11}, [I

    move-result-object v5

    invoke-static {v1, v2, v3, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v4, v0

    const/16 v4, 0x3057

    const/16 v5, 0x3056

    filled-new-array {v4, v10, v5, v10, v11}, [I

    move-result-object v4

    invoke-static {v1, v3, v4, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Larrow/core/Either$Right;

    invoke-direct {v0, v2}, Larrow/core/Either$Right;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error creating EGL Context"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v1, Larrow/core/Either$Left;

    invoke-direct {v1, v0}, Larrow/core/Either$Left;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    instance-of v1, v0, Larrow/core/Either$Right;

    if-eqz v1, :cond_1

    check-cast v0, Larrow/core/Either$Right;

    iget-object v9, v0, Larrow/core/Either$Right;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Larrow/core/Either$Left;

    if-eqz v0, :cond_2

    :goto_1
    check-cast v9, Landroid/opengl/EGLContext;

    iput-object v9, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->b:Landroid/opengl/EGLContext;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/google/android/filament/Engine;->e(Landroid/opengl/EGLContext;)Lcom/google/android/filament/Engine;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h()Lcom/google/android/filament/Renderer;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->d:Lcom/google/android/filament/Renderer;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->i()Lcom/google/android/filament/Scene;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    iget-object v2, v0, Lcom/google/android/filament/Engine;->e:Lcom/google/android/filament/EntityManager;

    invoke-virtual {v2}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Engine;->f(I)Lcom/google/android/filament/Camera;

    move-result-object v2

    const v3, 0x3c03126f    # 0.008f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/filament/Camera;->d(FFF)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->f:Lcom/google/android/filament/Camera;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->k()Lcom/google/android/filament/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/filament/View;->f(Lcom/google/android/filament/Camera;)V

    invoke-virtual {v3, v1}, Lcom/google/android/filament/View;->i(Lcom/google/android/filament/Scene;)V

    iput-object v3, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->g:Lcom/google/android/filament/View;

    new-instance v1, Lcom/google/android/filament/gltfio/AssetLoader;

    new-instance v2, Lcom/google/android/filament/gltfio/UbershaderProvider;

    invoke-direct {v2, v0}, Lcom/google/android/filament/gltfio/UbershaderProvider;-><init>(Lcom/google/android/filament/Engine;)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/filament/gltfio/AssetLoader;-><init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/gltfio/MaterialProvider;Lcom/google/android/filament/EntityManager;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->h:Lcom/google/android/filament/gltfio/AssetLoader;

    new-instance v1, Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-direct {v1, v0}, Lcom/google/android/filament/gltfio/ResourceLoader;-><init>(Lcom/google/android/filament/Engine;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->i:Lcom/google/android/filament/gltfio/ResourceLoader;

    new-instance v0, Lcom/google/android/filament/android/DisplayHelper;

    invoke-direct {v0, p1}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->k:Lcom/google/android/filament/android/DisplayHelper;

    new-instance p1, Lcom/google/android/filament/android/UiHelper;

    sget-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {p1, v0}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    new-instance v0, Lcom/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1;-><init>(Lcom/vuitton/android/presentation/ar/filament/Filament;)V

    iput-object v0, p1, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/android/UiHelper;->a(Landroid/view/SurfaceView;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->l:Lcom/google/android/filament/android/UiHelper;

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    throw v9
.end method
