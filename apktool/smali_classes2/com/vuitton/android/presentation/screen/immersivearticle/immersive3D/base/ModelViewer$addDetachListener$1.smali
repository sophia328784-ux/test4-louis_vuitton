.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$addDetachListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$addDetachListener$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$addDetachListener$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$addDetachListener$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->c:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p1}, Lcom/google/android/filament/android/UiHelper;->d()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b()V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->s:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/AssetLoader;->b()V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->t:Lcom/google/android/filament/gltfio/UbershaderProvider;

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/UbershaderProvider;->b()V

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/UbershaderProvider;->a()V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->u:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->e()V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->l:I

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->n(I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->k:Lcom/google/android/filament/Renderer;

    invoke-virtual {p1, v1}, Lcom/google/android/filament/Engine;->s(Lcom/google/android/filament/Renderer;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    invoke-virtual {p1, v1}, Lcom/google/android/filament/Engine;->x(Lcom/google/android/filament/View;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {p1, v1}, Lcom/google/android/filament/Engine;->t(Lcom/google/android/filament/Scene;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->j:Lcom/google/android/filament/Camera;

    iget v1, p0, Lcom/google/android/filament/Camera;->b:I

    invoke-virtual {p1, v1}, Lcom/google/android/filament/Engine;->m(I)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v1

    iget p0, p0, Lcom/google/android/filament/Camera;->b:I

    invoke-virtual {v1, p0}, Lcom/google/android/filament/EntityManager;->b(I)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/EntityManager;->b(I)V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->l()V

    return-void
.end method
