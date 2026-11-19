.class final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$loadAssetAndAddSneaker$2$1"
    f = "Lv3dViewerHelper.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->b:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->b:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;-><init>(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->b:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->t:Lcom/google/android/filament/TransformManager;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    new-instance v3, Lcom/google/android/filament/gltfio/AssetLoader;

    new-instance v4, Lcom/google/android/filament/gltfio/UbershaderProvider;

    invoke-direct {v4, v2}, Lcom/google/android/filament/gltfio/UbershaderProvider;-><init>(Lcom/google/android/filament/Engine;)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/filament/gltfio/AssetLoader;-><init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/gltfio/MaterialProvider;Lcom/google/android/filament/EntityManager;)V

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->e0:Lcom/google/android/filament/gltfio/AssetLoader;

    new-instance v4, Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-direct {v4, v2}, Lcom/google/android/filament/gltfio/ResourceLoader;-><init>(Lcom/google/android/filament/Engine;)V

    invoke-virtual {v3, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->a(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v4, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->g(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->h()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->d0:Lcom/google/android/filament/gltfio/FilamentAsset;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/google/android/filament/utils/Float4;->d:F

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v2, Lcom/google/android/filament/utils/Float4;->d:F

    iget-object v2, p1, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    iput v3, v2, Lcom/google/android/filament/utils/Float4;->d:F

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {p0, v2, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    sget-object p1, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-static {v2, p1}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object p1

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v2, v4, v3, v4}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v2

    new-instance v3, Lcom/google/android/filament/utils/Quaternion;

    iget v4, p1, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v5, v2, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v6, v4, v5

    iget v7, p1, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v8, v2, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v9, v7, v8

    add-float/2addr v9, v6

    iget v6, p1, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v10, v2, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v11, v6, v10

    add-float/2addr v11, v9

    iget p1, p1, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v2, v2, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v9, p1, v2

    sub-float/2addr v11, v9

    mul-float v9, v4, v2

    mul-float v12, v7, v10

    sub-float/2addr v9, v12

    mul-float v12, v6, v8

    add-float/2addr v12, v9

    mul-float v9, p1, v5

    add-float/2addr v9, v12

    mul-float v12, v4, v10

    mul-float v13, v7, v2

    add-float/2addr v13, v12

    mul-float v12, v6, v5

    sub-float/2addr v13, v12

    mul-float v12, p1, v8

    add-float/2addr v12, v13

    mul-float/2addr v4, v8

    mul-float/2addr v7, v5

    sub-float/2addr v4, v7

    mul-float/2addr v6, v2

    sub-float/2addr v4, v6

    mul-float/2addr p1, v10

    sub-float/2addr v4, p1

    invoke-direct {v3, v11, v9, v12, v4}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {v1, p1}, Lcom/google/android/filament/Scene;->b(I)V

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result p1

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->D:I

    invoke-virtual {v0, v2}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/filament/TransformManager;->f(II)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->u:Lcom/google/android/filament/RenderableManager;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {p1, v2}, Lcom/google/android/filament/RenderableManager;->m(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->b(I)[I

    move-result-object p1

    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Lcom/google/android/filament/Scene;->b(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->y:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a:Landroid/view/SurfaceView;

    new-instance v0, Ll90;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ll90;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->h(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
