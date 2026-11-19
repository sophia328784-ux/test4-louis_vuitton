.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "runtime"
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

.field public final synthetic b:Landroidx/lifecycle/Lifecycle;

.field public final synthetic c:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;->b:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;->c:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->q:Landroid/view/Choreographer;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->l0:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->d0:Lcom/google/android/filament/gltfio/FilamentAsset;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->e0:Lcom/google/android/filament/gltfio/AssetLoader;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->a()[I

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/filament/Scene;->d([I)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->e0:Lcom/google/android/filament/gltfio/AssetLoader;

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->d0:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Lcom/google/android/filament/gltfio/AssetLoader;->c(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    goto :goto_0

    :cond_0
    const-string p0, "shoeAsset"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p0, "assetLoader"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V

    :cond_3
    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->G:Lcom/google/android/filament/MaterialInstance;

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v3, v2}, Lcom/google/android/filament/Engine;->r(Lcom/google/android/filament/MaterialInstance;)V

    :cond_4
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->F:Lcom/google/android/filament/Material;

    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/Engine;->q(Lcom/google/android/filament/Material;)V

    :cond_5
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->a()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;->b:Landroidx/lifecycle/Lifecycle;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;->c:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
