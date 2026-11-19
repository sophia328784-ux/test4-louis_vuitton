.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;
.super Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function1;",
        "",
        "",
        "isSceneLoaded",
        "isFrontCardLoaded",
        "isCardLoaded",
        "isStartAnimationFinished",
        "is3DSceneInError",
        "Lkotlin/Function0;",
        "onCardTap",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;",
        "scene3DConfiguration",
        "<init>",
        "(Landroid/view/SurfaceView;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V",
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
.field public final A:Lkotlin/jvm/functions/Function1;

.field public final B:Lkotlin/jvm/functions/Function0;

.field public C:Lcom/google/android/filament/utils/Mat4;

.field public D:Lcom/google/android/filament/Material;

.field public E:Lcom/google/android/filament/MaterialInstance;

.field public F:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

.field public G:I

.field public H:I

.field public I:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

.field public J:Landroid/graphics/Bitmap;

.field public K:Landroid/graphics/Bitmap;

.field public L:Landroid/graphics/Bitmap;

.field public M:Landroid/graphics/Bitmap;

.field public N:Z

.field public O:Z

.field public final P:Landroid/animation/ValueAnimator;

.field public final Q:Landroid/animation/ValueAnimator;

.field public R:Z

.field public final S:J

.field public final T:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;

.field public final v:Landroid/content/Context;

.field public final w:Lkotlin/jvm/functions/Function1;

.field public final x:Lkotlin/jvm/functions/Function1;

.field public final y:Lkotlin/jvm/functions/Function1;

.field public final z:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p9}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;-><init>(Landroid/view/SurfaceView;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->v:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->w:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->x:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->y:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->z:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->A:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->B:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->N:Z

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->P:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->Q:Landroid/animation/ValueAnimator;

    const-wide/32 p1, 0xfe502a

    iput-wide p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->S:J

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->T:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->G:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->C:Lcom/google/android/filament/utils/Mat4;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->H:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->n:I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-wide v2, v1, Lcom/google/android/filament/Engine;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->L:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    sget-object v5, Lcom/google/android/filament/utils/TextureType;->NORMAL:Lcom/google/android/filament/utils/TextureType;

    invoke-static {v1, v3, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->b(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Lcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;

    move-result-object v1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->M:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    invoke-static {v0, v3, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->b(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Lcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;

    move-result-object v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->u:Lcom/google/android/filament/RenderableManager;

    invoke-virtual {p0, v2}, Lcom/google/android/filament/RenderableManager;->m(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/filament/RenderableManager;->k(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/filament/RenderableManager;->l(I)Lcom/google/android/filament/MaterialInstance;

    move-result-object v4

    :cond_0
    new-instance p0, Lcom/google/android/filament/TextureSampler;

    invoke-direct {p0}, Lcom/google/android/filament/TextureSampler;-><init>()V

    if-eqz v4, :cond_1

    const-string v2, "normalMap"

    invoke-virtual {v4, v2, v1, p0}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    :cond_1
    if-eqz v4, :cond_2

    const-string v1, "baseColorMap"

    invoke-virtual {v4, v1, v0, p0}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    :cond_2
    if-eqz v4, :cond_3

    const-string p0, "metallicFactor"

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {v4, p0, v0}, Lcom/google/android/filament/MaterialInstance;->h(Ljava/lang/String;F)V

    :cond_3
    if-eqz v4, :cond_6

    const-string p0, "roughnessFactor"

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, p0, v0}, Lcom/google/android/filament/MaterialInstance;->h(Ljava/lang/String;F)V

    return-void

    :cond_4
    const-string p0, "bitmapCardBackBaseColor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_5
    const-string p0, "bitmapCardBackNormal"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_6
    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-wide v2, v1, Lcom/google/android/filament/Engine;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->J:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    sget-object v5, Lcom/google/android/filament/utils/TextureType;->NORMAL:Lcom/google/android/filament/utils/TextureType;

    invoke-static {v1, v3, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->b(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Lcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;

    move-result-object v1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->K:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    invoke-static {v0, v3, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->b(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Lcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;

    move-result-object v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->u:Lcom/google/android/filament/RenderableManager;

    invoke-virtual {v3, v2}, Lcom/google/android/filament/RenderableManager;->m(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v2}, Lcom/google/android/filament/RenderableManager;->k(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/filament/RenderableManager;->l(I)Lcom/google/android/filament/MaterialInstance;

    move-result-object v4

    :cond_0
    new-instance v2, Lcom/google/android/filament/TextureSampler;

    invoke-direct {v2}, Lcom/google/android/filament/TextureSampler;-><init>()V

    sget-object v3, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/TextureSampler;->c(Lcom/google/android/filament/TextureSampler$MinFilter;)V

    sget-object v3, Lcom/google/android/filament/TextureSampler$MagFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MagFilter;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/TextureSampler;->b(Lcom/google/android/filament/TextureSampler$MagFilter;)V

    invoke-virtual {v2}, Lcom/google/android/filament/TextureSampler;->a()V

    if-eqz v4, :cond_1

    const-string v3, "normalMap"

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    :cond_1
    if-eqz v4, :cond_2

    const-string v1, "baseColorMap"

    invoke-virtual {v4, v1, v0, v2}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    :cond_2
    if-eqz v4, :cond_3

    const-string v0, "metallicFactor"

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v0, v1}, Lcom/google/android/filament/MaterialInstance;->h(Ljava/lang/String;F)V

    :cond_3
    if-eqz v4, :cond_4

    const-string v0, "roughnessFactor"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v0, v1}, Lcom/google/android/filament/MaterialInstance;->h(Ljava/lang/String;F)V

    :cond_4
    if-eqz v4, :cond_5

    const-string v0, "normalScale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0, v1}, Lcom/google/android/filament/MaterialInstance;->h(Ljava/lang/String;F)V

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->x:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    const-string p0, "bitmapCardFrontBaseColor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_7
    const-string p0, "bitmapCardFrontNormal"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_8
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->u:Lcom/google/android/filament/RenderableManager;

    invoke-virtual {v2, v1}, Lcom/google/android/filament/RenderableManager;->m(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/filament/RenderableManager;->k(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/filament/RenderableManager;->l(I)Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/filament/MaterialInstance;->f()V

    invoke-virtual {v1}, Lcom/google/android/filament/MaterialInstance;->b()V

    invoke-virtual {v1}, Lcom/google/android/filament/MaterialInstance;->e()V

    invoke-virtual {v1}, Lcom/google/android/filament/MaterialInstance;->d()V

    sget-object v2, Lcom/google/android/filament/Material$CullingMode;->NONE:Lcom/google/android/filament/Material$CullingMode;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/MaterialInstance;->c(Lcom/google/android/filament/Material$CullingMode;)V

    :cond_1
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->j:Lcom/google/android/filament/Camera;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->t:F

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->u:F

    iget p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->v:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/filament/Camera;->d(FFF)V

    return-void
.end method
