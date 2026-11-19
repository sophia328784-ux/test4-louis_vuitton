.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;
.super Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u0008\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "lifecycleCoroutineScope",
        "Lkotlin/Function1;",
        "",
        "",
        "isFocusedChanged",
        "isLoadedChanged",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;",
        "is3DSceneInError",
        "Lkotlin/Function0;",
        "onTrackProductTouched",
        "onTrackProductZoomed",
        "<init>",
        "(Landroid/content/Context;Landroid/view/SurfaceView;Landroidx/lifecycle/LifecycleCoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
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
.field public final A:Lkotlin/jvm/functions/Function0;

.field public final B:Lkotlin/jvm/functions/Function0;

.field public C:I

.field public D:I

.field public E:I

.field public F:Lcom/google/android/filament/Material;

.field public G:Lcom/google/android/filament/MaterialInstance;

.field public H:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

.field public final I:Landroid/animation/ValueAnimator;

.field public final J:Landroid/animation/ValueAnimator;

.field public final K:Landroid/animation/ValueAnimator;

.field public final L:Landroid/animation/ValueAnimator;

.field public M:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

.field public N:F

.field public O:F

.field public P:Lcom/google/android/filament/utils/Quaternion;

.field public Q:Lcom/google/android/filament/utils/Float3;

.field public R:Lcom/google/android/filament/utils/Float3;

.field public S:F

.field public T:F

.field public U:F

.field public V:F

.field public final W:F

.field public final X:F

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public d0:Lcom/google/android/filament/gltfio/FilamentAsset;

.field public e0:Lcom/google/android/filament/gltfio/AssetLoader;

.field public final f0:Landroid/graphics/Path;

.field public final g0:Lkotlin/random/XorWowRandom;

.field public final h0:Landroid/graphics/PathMeasure;

.field public i0:Z

.field public j0:Z

.field public final k0:J

.field public final l0:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;

.field public final v:Landroid/content/Context;

.field public final w:Landroidx/lifecycle/LifecycleCoroutineScope;

.field public final x:Lkotlin/jvm/functions/Function1;

.field public final y:Lkotlin/jvm/functions/Function1;

