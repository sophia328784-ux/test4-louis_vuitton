.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RendererCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SurfaceCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;",
        "Lcom/google/android/filament/android/UiHelper$RendererCallback;",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Surface;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->r:Lcom/google/android/filament/SwapChain;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->k:Lcom/google/android/filament/Renderer;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->m:Lcom/google/android/filament/android/DisplayHelper;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Lcom/google/android/filament/Engine;->u(Lcom/google/android/filament/SwapChain;)V

    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/filament/Engine;->j(Landroid/view/Surface;)Lcom/google/android/filament/SwapChain;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->r:Lcom/google/android/filament/SwapChain;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->p:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    const-string v3, "displayHelper"

    if-eqz p1, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/google/android/filament/android/DisplayHelper;->a(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->q:Landroid/view/TextureView;

    if-eqz p0, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lcom/google/android/filament/android/DisplayHelper;->a(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    return-void

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final b(II)V
    .locals 11

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    new-instance v1, Lcom/google/android/filament/Viewport;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->j(Lcom/google/android/filament/Viewport;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->n:Lcom/google/android/filament/utils/Manipulator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->l(II)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    iget-object p1, p1, Lcom/google/android/filament/View;->b:Lcom/google/android/filament/Viewport;

    iget p2, p1, Lcom/google/android/filament/Viewport;->c:I

    iget p1, p1, Lcom/google/android/filament/Viewport;->d:I

    int-to-double v0, p2

    int-to-double p1, p1

    div-double v5, v0, p1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->j:Lcom/google/android/filament/Camera;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->e:F

    float-to-double v3, p1

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->f:F

    float-to-double v7, p1

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->g:F

    float-to-double v9, p1

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/filament/Camera;->e(DDDD)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->g()Lcom/google/android/filament/Fence;

    move-result-object p1

    sget-object p2, Lcom/google/android/filament/Fence$Mode;->FLUSH:Lcom/google/android/filament/Fence$Mode;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Fence;->a(Lcom/google/android/filament/Fence$Mode;)V

    invoke-virtual {p0, p1}, Lcom/google/android/filament/Engine;->o(Lcom/google/android/filament/Fence;)V

    return-void

    :cond_0
    const-string p0, "cameraManipulator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()V
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->m:Lcom/google/android/filament/android/DisplayHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/filament/android/DisplayHelper;->b()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->r:Lcom/google/android/filament/SwapChain;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/Engine;->u(Lcom/google/android/filament/SwapChain;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->y()V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->r:Lcom/google/android/filament/SwapChain;

    :cond_0
    return-void

    :cond_1
    const-string p0, "displayHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method