.field public final z:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;Landroidx/lifecycle/LifecycleCoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/SurfaceView;",
            "Landroidx/lifecycle/LifecycleCoroutineScope;",
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
            "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
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

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$PDPConfiguration;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$PDPConfiguration;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;-><init>(Landroid/view/SurfaceView;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->v:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->w:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->x:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->y:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->z:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->A:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->B:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->I:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->J:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->K:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->L:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/filament/utils/Quaternion;

    const/16 p7, 0xf

    const/4 p8, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-direct/range {p2 .. p8}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->P:Lcom/google/android/filament/utils/Quaternion;

    new-instance p3, Lcom/google/android/filament/utils/Float3;

    const/4 p7, 0x7

    invoke-direct/range {p3 .. p8}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->Q:Lcom/google/android/filament/utils/Float3;

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/Float3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->R:Lcom/google/android/filament/utils/Float3;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->T:F

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->U:F

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->V:F

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->W:F

    const p1, 0x3fb33333    # 1.4f

    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->X:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->Y:Z

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->f0:Landroid/graphics/Path;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    new-instance p3, Lkotlin/random/XorWowRandom;

    long-to-int p4, p1

    const/16 p5, 0x20

    shr-long/2addr p1, p5

    long-to-int p1, p1

    invoke-direct {p3, p4, p1}, Lkotlin/random/XorWowRandom;-><init>(II)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->g0:Lkotlin/random/XorWowRandom;

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->h0:Landroid/graphics/PathMeasure;

    const-wide/32 p1, 0xfe502a

    iput-wide p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->k0:J

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->l0:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method public static final e(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    :catch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->z:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;->MissingModel:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static f(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->D:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->E:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->C:I

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/filament/gltfio/FilamentAsset;->b(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/filament/EntityManager;->b(I)V

    :cond_0
    return-void
.end method

.method public final h(Z)V
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->f0:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    iget v1, v1, Lcom/google/android/filament/utils/Float4;->d:F

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    iget v2, v2, Lcom/google/android/filament/utils/Float4;->d:F

    const/4 v3, 0x0

    move v5, v1

    move v6, v2

    move v4, v3

    :goto_0
    const/16 v7, 0x14

    if-ge v4, v7, :cond_2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->g0:Lkotlin/random/XorWowRandom;

    invoke-virtual {v5}, Lkotlin/random/Random;->c()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5}, Lkotlin/random/Random;->c()D

    move-result-wide v7

    double-to-float v7, v7

    const/16 v8, 0x13

    if-ne v4, v8, :cond_0

    move v9, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lkotlin/random/Random;->c()D

    move-result-wide v9

    double-to-float v9, v9

    :goto_1
    if-ne v4, v8, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lkotlin/random/Random;->c()D

    move-result-wide v10

    double-to-float v5, v10

    :goto_2
    invoke-virtual {v0, v6, v7, v9, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v9

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->h0:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->L:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    const/4 p1, 0x2

    new-array v1, p1, [F

    fill-array-data v1, :array_0

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    new-instance v2, Lbb0;

    invoke-direct {v2, p0, p1, v1}, Lbb0;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;[F[F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$idleAnimate$$inlined$doOnEnd$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$idleAnimate$$inlined$doOnEnd$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final i()Z
    .locals 6

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->E:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object p0

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    iget-object v1, p0, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    iget v3, v1, Lcom/google/android/filament/utils/Float4;->a:F

    iget v4, v1, Lcom/google/android/filament/utils/Float4;->b:F

    iget v1, v1, Lcom/google/android/filament/utils/Float4;->c:F

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v1, v2, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v1, v1

    iget v3, v2, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v3, v3

    add-float/2addr v3, v1

    iget v1, v2, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr v1, v1

    add-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    iget v4, v2, Lcom/google/android/filament/utils/Float4;->a:F

    iget v5, v2, Lcom/google/android/filament/utils/Float4;->b:F

    iget v2, v2, Lcom/google/android/filament/utils/Float4;->c:F

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v2, v3, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v2, v2

    iget v4, v3, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v4, v4

    add-float/2addr v4, v2

    iget v2, v3, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr v2, v2

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    iget v4, p0, Lcom/google/android/filament/utils/Float4;->a:F

    iget v5, p0, Lcom/google/android/filament/utils/Float4;->b:F

    iget p0, p0, Lcom/google/android/filament/utils/Float4;->c:F

    invoke-direct {v3, v4, v5, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget p0, v3, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr p0, p0

    iget v4, v3, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v4, v4

    add-float/2addr v4, p0

    iget p0, v3, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr p0, p0

    add-float/2addr p0, v4

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p0, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget p0, v0, Lcom/google/android/filament/utils/Float3;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final j()V
    .locals 10

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->l:I

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {v0, v2}, Lcom/google/android/filament/EntityManager;->b(I)V

    const-string v0, "models/sneakers_ibl.ktx"

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a:Landroid/view/SurfaceView;

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->c(Landroid/view/SurfaceView;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    new-instance v5, Lcom/google/android/filament/utils/KTX1Loader$Options;

    invoke-direct {v5}, Lcom/google/android/filament/utils/KTX1Loader$Options;-><init>()V

    sget-object v6, Lcom/google/android/filament/utils/KTX1Loader;->a:Lcom/google/android/filament/utils/KTX1Loader;

    invoke-virtual {v6, v4, v0, v5}, Lcom/google/android/filament/utils/KTX1Loader;->a(Lcom/google/android/filament/Engine;Ljava/nio/ByteBuffer;Lcom/google/android/filament/utils/KTX1Loader$Options;)Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;->a:Lcom/google/android/filament/Texture;

    if-eqz v0, :cond_0

    new-instance v5, Lcom/google/android/filament/IndirectLight$Builder;

    invoke-direct {v5}, Lcom/google/android/filament/IndirectLight$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/google/android/filament/IndirectLight$Builder;->b:J

    invoke-static {v8, v9, v6, v7}, Lcom/google/android/filament/IndirectLight;->b(JJ)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->a:F

    invoke-static {v0, v8, v9}, Lcom/google/android/filament/IndirectLight;->e(FJ)V

    invoke-virtual {v5, v4}, Lcom/google/android/filament/IndirectLight$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/filament/Scene;->f(Lcom/google/android/filament/IndirectLight;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->v:Landroid/content/Context;

    const-string v5, "materials/lit.filamat"

    invoke-static {v0, v5}, Lcom/vuitton/android/presentation/ar/MatrixKt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v5, Lcom/google/android/filament/Material$Builder;

    invoke-direct {v5}, Lcom/google/android/filament/Material$Builder;-><init>()V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iput-object v0, v5, Lcom/google/android/filament/Material$Builder;->a:Ljava/nio/ByteBuffer;

    iput v6, v5, Lcom/google/android/filament/Material$Builder;->b:I

    invoke-virtual {v5, v4}, Lcom/google/android/filament/Material$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->F:Lcom/google/android/filament/Material;

    invoke-virtual {v0}, Lcom/google/android/filament/Material;->b()Lcom/google/android/filament/MaterialInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->G:Lcom/google/android/filament/MaterialInstance;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$setupMaterial$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$setupMaterial$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->w:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-static {v7, v0, v5, v4, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->G:Lcom/google/android/filament/MaterialInstance;

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MaterialHelperKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;Lcom/google/android/filament/MaterialInstance;)Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;->a:I

    iput v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->n:I

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 v0, -0x3

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {v3}, Lcom/google/android/filament/Scene;->g()V

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->k:Lcom/google/android/filament/Renderer;

    new-instance v0, Lcom/google/android/filament/Renderer$ClearOptions;

    invoke-direct {v0}, Lcom/google/android/filament/Renderer$ClearOptions;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/filament/Renderer$ClearOptions;->b:Z

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Renderer;->e(Lcom/google/android/filament/Renderer$ClearOptions;)V

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    sget-object v0, Lcom/google/android/filament/View$BlendMode;->TRANSLUCENT:Lcom/google/android/filament/View$BlendMode;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->d(Lcom/google/android/filament/View$BlendMode;)V

    return-void

    :cond_1
    const-string p0, "backgroundMaterialInstance"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5
.end method

.method public final k()V
    .locals 1

    :try_start_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l()V
    .locals 3

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    new-instance v0, Lft;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lft;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$userControlsAnimate$$inlined$doOnEnd$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$userControlsAnimate$$inlined$doOnEnd$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
